import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import '../../features/sales_order/infrastructure/sales_order_dto.dart';
import 'exceptions.dart';

part 'database.g.dart';

class LastSyncDateTable extends Table {
  TextColumn get id => text().named('ID')();
  TextColumn get lastSyncSalesOrder =>
      text().nullable().named('LAST_SYNC_SALES_ORDER')();
  TextColumn get lastSyncCustomer =>
      text().nullable().named('LAST_SYNC_CUSTOMER')();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [SalesOrderTable, LastSyncDateTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  Future<void> close() async {
    await _openConnection().close();
    return await super.close();
  }

  Future<List<SalesOrderDTO>> getSalesOrder(
      {required int page, required int pageSize}) async {
    int offset = (page - 1) * pageSize;
    print('Page: $page');
    try {
      return await (select(salesOrderTable)
            ..limit(pageSize, offset: offset)
            ..orderBy([
              (t) => OrderingTerm(
                  expression: t.salesOrderDate, mode: OrderingMode.desc)
            ]))
          .get();
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
    }
  }

  Future<int> getSalesOrderCount() async {
    try {
      var countExp = salesOrderTable.rowId.count();

      final query = selectOnly(salesOrderTable)..addColumns([countExp]);
      return await query.map((row) => row.read(countExp)).getSingle();
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
    }
  }

  Future<int> upsertSalesOrder({required SalesOrderDTO salesOrderDto}) async {
    try {
      return await into(salesOrderTable).insertOnConflictUpdate(salesOrderDto);
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
    }
  }

  Future<int> addInitialSyncDate(
      {required LastSyncDateTableCompanion initialSyncDate}) async {
    try {
      return await into(lastSyncDateTable).insert(initialSyncDate);
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
    }
  }

  Future<int> updateLastSyncSalesOrder(
      {required LastSyncDateTableCompanion lastSyncDateSalesOrder}) async {
    try {
      return await (update(lastSyncDateTable)..where((t) => t.id.equals('1')))
          .write(lastSyncDateSalesOrder);
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
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
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
    }
  }
}

LazyDatabase _openConnection() {
  try {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();

      final file = File(join(dbFolder.path, 'jbm.db'));
      return NativeDatabase(file);
    });
  } catch (e, stackTrace) {
    throw DBException(e.toString(), stackTrace);
  }
}
