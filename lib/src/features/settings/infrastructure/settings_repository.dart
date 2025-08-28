import 'dart:io';

import 'package:drift/isolate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/application/log_service.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/local_database.dart';

final settingsRepositoryProvider = Provider.autoDispose<SettingsRepository>((
  ref,
) {
  final localDatabase = ref.watch(appLocalDatabaseProvider);
  return SettingsRepository(localDatabase);
});

final packageInfoProvider = FutureProvider.autoDispose<PackageInfo>((ref) {
  final settingsRepository = ref.watch(settingsRepositoryProvider);
  return settingsRepository.getPackageInfo();
});

class SettingsRepository {
  final LocalAppDatabase localDb;
  const SettingsRepository(this.localDb);

  Future<PackageInfo> getPackageInfo() {
    return PackageInfo.fromPlatform();
  }

  Future<File> exportDatabaseInto() async {
    // Make sure the directory of the target file exists
    try {
      final directory = await getTemporaryDirectory();

      final file = File('${directory.path}/local_jbm.sqlite');

      // Override an existing backup, sqlite expects the target file to be empty
      if (file.existsSync()) {
        file.deleteSync();
      }

      await localDb.customStatement('VACUUM INTO ?', [file.path]);

      return file;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<void> deleteRemoteDatabase() async {
    const remoteDatabaseName = 'jbm.sqlite';
    const remoteDatabaseJournalName = 'jbm.sqlite-journal';

    try {
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

      await localDb.delete(localDb.syncDateTimeTable).go();
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteLocalDatabase() async {
    const localDatabaseName = 'local_jbm.sqlite';
    const localDatabaseJournalName = 'local_jbm.sqlite-journal';

    try {
      final directory = await getApplicationDocumentsDirectory();
      if (await _databaseFileExist(
        directory: directory,
        remoteDatabaseName: localDatabaseName,
      )) {
        File(
          (join(directory.path, localDatabaseName)),
        ).deleteSync(recursive: true);
      }
      if (await _databaseFileExist(
        directory: directory,
        remoteDatabaseName: localDatabaseJournalName,
      )) {
        File(
          (join(directory.path, localDatabaseJournalName)),
        ).deleteSync(recursive: true);
      }

      await DriftIsolate.fromConnectPort(
        isolateLocalDatabaseConnectPort!,
      ).shutdownAll();
      isolateLocalDatabaseConnectPort = null;
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> _databaseFileExist({
    required Directory directory,
    required String remoteDatabaseName,
  }) {
    return File((join(directory.path, remoteDatabaseName))).exists();
  }
}
