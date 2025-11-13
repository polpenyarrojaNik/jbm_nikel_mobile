import 'dart:io';

import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
import '../infrastructure/settings_repository.dart';

part 'export_database_controller.freezed.dart';

final exportDatabaseControllerProvider =
    StateNotifierProvider.autoDispose<
      ExportDatabaseController,
      ExportDatabaseControllerState
    >((ref) => ExportDatabaseController(ref.watch(settingsRepositoryProvider)));

@freezed
class ExportDatabaseControllerState with _$ExportDatabaseControllerState {
  const ExportDatabaseControllerState._();
  const factory ExportDatabaseControllerState.loading() = _loading;

  const factory ExportDatabaseControllerState.initial() = _initial;

  const factory ExportDatabaseControllerState.error(
    Object error, {
    StackTrace? stackTrace,
  }) = _error;
  const factory ExportDatabaseControllerState.data(File file) = _data;
}

class ExportDatabaseController
    extends StateNotifier<ExportDatabaseControllerState> {
  final SettingsRepository _settingsRepository;

  ExportDatabaseController(this._settingsRepository)
    : super(const ExportDatabaseControllerState.initial());

  Future<void> exportDatabaseIntoFile() async {
    try {
      state = const ExportDatabaseControllerState.loading();

      final file = await _settingsRepository.exportDatabaseInto();

      state = ExportDatabaseControllerState.data(file);
    } on AppException catch (e, stackTrace) {
      state = ExportDatabaseControllerState.error(e, stackTrace: stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
