import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../application/log_service.dart';
import '../exceptions/app_exception.dart';

const int databaseRelease = 9;

Future<void> deleteLocalDatabase() async {
  const localDatabaseName = 'jbm.sqlite';

  try {
    final Directory directory = await getApplicationDocumentsDirectory();
    if (await _databaseFileExist(
        directory: directory, localDatabaseName: localDatabaseName)) {
      File((join(directory.path, localDatabaseName))).deleteSync();
    }
  } on AppException catch (e) {
    log.e(e.details);
    rethrow;
  } catch (e) {
    rethrow;
  }
}

Future<bool> _databaseFileExist(
    {required Directory directory, required String localDatabaseName}) async {
  return await File((join(directory.path, localDatabaseName))).exists();
}
