import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

final settingsRepositoryProvider = Provider.autoDispose<SettingsRepository>(
  (ref) {
    return const SettingsRepository();
  },
);

final packageInfoProvider = FutureProvider.autoDispose<PackageInfo>((ref) {
  final settingsRepository = ref.watch(settingsRepositoryProvider);
  return settingsRepository.getPackageInfo();
});

class SettingsRepository {
  const SettingsRepository();

  Future<PackageInfo> getPackageInfo() async {
    return await PackageInfo.fromPlatform();
  }
}
