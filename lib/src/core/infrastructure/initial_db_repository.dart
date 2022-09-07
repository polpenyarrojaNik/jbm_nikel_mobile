import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/exceptions/app_exception.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'log.dart';

final initialDbRepositoryProvider = Provider<InitalDBRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final setInitialDbProvider = FutureProvider((ref) async {
  final intialDbRepository = ref.watch(initialDbRepositoryProvider);

  return intialDbRepository.setInitialDb();
});

class InitalDBRepository {
  final AppDatabase db;
  final Dio dio;
  InitalDBRepository(this.db, this.dio);

  Future<void> setInitialDb() async {
    try {
      final Directory directory = await getApplicationDocumentsDirectory();

      if (!await _databaseFileExist(directory: directory)) {
        final initailSyncUTCDateString = await _getRemoteInitialDbDate(
          requestUri: Uri.http(
            dotenv.get('URL', fallback: 'localhost:3001'),
            '/api/v1/sync/init-db-date',
          ),
        );

        final data = await _getRemoteInitialDb(
          requestUri: Uri.http(
            dotenv.get('URL', fallback: 'loclahost:3001'),
            '/api/v1/sync/init-db',
          ),
        );

        await _createDbFile(directory: directory, data: data);

        await db.addInitialSyncDate(
            initailSyncUTCDateString:
                initailSyncUTCDateString.toIso8601String());
      }
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    }
  }

  Future<dynamic> _getRemoteInitialDb({required Uri requestUri}) async {
    try {
      log.info('${(this).runtimeType}.getPage - Get Uri: $requestUri');
      final response = await dio.getUri(
        requestUri,
        options: Options(
            responseType: ResponseType.bytes,
            receiveDataWhenStatusError: true,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }),
      );
      log.info(
          '${(this).runtimeType}.getPage - Received response: ${response.statusCode}');
      log.info(
          '${(this).runtimeType}.getPage - ETag: ${response.headers.map['ETag']}');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.toString());
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw AppException.restApiFailure(
          e.response?.statusCode ?? 400,
          (e.response?.data is Map)
              ? e.response?.data['detalle'] ?? e.response?.data['message']
              : e.response?.statusMessage,
        );
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<DateTime> _getRemoteInitialDbDate({required Uri requestUri}) async {
    try {
      log.info('${(this).runtimeType}.getPage - Get Uri: $requestUri');
      final response = await dio.getUri(requestUri);
      log.info(
          '${(this).runtimeType}.getPage - Received response: ${response.statusCode}');
      log.info(
          '${(this).runtimeType}.getPage - ETag: ${response.headers.map['ETag']}');
      if (response.statusCode == 200) {
        final dateStr = response.data['data'] as String;
        print('DateStr: $dateStr');
        final date = DateTime.parse(dateStr);
        print('Date: $dateStr');

        return date;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.toString());
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw AppException.restApiFailure(
          e.response?.statusCode ?? 400,
          (e.response?.data is Map)
              ? e.response?.data['detalle'] ?? e.response?.data['message']
              : e.response?.statusMessage,
        );
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _createDbFile(
      {required Directory directory, required List<int> data}) async {
    RandomAccessFile? raf;

    try {
      final File file = File('${directory.path}/jbm.db');
      raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data);
    } catch (e) {
      rethrow;
    } finally {
      raf?.close();
    }
  }

  Future<bool> _databaseFileExist({required Directory directory}) async {
    return await File((join(directory.path, 'jbm.db'))).exists();
  }
}
