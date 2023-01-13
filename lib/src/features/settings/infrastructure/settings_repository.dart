import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/exceptions/app_exception.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/local_database.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

final settingsRepositoryProvider = Provider.autoDispose<SettingsRepository>(
  (ref) {
    final localDatabase = ref.watch(appLocalDatabaseProvider);
    return SettingsRepository(localDatabase);
  },
);

final packageInfoProvider = FutureProvider.autoDispose<PackageInfo>((ref) {
  final settingsRepository = ref.watch(settingsRepositoryProvider);
  return settingsRepository.getPackageInfo();
});

class SettingsRepository {
  final LocalAppDatabase localDb;
  const SettingsRepository(this.localDb);

  Future<PackageInfo> getPackageInfo() async {
    return await PackageInfo.fromPlatform();
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
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }
}
