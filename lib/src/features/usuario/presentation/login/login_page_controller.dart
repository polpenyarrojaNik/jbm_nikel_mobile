import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/usuario_notifier.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../infrastructure/usuario_service.dart';

final loginPageControllerProvider =
    StateNotifierProvider.autoDispose<LoginPageController, AsyncValue<void>>(
      (ref) => LoginPageController(ref),
    );

class LoginPageController extends StateNotifier<AsyncValue<void>> {
  final Ref _ref;

  LoginPageController(this._ref) : super(const AsyncData(null));

  Future<void> login({
    required String username,
    required String password,
  }) async {
    try {
      state = const AsyncLoading();
      await _ref.read(usuarioServiceProvider).signIn(username, password);
      await _ref.read(usuarioNotifierProvider.notifier).checkAndUpdateUsuario();
      state = const AsyncData(null);
    } on AppException catch (e, stackTrace) {
      state = AsyncError(e.details.message, stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
