import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/helpers/database_helper.dart';
import '../../../core/infrastructure/init_database_service.dart';

import '../../../core/exceptions/app_exception.dart';

part 'splash_page_controller.freezed.dart';

final splashPageControllerProvider = StateNotifierProvider.autoDispose<
  SplashPageController,
  SplashControllerState
>((ref) => SplashPageController(ref.watch(initDatabaseServiceProvider)));

@freezed
class SplashControllerState with _$SplashControllerState {
  const SplashControllerState._();
  const factory SplashControllerState.downloadDatabase(
    int lastScehmaVersion,
    int newScehmaVersion,
  ) = _downloadDatabase;
  const factory SplashControllerState.loading() = _loading;

  const factory SplashControllerState.initial() = _initial;
  const factory SplashControllerState.notDownloaded() = _notDownloaded;

  const factory SplashControllerState.error(
    Object error, {
    StackTrace? stackTrace,
  }) = _error;
  const factory SplashControllerState.data() = _data;
}

class SplashPageController extends StateNotifier<SplashControllerState> {
  final InitDatabaseService _initDatabaseService;

  SplashPageController(this._initDatabaseService)
    : super(const SplashControllerState.initial()) {
    initializeApp();
  }

  Future<void> initializeApp() async {
    try {
      state = const SplashControllerState.loading();

      final existDatabase = await _initDatabaseService.existDatabase();

      try {
        if (!existDatabase) {
          final getLastDatabaseSchema =
              await _initDatabaseService.getSchemaVersionFromPreferences();
          state = SplashControllerState.downloadDatabase(
            getLastDatabaseSchema,
            databaseRelease,
          );

          await _initDatabaseService.downloadInitDatabase();
        }
      } catch (e) {
        rethrow;
      }

      state = const SplashControllerState.data();
    } on AppException catch (e, stackTrace) {
      state = SplashControllerState.error(e, stackTrace: stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
