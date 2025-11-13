import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/helpers/database_helper.dart';
import '../../../core/infrastructure/init_database_service.dart';

part 'splash_page_controller.freezed.dart';

final splashPageControllerProvider =
    StateNotifierProvider.autoDispose<
      SplashPageController,
      SplashControllerState
    >((ref) => SplashPageController(ref.watch(initDatabaseServiceProvider)));

@freezed
abstract class SplashControllerState with _$SplashControllerState {
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

      if (!existDatabase) {
        final getLastDatabaseSchema = await _initDatabaseService
            .getSchemaVersionFromPreferences();
        state = SplashControllerState.downloadDatabase(
          getLastDatabaseSchema,
          kDatabaseRelease,
        );

        await _initDatabaseService.downloadInitDatabase();
      }

      state = const SplashControllerState.data();
    } on AppException catch (e, stackTrace) {
      state = SplashControllerState.error(e, stackTrace: stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
