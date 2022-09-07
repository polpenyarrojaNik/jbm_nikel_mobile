import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jbm_nikel_mobile/src/features/auth/infrastructure/usuario_dto.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/helpers/in_memory_store.dart';
import '../../../core/infrastructure/log.dart';
import '../domain/usuario.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

typedef Json = Map<String, dynamic>;

const _preferenceKey = 'auth_credentials';

class AuthRepository {
  Dio dio;
  FlutterSecureStorage storage;
  final _authState = InMemoryStore<Usuario?>(null);
  Usuario? get currentUser => _authState.value;
  Stream<Usuario?> authStateChanges() => _authState.stream;

  AuthRepository(this.dio, this.storage);

  Future<void> login(
      {required String usuario, required String contrasenya}) async {
    try {
      final usuarioDTO = await _remoteLogin(
          requestUri: Uri.http(
            dotenv.get('URL', fallback: 'localhost:3001'),
            '/api/v1/login',
          ),
          body: {'USUARIO': usuario, 'CLAVE': contrasenya});

      await saveUsuario(usuarioDTO);
      _authState.value = usuarioDTO.toDomain();
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<Usuario?> getSignedInUsuario() async {
    try {
      final usuarioDto = await read();

      if (usuarioDto != null) {
        if (usuarioDto.canRefresh && usuarioDto.isExpired) {
          final newUsuarioDto = await _refresh(
              requestUri: Uri.http(
                dotenv.get('URL', fallback: 'localhost:3001'),
                '/api/v1/renew-token',
              ),
              body: {'REFRESH_TOKEN': usuarioDto.refreshToken!});

          await saveUsuario(newUsuarioDto);

          return newUsuarioDto.toDomain();
        }
        return usuarioDto.toDomain();
      }
      return null;
    } catch (e) {
      await logout();
      return null;
    }
  }

  Future<bool> isSignIn() async =>
      getSignedInUsuario().then((credentials) => credentials != null);

  Future<void> logout() async {
    try {
      await clear();
      _authState.value = null;
    } catch (e) {
      rethrow;
    }
  }

  Future<UsuarioDTO> _remoteLogin({
    required Uri requestUri,
    required Map<String, String> body,
  }) async {
    try {
      final response = await dio.postUri(
        requestUri,
        data: body,
      );
      if (response.statusCode == 200) {
        return UsuarioDTO.fromJson(
            response.data['data'] as Map<String, dynamic>);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioError catch (e) {
      String? errorDetalle;
      final responseErrorJson =
          e.response?.data['detalle'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetalle = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetalle ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UsuarioDTO> _refresh({
    required Uri requestUri,
    required Map<String, String> body,
  }) async {
    try {
      final response = await dio.postUri(
        requestUri,
        data: body,
      );
      if (response.statusCode == 200) {
        return UsuarioDTO.fromJson(
            response.data['data'] as Map<String, dynamic>);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioError catch (e) {
      String? errorDetalle;
      final responseErrorJson =
          e.response?.data['detalle'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetalle = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetalle ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveUsuario(UsuarioDTO usuarioDto) async {
    // _cachedCredentials = usuarioDto;
    await storage.write(
      key: _preferenceKey,
      value: jsonEncode(usuarioDto),
    );
  }

  Future<UsuarioDTO?> read() async {
    try {
      final usuarioString = await storage.read(key: _preferenceKey);

      return (usuarioString != null)
          ? UsuarioDTO.fromJson(jsonDecode(usuarioString) as Json)
          : null;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> clear() async {
    await storage.delete(key: _preferenceKey);
  }

  void dispose() => _authState.close();
}
