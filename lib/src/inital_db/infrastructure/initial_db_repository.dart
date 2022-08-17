import 'dart:io';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/infrastructure/exceptions.dart';
import '../../core/infrastructure/log.dart';
import '../../core/infrastructure/remote_response.dart';

final initialDbRepositoryProvider = Provider<InitalDBRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final setInitialDbProvider = FutureProvider<void>((ref) async {
  final intialDbRepository = ref.watch(initialDbRepositoryProvider);

  return await intialDbRepository.setInitialDb();
});

class InitalDBRepository {
  final AppDatabase db;
  final Dio dio;
  InitalDBRepository(this.db, this.dio);

  Future<void> setInitialDb() async {
    try {
      if (!await _databaseFileExist()) {
        final data = await _getRemoteInitialDb(
          requestUri: Uri.http(
            dotenv.get('URL_NIKEL', fallback: 'loclahost:3001'),
            '/api/v1/init-db',
          ),
        );

        final Directory cahceDirectories = await getTemporaryDirectory();

        final File file = File('${cahceDirectories.path}/jbm.db');
        final raf = file.openSync(mode: FileMode.write);
        raf.writeFromSync(data as List<int>);
        await raf.close();
        final initailSyncDateString = DateTime.now().toIso8601String();
        await _copyDataInDbFile(initialDbFile: file);
        await db.addInitialSyncDate(
          initialSyncDate: LastSyncDateTableCompanion(
              id: const Value('1'),
              lastSyncCustomer: Value(initailSyncDateString),
              lastSyncSalesOrder: Value(initailSyncDateString)),
        );
      }
    } on RestApiException catch (e) {
      log.severe(e.message, e, e.stackTrace);
    } on DBException catch (e) {
      log.severe(e.toString(), e, e.stackTrace);
    } catch (e, stackTrace) {
      log.severe(e.toString(), e, stackTrace);
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
        throw RestApiException(response.statusCode, response.toString(), null);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(
            e.response?.statusCode,
            (e.response?.data is Map)
                ? e.response?.data['detail'] ?? e.response?.data['message']
                : e.response?.statusMessage,
            e.stackTrace);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _copyDataInDbFile({required File initialDbFile}) async {
    try {
      final Directory dbFolder = await getApplicationDocumentsDirectory();
      await initialDbFile.copy(join(dbFolder.path, 'jbm.db'));
      await initialDbFile.delete();
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> _databaseFileExist() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    return await File((join(dbFolder.path, 'jbm.db'))).exists();
  }
}
