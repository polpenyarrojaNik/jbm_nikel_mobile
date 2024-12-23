import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../application/log_service.dart';
import '../exceptions/app_exception.dart';
import '../exceptions/get_api_error.dart';
import '../helpers/database_helper.dart';
import '../presentation/app.dart';
import 'local_database.dart';
import 'remote_database.dart';

final initDatabaseServiceProvider =
    Provider.autoDispose<InitDatabaseService>((ref) {
  ref.read(appRemoteDatabaseProvider);
  return InitDatabaseService(ref.watch(dioProvider),
      ref.watch(appLocalDatabaseProvider), ref.watch(usuarioNotifierProvider));
});

class InitDatabaseService {
  final Dio dio;
  final LocalAppDatabase localDb;
  final Usuario? usuario;

  static final remoteInitDatabaseEndpoint = Uri.https(
    'jbm-api.nikel.es',
    '/api/v10/sync/init-db',
  );

  static final remoteInitDatabaseTestEndpoint = Uri.https(
    'jbm-api.nikel.es',
    '/api/v10/sync/init-db',
  );

  static final remoteInitialDatabaseDateTimeEndpoint = Uri.https(
    'jbm-api.nikel.es',
    '/api/v10/sync/init-db-date',
  );
  static final remoteInitialDatabaseDateTimeTestEndpoint = Uri.https(
    'jbm-api.nikel.es',
    '/api/v10/sync/init-db-date',
  );

  InitDatabaseService(this.dio, this.localDb, this.usuario);

  Future<void> downloadInitDatabase() async {
    try {
      if (await getSchemaVersionFromPreferences() != databaseRelease) {
        await deleteRemoteDatabase();
      }

      final directory = await getApplicationDocumentsDirectory();

      if (!_databaseFileExist(directory: directory)) {
        await _getRemoteInitialDatabase(directory: directory);

        final zipFile = File('${directory.path}/jbm_sqlite.zip');

        await ZipFile.extractToDirectory(
          zipFile: zipFile,
          destinationDir: directory,
        );

        zipFile.deleteSync();

        await _saveDataInPreferences();
      }
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> existDatabase() async {
    try {
      final directory = await getApplicationDocumentsDirectory();

      if (await getSchemaVersionFromPreferences() == databaseRelease &&
          _databaseFileExist(directory: directory)) {
        return true;
      } else {
        return false;
      }
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  bool _databaseFileExist({required Directory directory}) {
    return File((join(directory.path, remoteDatabaseName))).existsSync();
  }

  Future<void> _getRemoteInitialDatabase({
    required Directory directory,
  }) async {
    try {
      final response = await dio.downloadUri(
        (usuario!.test)
            ? remoteInitDatabaseTestEndpoint
            : remoteInitDatabaseEndpoint,
        '${directory.path}/jbm_sqlite.zip',
        options: Options(
          responseType: ResponseType.stream,
          receiveDataWhenStatusError: true,
          followRedirects: false,
        ),
      );

      if (response.statusCode != 200) {
        throw AppException.restApiFailure(
            response.statusCode ?? 500, response.toString());
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> _saveDataInPreferences() async {
    try {
      final initialDatabaseDate = await _getRemoteInitialDatabaseDate();

      await localDb
          .into(localDb.syncDateTimeTable)
          .insertOnConflictUpdate(SyncDateTimeTableCompanion(
            id: const Value(1),
            dbSchemaVersion: const Value(databaseRelease),
            articuloUltimaSync: Value(initialDatabaseDate),
            clienteUltimaSync: Value(initialDatabaseDate),
            pedidoUltimaSync: Value(initialDatabaseDate),
            visitaUltimaSync: Value(initialDatabaseDate),
          ));
    } catch (e) {
      rethrow;
    }
  }

  Future<DateTime> _getRemoteInitialDatabaseDate() async {
    try {
      final response = await dio.getUri(
        (usuario!.test)
            ? remoteInitialDatabaseDateTimeTestEndpoint
            : remoteInitialDatabaseDateTimeEndpoint,
      );

      if (response.statusCode == 200) {
        return DateTime.parse(response.data['data'] as String);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 500, response.toString());
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<int> getSchemaVersionFromPreferences() async {
    try {
      final syncDateTimeTable =
          await localDb.select(localDb.syncDateTimeTable).getSingleOrNull();

      return syncDateTimeTable?.dbSchemaVersion ?? -1;
    } catch (e) {
      return -1;
    }
  }
}
