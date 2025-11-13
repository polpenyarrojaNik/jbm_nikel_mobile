import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
import '../infrastructure/settings_repository.dart';

part 'delete_local_database_controller.freezed.dart';

final deleteLocalDatabaseControllerProvider =
    StateNotifierProvider.autoDispose<
      DeleteLocalDatabaseController,
      DeleteLocalDatabaseControllerState
    >(
      (ref) =>
          DeleteLocalDatabaseController(ref.watch(settingsRepositoryProvider)),
    );

@freezed
class DeleteLocalDatabaseControllerState
    with _$DeleteLocalDatabaseControllerState {
  const DeleteLocalDatabaseControllerState._();
  const factory DeleteLocalDatabaseControllerState.loading() = _loading;

  const factory DeleteLocalDatabaseControllerState.initial() = _initial;

  const factory DeleteLocalDatabaseControllerState.error(
    Object error, {
    StackTrace? stackTrace,
  }) = _error;
  const factory DeleteLocalDatabaseControllerState.data(bool deleted) = _data;
}

class DeleteLocalDatabaseController
    extends StateNotifier<DeleteLocalDatabaseControllerState> {
  final SettingsRepository _settingsRepository;

  DeleteLocalDatabaseController(this._settingsRepository)
    : super(const DeleteLocalDatabaseControllerState.initial());

  Future<void> deleteLocalDatabase() async {
    try {
      state = const DeleteLocalDatabaseControllerState.loading();

      await _settingsRepository.deleteLocalDatabase();

      state = const DeleteLocalDatabaseControllerState.data(true);
    } on AppException catch (e, stackTrace) {
      state = DeleteLocalDatabaseControllerState.error(
        e,
        stackTrace: stackTrace,
      );
    } catch (e) {
      rethrow;
    }
  }
}
