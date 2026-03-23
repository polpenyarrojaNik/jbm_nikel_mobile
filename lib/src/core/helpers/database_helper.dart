import 'dart:io';

import 'package:drift/drift.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

const int kDatabaseRelease = 38;

Future<void> deleteRemoteDatabase() async {
  const remoteDatabaseName = 'jbm.sqlite';
  const remoteDatabaseJournalName = 'jbm.sqlite-journal';

  final directory = await getApplicationDocumentsDirectory();
  if (await _databaseFileExist(
    directory: directory,
    remoteDatabaseName: remoteDatabaseName,
  )) {
    File(
      (join(directory.path, remoteDatabaseName)),
    ).deleteSync(recursive: true);
  }
  if (await _databaseFileExist(
    directory: directory,
    remoteDatabaseName: remoteDatabaseJournalName,
  )) {
    File(
      (join(directory.path, remoteDatabaseJournalName)),
    ).deleteSync(recursive: true);
  }
}

Future<bool> _databaseFileExist({
  required Directory directory,
  required String remoteDatabaseName,
}) {
  return File((join(directory.path, remoteDatabaseName))).exists();
}

Future<void> addColumnSafely(
  GeneratedDatabase db,
  String table,
  String column,
  String type, {
  String? defaultSqlLiteral,
}) async {
  if (await hasColumn(db, table, column)) return;
  final dflt = defaultSqlLiteral != null ? ' DEFAULT $defaultSqlLiteral' : '';
  await db.customStatement('ALTER TABLE $table ADD COLUMN $column $type$dflt;');
}

Future<bool> hasColumn(
  GeneratedDatabase db,
  String table,
  String column,
) async {
  final rows = await db.customSelect('PRAGMA table_info($table);').get();
  return rows.any((r) => r.data['name'] == column);
}
