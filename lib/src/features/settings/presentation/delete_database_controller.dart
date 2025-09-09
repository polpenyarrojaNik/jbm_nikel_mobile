import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../infrastructure/settings_repository.dart';

import '../../../core/exceptions/app_exception.dart';

part 'delete_database_controller.freezed.dart';

final deleteDatabaseControllerProvider =
    StateNotifierProvider.autoDispose<
      DeleteDatabaseController,
      DeleteDatabaseControllerState
    >((ref) => DeleteDatabaseController(ref.watch(settingsRepositoryProvider)));

@freezed
class DeleteDatabaseControllerState with _$DeleteDatabaseControllerState {
  const DeleteDatabaseControllerState._();
  const factory DeleteDatabaseControllerState.loading() = _loading;

  const factory DeleteDatabaseControllerState.initial() = _initial;

  const factory DeleteDatabaseControllerState.error(
    Object error, {
    StackTrace? stackTrace,
  }) = _error;
  const factory DeleteDatabaseControllerState.data(bool deleted) = _data;
}

class DeleteDatabaseController
    extends StateNotifier<DeleteDatabaseControllerState> {
  final SettingsRepository _settingsRepository;

  DeleteDatabaseController(this._settingsRepository)
    : super(const DeleteDatabaseControllerState.initial());

  Future<void> deleteRemoteDatabase() async {
    try {
      state = const DeleteDatabaseControllerState.loading();

      await _settingsRepository.deleteRemoteDatabase();

      state = const DeleteDatabaseControllerState.data(true);
    } on AppException catch (e, stackTrace) {
      state = DeleteDatabaseControllerState.error(e, stackTrace: stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
