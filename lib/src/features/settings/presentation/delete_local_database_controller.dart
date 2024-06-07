import 'package:jbm_nikel_mobile/src/features/settings/infrastructure/settings_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/exceptions/app_exception.dart';

part 'delete_local_database_controller.g.dart';

@riverpod
class DeleteLocalDatabaseController extends _$DeleteLocalDatabaseController {
  DeleteLocalDatabaseController();

  @override
  Future<bool> build() async {
    return false;
  }

  Future<void> deleteLocalDatabase() async {
    try {
      state = const AsyncLoading();

      await ref.read(settingsRepositoryProvider).deleteLocalDatabase();

      state = const AsyncData(true);
    } on AppException catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
