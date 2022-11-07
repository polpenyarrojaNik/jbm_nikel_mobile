import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/log_repository.dart';
import '../domain/splash_progress.dart';

part 'splash_page_controller.freezed.dart';

final splashPageControllerProvider = StateNotifierProvider.autoDispose<
        SplashPageController, SplashControllerState>(
    (ref) => SplashPageController(
        ref.watch(syncServiceProvider), ref.watch(logRepositoryProvider)));

@freezed
class SplashControllerState with _$SplashControllerState {
  const SplashControllerState._();
  const factory SplashControllerState.downloadDatabase() = _downloadDatabase;

  const factory SplashControllerState.initial() = _initial;
  const factory SplashControllerState.error(Object error,
      {StackTrace? stackTrace}) = _error;
  const factory SplashControllerState.data(SplashProgress progressValue) =
      _data;
}

class SplashPageController extends StateNotifier<SplashControllerState> {
  final SyncService _syncService;
  final LogRepository _logRepository;
  SplashPageController(this._syncService, this._logRepository)
      : super(const SplashControllerState.initial()) {
    initializeApp();
  }

  Future<void> initializeApp() async {
    try {
      state = const SplashControllerState.downloadDatabase();
      _logRepository.insetLog(level: 'I', message: 'Inizialize App');
      try {
        await _syncService.initDatabaBase();
      } catch (e) {
        rethrow;
      }

      state =
          const SplashControllerState.data(SplashProgress.downloadedDatabase);

      if (await sincronizarValoresPorTiempo(
          preferenceKey: articuloFechaUltimaSyncKey)) {
        await _syncService.syncAllArticulosRelacionados(syncAuxTables: false);
      }
      state = const SplashControllerState.data(SplashProgress.syncArticulos);
      if (await sincronizarValoresPorTiempo(
          preferenceKey: clienteFechaUltimaSyncKey)) {
        await _syncService.syncAllClientesRelacionados(syncAuxTables: false);
      }
      state = const SplashControllerState.data(SplashProgress.syncClientes);
      if (await sincronizarValoresPorTiempo(
          preferenceKey: pedidoVentaFechaUltimaSyncKey)) {
        await _syncService.syncAllPedidosRelacionados(syncAuxTables: false);
      }
      state = const SplashControllerState.data(SplashProgress.syncPedidos);
      if (await sincronizarValoresPorTiempo(
          preferenceKey: visitaFechaUltimaSyncKey)) {
        await _syncService.syncAllVisitasRelacionados(syncAuxTables: false);
      }
      state = const SplashControllerState.data(SplashProgress.syncVisitas);
      if (await sincronizarValoresPorTiempo(
          preferenceKey: visitaFechaUltimaSyncKey)) {
        await _syncService.syncAllAuxiliares();
      }
      state = const SplashControllerState.data(SplashProgress.syncAuxiliar);
    } on AppException catch (e, stackTrace) {
      state = SplashControllerState.error(e, stackTrace: stackTrace);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> sincronizarValoresPorTiempo(
      {required String preferenceKey}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final dateUTCString = sharedPreferences.getString(preferenceKey) as String;
    final lastSyncDateUTC =
        DateTime.parse(dateUTCString).add(const Duration(minutes: 30));
    print(lastSyncDateUTC.isBefore(DateTime.now().toUtc()));
    return lastSyncDateUTC.isBefore(DateTime.now().toUtc());
  }
}
