import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';

final settingPageControllerProvider =
    StateNotifierProvider.autoDispose<SettingPageController, AsyncValue<void>>(
        (ref) => SettingPageController(ref.watch(syncServiceProvider)));

class SettingPageController extends StateNotifier<AsyncValue<void>> {
  final SyncService _syncService;

  SettingPageController(this._syncService) : super(const AsyncData(null));

  Future<void> replaceDatabase() async {
    try {
      state = const AsyncLoading();
      await _syncService.replaceDatabase();

      state = const AsyncData(null);
    } catch (e) {
      rethrow;
    }
  }
}
