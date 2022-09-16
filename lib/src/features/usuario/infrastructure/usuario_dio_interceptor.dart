import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/usuario_service.dart';

import '../../../core/presentation/app.dart';

final usuarioDioInterceptorProvider = Provider(
  (ref) => UsuarioDioInterceptor(
    ref.watch(usuarioServiceProvider),
    ref.watch(usuarioNotifierProvider.notifier),
    ref.watch(dioForAuthProvider),
  ),
);

class UsuarioDioInterceptor extends Interceptor {
  final UsuarioService _usuarioService;
  final UsuarioNotifier _usuarioNotifier;
  final Dio _dio;

  UsuarioDioInterceptor(
    this._usuarioService,
    this._usuarioNotifier,
    this._dio,
  );

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final usuario = await _usuarioService.getSignedInUsuario();
    final modifiedOptions = options
      ..headers.addAll(
        usuario == null
            ? {}
            : {'Authorization': 'Bearer ${usuario.provisionalToken}'},
      );
    handler.next(modifiedOptions);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final errorResponse = err.response;
    if (errorResponse != null && errorResponse.statusCode == 401) {
      final usuario = await _usuarioService.getSignedInUsuario();

      if (usuario != null) {
        final newUsuario = await _usuarioService.refresh();

        if (newUsuario == null) {
          await _usuarioService.signOut();
          await _usuarioNotifier.checkAndUpdateUsuario();
          handler.next(err);
        } else {
          handler.resolve(
            await _dio.fetch(
              errorResponse.requestOptions
                ..headers['Authorization'] =
                    'Bearer ${newUsuario.provisionalToken}',
            ),
          );
        }
      } else {
        handler.next(err);
      }
    } else {
      handler.next(err);
    }
  }
}
