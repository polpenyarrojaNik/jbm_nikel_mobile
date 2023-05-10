import 'dart:io';

import 'package:archive/archive.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/local_database.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../application/log_service.dart';
import '../exceptions/app_exception.dart';
import '../exceptions/get_api_error.dart';
import '../helpers/database_helper.dart';
import '../presentation/app.dart';
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

  static final remoteInitDatabaseEndpoint = Uri.http(
    'jbm-api.nikel.es',
    '/api/v5/sync/init-db',
  );

  static final remoteInitDatabaseTestEndpoint = Uri.http(
    'jbm-api-test.nikel.es:8080',
    '/api/v5/sync/init-db',
  );

  static final remoteInitialDatabaseDateTimeEndpoint = Uri.http(
    'jbm-api.nikel.es',
    '/api/v5/sync/init-db-date',
  );
  static final remoteInitialDatabaseDateTimeTestEndpoint = Uri.http(
    'jbm-api-test.nikel.es:8080',
    '/api/v5/sync/init-db-date',
  );

  InitDatabaseService(this.dio, this.localDb, this.usuario);

  Future<void> downloadInitDatabase() async {
    try {
      if (await getSchemaVersionFromPreferences() != databaseRelease) {
        await deleteRemoteDatabase();
      }

      final Directory directory = await getApplicationDocumentsDirectory();

      if (!await _databaseFileExist(directory: directory)) {
        final data = await _getRemoteInitialDatabase();

        await _saveLocalInitialDatabase(directory: directory, data: data);

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
      final Directory directory = await getApplicationDocumentsDirectory();

      if (await getSchemaVersionFromPreferences() == databaseRelease &&
          await _databaseFileExist(directory: directory)) {
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

  Future<bool> _databaseFileExist({required Directory directory}) async {
    return await File((join(directory.path, remoteDatabaseName))).exists();
  }

  Future<dynamic> _getRemoteInitialDatabase() async {
    try {
      final response = await dio.getUri(
        (usuario!.test)
            ? remoteInitDatabaseTestEndpoint
            : remoteInitDatabaseEndpoint,
        options: Options(
          responseType: ResponseType.bytes,
          receiveDataWhenStatusError: true,
          followRedirects: false,
        ),
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 500, response.toString());
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> _saveLocalInitialDatabase(
      {required Directory directory, required List<int> data}) async {
    try {
      final archive = ZipDecoder().decodeBytes(data);
      for (final file in archive) {
        if (file.isFile && !file.name.contains('MACOSX')) {
          final data = file.content as List<int>;
          log.i('Direcotry: ${directory.path}');
          log.i('File: ${file.name}');
          final databaseFile = File('${directory.path}/${file.name}');
          databaseFile.writeAsBytesSync(data);
        }
        file.clear();
      }
    } catch (e) {
      rethrow;
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
        return DateTime.parse(response.data['data']);
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
