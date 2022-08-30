import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
import '../infrastructure/auth_repository.dart';

part 'auth_controller.freezed.dart';

final authControllerProvider = StateNotifierProvider<AuthController, AuthState>(
    (ref) => AuthController(ref.watch(authRepositoryProvider)));

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticating() = _Authenticating;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.failure(String e) = _Failure;
}

class AuthController extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthController(this._authRepository) : super(const AuthState.initial()) {
    checkAndUpdateAuthStatus();
  }

  Future<void> login({required String user, required String password}) async {
    try {
      state = const AuthState.authenticating();

      await _authRepository.login(user: user, password: password);
      state = const AuthState.authenticated();
    } on AppException catch (e) {
      state = AuthState.failure(e.details.message);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      state = const AuthState.authenticating();
      await _authRepository.logout();
      state = const AuthState.unauthenticated();
    } on AppException catch (e) {
      state = AuthState.failure(e.details.message);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> checkAndUpdateAuthStatus() async {
    state = const AuthState.authenticating();
    state = (await _authRepository.isSignIn())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }
}
