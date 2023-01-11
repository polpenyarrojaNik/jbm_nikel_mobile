import 'dart:io';

import 'package:archive/archive.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../application/log_service.dart';
import '../exceptions/app_exception.dart';
import '../exceptions/get_api_error.dart';
import '../helpers/database_helper.dart';
import '../presentation/app.dart';
import 'remote_database.dart';

final initDatabaseServiceProvider = Provider.autoDispose<InitDatabaseService>(
  (ref) => InitDatabaseService(
      ref.watch(dioProvider), ref.watch(usuarioNotifierProvider)),
);

class InitDatabaseService {
  final Dio dio;
  final Usuario? usuario;

  static final remoteInitDatabaseEndpoint = Uri.http(
    'jbm-api.nikel.es',
    '/api/v3/sync/init-db',
  );

  static final remoteInitDatabaseTestEndpoint = Uri.http(
    'jbm-api-test.nikel.es:8080',
    '/api/v3/sync/init-db',
  );

  static final remoteInitialDatabaseDateTimeEndpoint = Uri.http(
    'jbm-api.nikel.es',
    '/api/v3/sync/init-db-date',
  );
  static final remoteInitialDatabaseDateTimeTestEndpoint = Uri.http(
    'jbm-api-test.nikel.es:8080',
    '/api/v3/sync/init-db-date',
  );

  InitDatabaseService(this.dio, this.usuario);

  Future<void> downloadInitDatabase() async {
    try {
      if (await _getSchemaVersionFromPreferences() != databaseRelease) {
        await deleteLocalDatabase();
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
      final sharedPreferences = await SharedPreferences.getInstance();

      final initialDatabaseDate = await _getRemoteInitialDatabaseDate();
      await sharedPreferences.setString(
          articuloFechaUltimaSyncKey, initialDatabaseDate.toIso8601String());
      await sharedPreferences.setString(
          clienteFechaUltimaSyncKey, initialDatabaseDate.toIso8601String());
      await sharedPreferences.setString(
          pedidoVentaFechaUltimaSyncKey, initialDatabaseDate.toIso8601String());
      await sharedPreferences.setString(
          visitaFechaUltimaSyncKey, initialDatabaseDate.toIso8601String());
      await sharedPreferences.setInt(dbSchemaVersionKey, databaseRelease);
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

  Future<int> _getSchemaVersionFromPreferences() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    return sharedPreferences.getInt(dbSchemaVersionKey) ?? -1;
  }
}
