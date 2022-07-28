import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/db/database.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/infrastructure/exceptions.dart';
import '../../core/shared/log.dart';
import '../../core/shared/providers.dart';
import 'initial_db_remote_service.dart';

final initialDBRepositoryProvider =
    FutureProvider<AsyncValue<Unit>>((ref) async {
  try {
    if (!await databaseFileExist()) {
      final data = await ref.watch(initialDbRemoteServiceProvider).getInitialDb(
            requestUri: Uri.http(
              dotenv.get('URL', fallback: 'loclahost:3001'),
              '/api/v1/init-db',
            ),
          );

      final Directory cahceDirectories = await getTemporaryDirectory();

      final File file = File('${cahceDirectories.path}/jbm.db');
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data as List<int>);
      await raf.close();
      await copyDataInDbFile(initialDbFile: file);
      final database = ref.watch(dbProvider);
      await database.addLastSyncSalesOrder(
          entity: LastSyncTableCompanion(
              lastSyncSalesOrder: Value(DateTime.now().toIso8601String())));
    }

    return const AsyncValue.data(unit);
  } on RestApiException catch (e) {
    log.severe(e.message, e, e.stackTrace);
    return AsyncValue.error(e, stackTrace: e.stackTrace);
  } on DBException catch (e) {
    log.severe(e.toString(), e, e.stackTrace);
    return AsyncValue.error(e, stackTrace: e.stackTrace);
  } catch (e, stackTrace) {
    log.severe(e.toString(), e, stackTrace);
    return AsyncValue.error(e, stackTrace: stackTrace);
  }
});

Future<void> copyDataInDbFile({required File initialDbFile}) async {
  try {
    final Directory dbFolder = await getApplicationDocumentsDirectory();
    await initialDbFile.copy(join(dbFolder.path, 'jbm.db'));
    await initialDbFile.delete();
  } catch (e) {
    rethrow;
  }
}

Future<bool> databaseFileExist() async {
  final dbFolder = await getApplicationDocumentsDirectory();
  return await File((join(dbFolder.path, 'jbm.db'))).exists();
}

Future<void> getInitialDb() async {}
