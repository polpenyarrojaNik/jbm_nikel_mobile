import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import '../infrastructure/exceptions.dart';
import 'db_tables.dart';

part 'database.g.dart';

@DriftDatabase(tables: [SalesOrderTable, LastSyncTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  Future<void> close() async {
    await _openConnection().close();
    return await super.close();
  }

  Future<List<SalesOrderTableData>> getSalesOrder(
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

  Future<int> upsertSalesOrder(
      {required SalesOrderTableCompanion salesOrder}) async {
    try {
      return await into(salesOrderTable).insertOnConflictUpdate(salesOrder);
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
    }
  }

  Future<int> addLastSyncSalesOrder(
      {required LastSyncTableCompanion entity}) async {
    try {
      return await into(lastSyncTable).insert(entity);
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
    }
  }

  Future<LastSyncTableData?> getLastSyncSalesOrderDate() async {
    try {
      return await (select(lastSyncTable)
            ..limit(1)
            ..orderBy([
              (t) => OrderingTerm(
                  expression: t.lastSyncSalesOrder, mode: OrderingMode.desc)
            ]))
          .getSingleOrNull();
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
