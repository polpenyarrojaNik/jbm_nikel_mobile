import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/presentation/app.dart';
import 'usuario_aux_dto.dart';
import 'usuario_dto.dart';

typedef Json = Map<String, dynamic>;

final remoteUsuarioRepositoryProvider =
    Provider<RemoteUsuarioRepository>((ref) {
  return RemoteUsuarioRepository(ref.watch(dioForAuthProvider));
});

class RemoteUsuarioRepository {
  final Dio _dio;

  RemoteUsuarioRepository(this._dio);

  static final authorizationEndpoint = Uri.https(
    dotenv.get('URLTEST', fallback: 'localhost:3001'),
    '/api/v5/login',
  );
  static final authorizationTestEndpoint = Uri.http(
    dotenv.get('URLTEST', fallback: 'localhost:3001'),
    '/api/v5/login',
  );
  static final renewTokenEndpoint = Uri.https(
    dotenv.get('URLTEST', fallback: 'localhost:3001'),
    '/api/v4/renew-token',
  );
  static final renewTokenTestEndpoint = Uri.http(
    dotenv.get('URLTEST', fallback: 'localhost:3001'),
    '/api/v4/renew-token',
  );

  Future<UsuarioDTO> signIn(String username, String password, bool test) async {
    _dio.options = BaseOptions(
      validateStatus: (status) =>
          status != null && status >= 200 && status < 400,
    );

    try {
      final response = await _dio.postUri(
        (test) ? authorizationTestEndpoint : authorizationEndpoint,
        data: {
          'USUARIO': username.replaceAll('@', ''),
          'CLAVE': password,
          'TEST': (test) ? 'S' : 'N'
        },
      );
      if (response.statusCode == 200) {
        final usuarioDTO = UsuarioDTO.fromJson(response.data['data'] as Json);

        return usuarioDTO;
      } else if (response.statusCode == 400) {
        throw AppException.restApiFailure(
          response.statusCode ?? 400,
          response.data['error']['detail']?.toString() ??
              response.data['message']?.toString() ??
              'Internet Error',
        );
      } else {
        throw AppException.restApiFailure(response.statusCode ?? 400,
            response.statusMessage ?? 'Internet Error');
      }
    } on DioException catch (e) {
      throw AppException.restApiFailure(
        e.response?.statusCode ?? 400,
        e.response?.data['error']['detail']?.toString() ??
            e.response?.data['error']['message']?.toString() ??
            'Internet Error',
      );
    }
  }

  Future<UsuarioDTO> refresh(UsuarioDTO usuarioDTO) async {
    try {
      final response = await _dio.postUri(
        (usuarioDTO.isTest) ? renewTokenTestEndpoint : renewTokenEndpoint,
        data: {'REFRESH_TOKEN': usuarioDTO.refreshToken},
      );
      if (response.statusCode == 200) {
        final newToken = response.data['data']['PROVISIONAL_TOKEN'] as String;

        final packageInfo = await PackageInfo.fromPlatform();
        final deviceInfoPlugin = DeviceInfoPlugin();

        late String deviceInfoStr;

        if (Platform.isAndroid) {
          final andoridInfo = await deviceInfoPlugin.androidInfo;

          deviceInfoStr = '${andoridInfo.model}/${andoridInfo.id}';
        } else {
          final iOSInfo = await deviceInfoPlugin.iosInfo;
          deviceInfoStr =
              '${iOSInfo.utsname.machine}/${iOSInfo.identifierForVendor}';
        }

        return usuarioDTO.copyWith(
          provisionalToken: newToken,
          version: '${packageInfo.appName} ${packageInfo.version}',
          buildNumber: packageInfo.buildNumber,
          deviceInfo: deviceInfoStr,
        );
      } else {
        throw AppException.restApiFailure(
          response.statusCode ?? 400,
          response.data['detail']?.toString() ??
              response.data['message']?.toString() ??
              'Internet Error',
        );
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<UsuarioAuxDTO> remoteSyncUser(UsuarioDTO usuarioDto) async {
    try {
      final requestUri = (usuarioDto.isTest)
          ? Uri.http(
              // dotenv.get('URLTEST', fallback: 'localhost:3001'),
              'jbm-api-test.nikel.es:8080',
              'api/v1/sync/usuario/${usuarioDto.id}',
            )
          : Uri.https(
              // dotenv.get('URLTEST', fallback: 'localhost:3001'),
              'jbm-api.nikel.es',
              'api/v1/sync/usuario/${usuarioDto.id}',
            );

      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuarioDto.provisionalToken}'},
        ),
      );

      if (response.statusCode == 200) {
        final jsonData = response.data['data'] as Map<String, dynamic>;

        return UsuarioAuxDTO.fromJson(jsonData);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }
}
