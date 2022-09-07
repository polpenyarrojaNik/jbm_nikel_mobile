import 'package:jbm_nikel_mobile/src/features/auth/infrastructure/auth_repository.dart';
import 'package:jbm_nikel_mobile/src/features/auth/presentation/auth_controller.dart';

import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final AuthRepository _authenticator;
  final AuthController _authNotifier;
  final Dio _dio;

  AuthInterceptor(
    this._authenticator,
    this._authNotifier,
    this._dio,
  );

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final errorResponse = err.response;
    if (errorResponse != null && errorResponse.statusCode == 401) {
      final credentials = await _authenticator.getSignedInUsuario();

      if (credentials == null) {
        await _authenticator.clear();
        await _authNotifier.checkAndUpdateAuthStatus();
        handler.next(err);
      } else {
        handler.resolve(
          await _dio.fetch(
            errorResponse.requestOptions
              ..headers['Authorization'] =
                  'Bearer ${credentials.provisionalToken}',
          ),
        );
      }
    } else {
      handler.next(err);
    }
  }
}
