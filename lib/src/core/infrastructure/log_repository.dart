import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/log_dto.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../domain/log.dart';
import '../exceptions/app_exception.dart';
import '../presentation/app.dart';

final logRepositoryProvider = Provider.autoDispose<LogRepository>(
  (ref) => LogRepository(
    ref.watch(dioProvider),
    ref.watch(usuarioNotifierProvider),
  ),
);

class LogRepository {
  final Dio dio;
  final Usuario? usuario;

  static final remoteLogEndpoint = Uri.http(
    dotenv.get('URL', fallback: 'localhost:3001'),
    '/api/v1/online/log',
  );
  static final remoteLogTestEndpoint = Uri.http(
    dotenv.get('URLTEST', fallback: 'localhost:3001'),
    '/api/v1/online/log',
  );

  LogRepository(this.dio, this.usuario);

  Future<void> insetLog(
      {required String level, required String message, String? error}) async {
    final packageInfo = await PackageInfo.fromPlatform();

    final log = Log(
        level: level,
        message: message,
        appId: packageInfo.packageName,
        appBuild: packageInfo.buildNumber,
        appBuildName: packageInfo.appName,
        userId: usuario!.id);

    final logDto = LogDTO.fromDomain(log);

    final json = jsonEncode(logDto.toJson());

    print(json);

    try {
      final requestUri =
          (usuario!.test) ? remoteLogTestEndpoint : remoteLogEndpoint;

      final response = await dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuario!.provisionalToken}'},
        ),
        data: jsonEncode(logDto.toJson()),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        final logDtoResponse = LogDTO.fromJson(json);
        print(logDtoResponse);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      print(e);
    }
  }
}
