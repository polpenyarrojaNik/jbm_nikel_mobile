import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../infrastructure/settings_repository.dart';

part 'delete_local_database_controller.g.dart';

@riverpod
class DeleteLocalDatabaseController extends _$DeleteLocalDatabaseController {
  @override
  Future<void> build() async {
    return;
  }

  Future<bool> deleteLocalDatabase() async {
    await ref.read(settingsRepositoryProvider).deleteLocalDatabase();

    return true;
  }
}

final deleteLocalDatabaseMutation = Mutation<bool>();
