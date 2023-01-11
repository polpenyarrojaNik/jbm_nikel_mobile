import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../application/log_service.dart';
import '../exceptions/app_exception.dart';

const int databaseRelease = 19;

Future<void> deleteLocalDatabase() async {
  const remoteDatabaseName = 'jbm.sqlite';
  const remoteDatabaseJournalName = 'jbm.sqlite-journal';

  try {
    final Directory directory = await getApplicationDocumentsDirectory();
    if (await _databaseFileExist(
        directory: directory, remoteDatabaseName: remoteDatabaseName)) {
      File((join(directory.path, remoteDatabaseName)))
          .deleteSync(recursive: true);
    }
    if (await _databaseFileExist(
        directory: directory, remoteDatabaseName: remoteDatabaseJournalName)) {
      File((join(directory.path, remoteDatabaseJournalName)))
          .deleteSync(recursive: true);
    }
  } on AppException catch (e) {
    log.e(e.details);
    rethrow;
  } catch (e) {
    rethrow;
  }
}

Future<bool> _databaseFileExist(
    {required Directory directory, required String remoteDatabaseName}) async {
  return await File((join(directory.path, remoteDatabaseName))).exists();
}
