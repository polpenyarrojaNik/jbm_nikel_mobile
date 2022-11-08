import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';

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
      try {
        await _syncService.initDatabaBase();
        await _logRepository.insetLog(level: 'I', message: 'Inizialize App');
      } catch (e) {
        rethrow;
      }

      state =
          const SplashControllerState.data(SplashProgress.downloadedDatabase);

      state = const SplashControllerState.data(SplashProgress.syncAuxiliar);
    } on AppException catch (e, stackTrace) {
      state = SplashControllerState.error(e, stackTrace: stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
