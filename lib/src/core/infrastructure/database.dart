import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/country_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/divisa_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/log.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import '../../features/customer/infrastructure/collection_method_dto.dart';
import '../../features/customer/infrastructure/collection_term_dto.dart';
import '../../features/customer/infrastructure/customer_dto.dart';
import '../../features/sales_order/infrastructure/sales_order_dto.dart';
import '../exceptions/app_exception.dart';

part 'database.g.dart';

class LastSyncDateTable extends Table {
  @override
  String get tableName => 'LAST_SYNC_DATE';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('ID')();
  TextColumn get lastSyncSalesOrder =>
      text().nullable().named('LAST_SYNC_SALES_ORDER')();
  TextColumn get lastSyncCustomer =>
      text().nullable().named('LAST_SYNC_CUSTOMER')();
}

@DriftDatabase(tables: [
  SalesOrderTable,
  LastSyncDateTable,
  CollectionMethodTable,
  CollectionTermTable,
  CountryTable,
  DivisaTable,
  CustomerTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  Future<void> close() async {
    await _openConnection().close();
    return await super.close();
  }

  Stream<List<SalesOrderDTO>> getSalesOrderDTO() {
    return (select(salesOrderTable)
          ..orderBy([
            (t) => OrderingTerm(
                expression: t.salesOrderDate, mode: OrderingMode.desc)
          ]))
        .watch();
  }

  Future<int> getSalesOrderCount() async {
    var countExp = salesOrderTable.rowId.count();

    final query = selectOnly(salesOrderTable)..addColumns([countExp]);
    return await query.map((row) => row.read(countExp)).getSingle();
  }

  Future<int> upsertSalesOrder({required SalesOrderDTO salesOrderDto}) async {
    try {
      return await into(salesOrderTable).insertOnConflictUpdate(salesOrderDto);
    } catch (e) {
      throw AppException.salesOrderUpsertFailure(e.toString());
    }
  }

  Future<int> addInitialSyncDate(
      {required LastSyncDateTableCompanion initialSyncDate}) async {
    try {
      final result = await into(lastSyncDateTable).insert(initialSyncDate);
      return result;
    } catch (e, stackTrace) {
      throw AppException.syncFailure('LAST_SYNC_DATE', e.toString());
    }
  }

  Future<int> updateLastSyncSalesOrder(
      {required LastSyncDateTableCompanion lastSyncDateSalesOrder}) async {
    try {
      return await (update(lastSyncDateTable)..where((t) => t.id.equals('1')))
          .write(lastSyncDateSalesOrder);
    } catch (e) {
      throw AppException.syncFailure('LAST_SYNC_DATE', e.toString());
    }
  }

  Future<String?> getLastSyncSalesOrderDate() async {
    try {
      return (await (select(lastSyncDateTable)
                ..limit(1)
                ..orderBy([
                  (t) => OrderingTerm(
                      expression: t.lastSyncSalesOrder, mode: OrderingMode.desc)
                ]))
              .getSingleOrNull())
          ?.lastSyncSalesOrder;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();

    final file = File(join(dbFolder.path, 'jbm.db'));
    return NativeDatabase(file);
  });
}
