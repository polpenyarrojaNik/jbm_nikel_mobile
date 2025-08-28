import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

const int kDatabaseRelease = 35;

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
