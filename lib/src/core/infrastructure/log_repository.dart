import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../application/log_service.dart';
import '../domain/log.dart';
import '../exceptions/app_exception.dart';
import '../presentation/app.dart';
import 'local_database.dart';
import 'log_dto.dart';

final logRepositoryProvider = Provider.autoDispose<LogRepository>(
  (ref) => LogRepository(
    ref.watch(dioProvider),
    ref.watch(appLocalDatabaseProvider),
    ref.watch(usuarioNotifierProvider),
  ),
);

class LogRepository {
  final Dio dio;
  final LocalAppDatabase localDb;
  final Usuario? usuario;

  static final remoteLogEndpoint = Uri.http(
    dotenv.get('URL', fallback: 'localhost:3001'),
    '/api/v2/online/log',
  );
  static final remoteLogTestEndpoint = Uri.http(
    dotenv.get('URL', fallback: 'localhost:3001'),
    '/api/v2/online/log',
  );

  LogRepository(this.dio, this.localDb, this.usuario);

  Future<void> insetLog({
    required String level,
    required String message,
  }) async {
    final appLog = Log(
      level: level,
      message: message,
      appId: usuario!.packageName,
      appBuild: usuario!.buildNumber,
      appBuildName: usuario!.version,
      device: usuario!.deviceInfo,
      userId: usuario!.id,
      timestamp: DateTime.now().toUtc(),
    );

    final logDto = LogDTO.fromDomain(appLog);

    try {
      await localDb.into(localDb.logTable).insert(logDto);
      await syncLogs();
    } catch (e) {
      log.e(e);
    }
  }

  Future<void> syncLogs() async {
    try {
      final logsDtoList = await getLogsFromDb();

      for (var i = 0; i < logsDtoList.length; i++) {
        final responseLogDto = await remotePostLogs(logDto: logsDtoList[i]);
        await deleteLogInLocalDb(logId: responseLogDto.id!);
      }
    } catch (e) {
      log.e(e);
    }
  }

  Future<List<LogDTO>> getLogsFromDb() async {
    final logsDto = await localDb.select(localDb.logTable).get();
    return logsDto;
  }

  Future<LogDTO> remotePostLogs({required LogDTO logDto}) async {
    final requestUri = (usuario!.test)
        ? remoteLogTestEndpoint
        : remoteLogEndpoint;

    final response = await dio.postUri(
      requestUri,
      options: Options(
        headers: {'authorization': 'Bearer ${usuario!.provisionalToken}'},
      ),
      data: jsonEncode(logDto.toJson()),
    );
    if (response.statusCode == 200) {
      final json = response.data['data'] as Map<String, dynamic>;

      return LogDTO.fromJson(json);
    }
    throw AppException.restApiFailure(
      response.statusCode ?? 400,
      response.statusMessage ?? '',
    );
  }

  Future<void> deleteLogInLocalDb({required int logId}) async {
    await (localDb.delete(
      localDb.logTable,
    )..where((tbl) => tbl.id.equals(logId))).go();
  }
}
