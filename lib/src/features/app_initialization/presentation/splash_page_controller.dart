import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';

import '../../../core/exceptions/app_exception.dart';

final splashPageControllerProvider =
    StateNotifierProvider.autoDispose<SplashPageController, AsyncValue<void>>(
  (ref) =>
      SplashPageController(ref.watch(syncServiceProvider))..initializeApp(),
);

class SplashPageController extends StateNotifier<AsyncValue<void>> {
  final SyncService _syncService;
  SplashPageController(this._syncService) : super(const AsyncData(null));

  Future<void> initializeApp() async {
    try {
      state = const AsyncLoading();
      await _syncService.initDatabaBase();
      await _syncService.syncArticulo();
      await _syncService.syncClientes();
      // await _syncService.syncPedidos();

      state = const AsyncData(null);
    } on AppException catch (e) {
      state = AsyncError(e.details.message);
    } catch (e) {
      rethrow;
    }
  }
}
