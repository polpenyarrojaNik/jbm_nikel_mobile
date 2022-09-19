import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/articulos/infrastructure/articulo_dto.dart';
import '../../features/cliente/infrastructure/cliente_dto.dart';
import '../exceptions/app_exception.dart';
import '../helpers/formatters.dart';
import '../presentation/app.dart';
import 'database.dart';
import 'jbm_headers.dart';
import 'log.dart';
import 'remote_response.dart';

final syncServiceProvider = Provider.autoDispose<SyncService>(
  (ref) => SyncService(
    ref.watch(appDatabaseProvider),
    ref.watch(dioProvider),
  ),
);

class SyncService {
  final Dio _dio;
  final AppDatabase _db;

  static final remoteDatabaseDateTimeEndpoint = Uri.http(
    dotenv.get('URL', fallback: 'localhost:3001'),
    '/api/v1/sync/db-datetime',
  );

  static final remoteInitDatabaseEndpoint = Uri.http(
    dotenv.get('URL', fallback: 'localhost:3001'),
    '/api/v1/sync/init-db',
  );

  SyncService(this._db, this._dio);

  Future<void> initDatabaBase() async {
    try {
      final Directory directory = await getApplicationDocumentsDirectory();
      print(directory);
      if (!await _databaseFileExist(directory: directory)) {
        final data = await _getRemoteInitialDatabase();

        await _saveLocalInitialDatabase(directory: directory, data: data);
      }
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    }
  }

  Future<DateTime> getRemoteDatabaseDateTime() async {
    try {
      final response = await _dio.getUri(
        remoteDatabaseDateTimeEndpoint,
      );

      if (response.statusCode == 200) {
        final dateStr = response.data['data'] as String;
        return DateTime.parse(dateStr);
      } else {
        throw AppException.restApiFailure(response.statusCode ?? 500,
            response.statusMessage ?? 'Internet Error');
      }
    } on DioError catch (e) {
      throw AppException.restApiFailure(
        e.response?.statusCode ?? 500,
        e.response?.data['error']['detail'] ??
            e.response?.data['message'] ??
            'Internet Error',
      );
      // }
      // on TimeoutException catch (e) {
      //   throw AppException.restApiFailure(500, e.toString());
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> _databaseFileExist({required Directory directory}) async {
    return await File((join(directory.path, localDatabaseName))).exists();
  }

  Future<dynamic> _getRemoteInitialDatabase() async {
    try {
      final response = await _dio.getUri(
        remoteInitDatabaseEndpoint,
        options: Options(
            responseType: ResponseType.bytes,
            receiveDataWhenStatusError: true,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }),
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 500, response.toString());
      }
    } on DioError catch (e) {
      throw AppException.restApiFailure(
        e.response?.statusCode ?? 500,
        e.response?.data['error']['detail'] ??
            e.response?.data['message'] ??
            'Internet Error',
      );
    }
  }

  Future<void> _saveLocalInitialDatabase(
      {required Directory directory, required List<int> data}) async {
    RandomAccessFile? raf;

    try {
      final temporalyDirectory = await getTemporaryDirectory();
      final File file =
          File((join(temporalyDirectory.path, localDatabaseName)));
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data);

      await ZipFile.extractToDirectory(
          zipFile: file, destinationDir: directory);
      file.deleteSync(recursive: true);
    } catch (e) {
      rethrow;
    } finally {
      raf?.close();
    }
  }

  Future<void> syncArticulo() async {
    try {
      await _syncTable(
        apiPath: '/articulos',
        tableInfo: _db.articuloTable,
        fromJson: (e) => ArticuloDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientes() async {
    try {
      await _syncTable(
        apiPath: '/clientes',
        tableInfo: _db.clienteTable,
        fromJson: (e) => ClienteDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _syncTable({
    required String apiPath,
    required TableInfo<Table, dynamic> tableInfo,
    required Function(Map<String, dynamic> e) fromJson,
  }) async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final remoteDatabaseDateTime = await getRemoteDatabaseDateTime();

      final ultimaFechaSync = await getLastUpdatedDate(tableInfo: tableInfo);

      print(
          'dateFrom: ${dateFormatter(ultimaFechaSync.toIso8601String(), allDay: true)}');
      print(
          'dateTo: ${dateFormatter(remoteDatabaseDateTime.toIso8601String(), allDay: true)}');

      while (isNextPageAvailable) {
        final query = _getAPIQuery(
            page: page,
            dateFrom: ultimaFechaSync.toUtc(),
            dateTo: remoteDatabaseDateTime.toUtc(),
            totalRows: totalRows);

        final remotePageItems = await _getRemoteData(
            apiPath: '/api/v1/sync/$apiPath',
            query: query,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final tableValueDTOList = data.map((e) => fromJson(e)).toList();
            for (var i = 0; i < tableValueDTOList.length; i++) {
              final tableValue = tableValueDTOList[i];

              if (tableValue.deleted == 'S') {
                await deleteTableValue(tableInfo: tableInfo, dto: tableValue);
              } else {
                await upsertTable(tableInfo: tableInfo, dto: tableValue);
              }
            }

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> upsertTable(
      {required TableInfo<Table, dynamic> tableInfo,
      required dynamic dto}) async {
    try {
      await _db.into(tableInfo).insertOnConflictUpdate(dto);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteTableValue(
      {required TableInfo<Table, dynamic> tableInfo,
      required dynamic dto}) async {
    try {
      await _db.delete(tableInfo).delete(dto);
    } catch (e) {
      rethrow;
    }
  }

  Map<String, String> _getAPIQuery(
      {required int page,
      DateTime? dateFrom,
      required DateTime dateTo,
      required int? totalRows}) {
    final query = {
      'page': '$page',
      'pageSize': '5000',
      'dateTo': dateTo.toIso8601String()
    };

    if (dateFrom != null) {
      query.addAll({'dateFrom': dateFrom.toIso8601String()});
    }

    if (totalRows != null) {
      query.addAll({'totalRows': '$totalRows'});
    }
    return query;
  }

  Future<RemoteResponse<List<Map<String, dynamic>>>> _getRemoteData({
    required String apiPath,
    Map<String, String>? query,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      final response = await _dio.getUri(
        Uri.http(
          dotenv.get('URL', fallback: 'localhost:3001'),
          apiPath,
          query,
        ),
      );

      if (response.statusCode == 200) {
        final convertedDate = jsonDataSelector(response.data)
            .map((pedidoVentaMap) => pedidoVentaMap as Map<String, dynamic>)
            .toList();
        final headers = JBMHeaders.parse(response);

        return RemoteResponse.withNewData(
          convertedDate,
          maxPage: headers.maxPage ?? 1,
          totalRows: headers.totalRows ?? 0,
        );
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 500, response.toString());
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else {
        throw AppException.restApiFailure(
          e.response?.statusCode ?? 500,
          e.response?.data['error']['detail'] ??
              e.response?.data['message'] ??
              'Internet Error',
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<DateTime> getLastUpdatedDate(
      {required TableInfo<Table, dynamic> tableInfo}) async {
    try {
      final query = await _db.customSelect(
          ''' SELECT MAX(LAST_UPDATED) as MAX_DATE FROM ${tableInfo.actualTableName}
          ''').getSingle();

      return DateTime.parse(query.data['MAX_DATE']);
    } catch (e) {
      rethrow;
    }
  }
}
