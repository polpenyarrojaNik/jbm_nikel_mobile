import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/usuario.dart';
import '../infrastructure/usuario_service.dart';

final usuarioNotifierProvider =
    StateNotifierProvider<UsuarioNotifier, Usuario?>(
  (ref) {
    final usuarioNotifier = UsuarioNotifier(ref.watch(usuarioServiceProvider));
    usuarioNotifier.checkAndUpdateUsuario();
    return usuarioNotifier;
  },
);

class UsuarioNotifier extends StateNotifier<Usuario?> {
  final UsuarioService _usuarioService;

  UsuarioNotifier(this._usuarioService) : super(null);

  Future<void> signIn(String username, String password) async {
    try {
      state = await _usuarioService.signIn(username, password);
    } catch (e) {
      state = null;
    }
  }

  Future<void> signOut() async {
    try {
      await _usuarioService.signOut();
      state = null;
    } catch (e) {
      state = null;
    }
  }

  Future<void> checkAndUpdateUsuario() async {
    try {
      state = await _usuarioService.getSignedInUsuario();
    } catch (e) {
      state = null;
    }
  }
}
