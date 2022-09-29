import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/usuario_dto.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/presentation/app.dart';

typedef Json = Map<String, dynamic>;

final remoteUsuarioRepositoryProvider =
    Provider<RemoteUsuarioRepository>((ref) {
  return RemoteUsuarioRepository(ref.watch(dioForAuthProvider));
});

class RemoteUsuarioRepository {
  final Dio _dio;

  RemoteUsuarioRepository(this._dio);

  static final authorizationEndpoint = Uri.http(
    dotenv.get('URLTEST', fallback: 'localhost:3001'),
    '/api/v1/login',
  );
  static final renewTokenEndpoint = Uri.http(
    dotenv.get('URLTEST', fallback: 'localhost:3001'),
    '/api/v1/renew-token',
  );

  Future<UsuarioDTO> signIn(String username, String password) async {
    _dio.options = BaseOptions(
      validateStatus: (status) =>
          status != null && status >= 200 && status < 400,
    );

    try {
      final response = await _dio.postUri(
        authorizationEndpoint,
        data: {'USUARIO': username, 'CLAVE': password},
      );
      if (response.statusCode == 200) {
        final UsuarioDTO usuarioDTO =
            UsuarioDTO.fromJson(response.data['data'] as Json);

        return usuarioDTO;
      } else if (response.statusCode == 400) {
        throw AppException.restApiFailure(
          response.statusCode ?? 400,
          response.data['error']['detail'] ??
              response.data['message'] ??
              'Internet Error',
        );
      } else {
        throw AppException.restApiFailure(response.statusCode ?? 400,
            response.statusMessage ?? 'Internet Error');
      }
    } on DioError catch (e) {
      throw AppException.restApiFailure(
        e.response?.statusCode ?? 400,
        e.response?.data['error']['detail'] ??
            e.response?.data['message'] ??
            'Internet Error',
      );
    }
  }

  Future<UsuarioDTO> refresh(UsuarioDTO usuarioDTO) async {
    try {
      final response = await _dio.postUri(
        renewTokenEndpoint,
        data: {'REFRESH_TOKEN': usuarioDTO.refreshToken},
      );
      if (response.statusCode == 200) {
        final newToken = response.data['data']['PROVISIONAL_TOKEN'] as String;

        return usuarioDTO.copyWith(provisionalToken: newToken);
      } else {
        throw AppException.restApiFailure(
          response.statusCode ?? 400,
          response.data['detail'] ??
              response.data['message'] ??
              'Internet Error',
        );
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw AppException.restApiFailure(
          e.response?.statusCode ?? 400,
          e.response?.data['detail'] ??
              e.response?.data['message'] ??
              'Internet Error',
        );
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }
}
