import 'dart:io';

import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../infrastructure/settings_repository.dart';

part 'export_database_controller.g.dart';

@riverpod
class ExportDatabaseController extends _$ExportDatabaseController {
  @override
  Future<void> build() async {
    return;
  }

  Future<File> exportDatabaseIntoFile() async {
    final file = await ref
        .read(settingsRepositoryProvider)
        .exportDatabaseInto();
    return file;
  }
}

final exportDatabaseMutation = Mutation<File>();
