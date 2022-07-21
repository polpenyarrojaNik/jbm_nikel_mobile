import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import '../infrastructure/exceptions.dart';
import 'db_tables.dart';

part 'database.g.dart';

@DriftDatabase(tables: [SalesOrderTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<SalesOrderTableData>> getSalesOrder(
      {required int page, required int pageSize}) async {
    int offset = (page - 1) * pageSize;
    print('Offset: $offset');
    try {
      return await (select(salesOrderTable)..limit(pageSize, offset: offset))
          .get();
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
    }
  }

  Future<bool> upsertSalesOrder(
      {required SalesOrderTableCompanion salesOrder}) async {
    try {
      return await update(salesOrderTable).replace(salesOrder);
    } catch (e, stackTrace) {
      throw DBException(e.toString(), stackTrace);
    }
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, 'jbm.db'));
    return NativeDatabase(file, logStatements: true);
  });
}
