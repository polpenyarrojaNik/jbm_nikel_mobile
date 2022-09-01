import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jbm_nikel_mobile/src/features/auth/infrastructure/user_dto.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/log.dart';
import '../domain/user.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

typedef Json = Map<String, dynamic>;

const _preferenceKey = 'auth_credentials';

class AuthRepository {
  Dio dio;
  FlutterSecureStorage storage;

  AuthRepository(this.dio, this.storage);

  Future<void> login({required String user, required String password}) async {
    try {
      final userDTO = await _remoteLogin(
          requestUri: Uri.http(
            dotenv.get('URL_HOME', fallback: 'localhost:3001'),
            '/api/v1/login',
          ),
          body: {'USUARIO': user, 'CLAVE': password});

      await saveUser(userDTO);
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<User?> getSignedInUser() async {
    try {
      final userDto = await read();

      if (userDto != null) {
        if (userDto.canRefresh && userDto.isExpired) {
          final newUserDto = await _refresh(
              requestUri: Uri.http(
                dotenv.get('URL_HOME', fallback: 'localhost:3001'),
                '/api/v1/renew-token',
              ),
              body: {'REFRESH_TOKEN': userDto.refreshToken});

          await saveUser(newUserDto);

          return newUserDto.toDomain();
        }
        return userDto.toDomain();
      }
      return null;
    } catch (e) {
      await logout();
      return null;
    }
  }

  Future<bool> isSignIn() async =>
      getSignedInUser().then((credentials) => credentials != null);

  Future<void> logout() async {
    try {
      await clear();
    } catch (e) {
      rethrow;
    }
  }

  Future<UserDTO> _remoteLogin({
    required Uri requestUri,
    required Map<String, String> body,
  }) async {
    try {
      final response = await dio.postUri(
        requestUri,
        data: body,
      );
      if (response.statusCode == 200) {
        return UserDTO.fromJson(response.data['data'] as Map<String, dynamic>);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioError catch (e) {
      String? errorDetail;
      final responseErrorJson =
          e.response?.data['detail'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetail = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetail ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserDTO> _refresh({
    required Uri requestUri,
    required Map<String, String> body,
  }) async {
    try {
      final response = await dio.postUri(
        requestUri,
        data: body,
      );
      if (response.statusCode == 200) {
        return UserDTO.fromJson(response.data['data'] as Map<String, dynamic>);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioError catch (e) {
      String? errorDetail;
      final responseErrorJson =
          e.response?.data['detail'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetail = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetail ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveUser(UserDTO userDto) async {
    // _cachedCredentials = userDto;
    await storage.write(
      key: _preferenceKey,
      value: jsonEncode(userDto),
    );
  }

  Future<UserDTO?> read() async {
    try {
      final userString = await storage.read(key: _preferenceKey);

      return (userString != null)
          ? UserDTO.fromJson(jsonDecode(userString) as Json)
          : null;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> clear() async {
    await storage.delete(key: _preferenceKey);
  }
}
