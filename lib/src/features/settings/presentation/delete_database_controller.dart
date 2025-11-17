import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../infrastructure/settings_repository.dart';

part 'delete_database_controller.g.dart';

@riverpod
class DeleteDatabaseController extends _$DeleteDatabaseController {
  @override
  Future<void> build() async {
    return;
  }

  Future<bool> deleteRemoteDatabase() async {
    await ref.read(settingsRepositoryProvider).deleteRemoteDatabase();

    return true;
  }
}

final deleteDatabaseMutation = Mutation<bool>();
