import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';

import '../../../core/exceptions/app_exception.dart';

final splashPageControllerProvider =
    StateNotifierProvider.autoDispose<SplashPageController, AsyncValue<void>>(
        (ref) => SplashPageController(ref.watch(syncServiceProvider)));

class SplashPageController extends StateNotifier<AsyncValue<void>> {
  final SyncService _syncService;
  SplashPageController(this._syncService) : super(const AsyncData(null)) {
    initializeApp();
  }

  Future<void> initializeApp() async {
    try {
      state = const AsyncLoading();
      try {
        await _syncService.initDatabaBase();
      } catch (e) {
        rethrow;
      }

      await _syncService.syncAllArticulosRelacionados();
      await _syncService.syncAllClientesRelacionados();
      await _syncService.syncAllPedidosRelacionados();
      await _syncService.syncAllVisitasRelacionados();
      await _syncService.syncAllAuxiliares();

      state = const AsyncData(null);
    } on AppException catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
