import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/local_usuario_repository.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/remote_usuario_repository.dart';

import '../domain/usuario.dart';

typedef Json = Map<String, dynamic>;

final usuarioServiceProvider = Provider<UsuarioService>((ref) {
  return UsuarioService(
    ref.watch(localUsuarioRepositoryProvider),
    ref.watch(remoteUsuarioRepositoryProvider),
  );
});

class UsuarioService {
  final LocalUsuarioRepository _localUsuarioRepository;
  final RemoteUsuarioRepository _remoteUsuarioRepository;

  UsuarioService(this._localUsuarioRepository, this._remoteUsuarioRepository);

  Future<Usuario?> getSignedInUsuario() async {
    final storedCredentials = await _localUsuarioRepository.read();

    // if (storedCredentials != null) {
    //   if (storedCredentials.canRefresh && storedCredentials.isExpired) {
    //     _localUsuarioRepository.clear();
    //     return null;
    //   }
    // }
    return storedCredentials?.toDomain();
  }

  Future<Usuario> signIn(String username, String password) async {
    final usuarioDTO = await _remoteUsuarioRepository.signIn(
      username,
      password,
    );

    await _localUsuarioRepository.save(usuarioDTO);
    return usuarioDTO.toDomain();
  }

  Future<void> signOut() async {
    _localUsuarioRepository.clear();
  }

  Future<Usuario?> refresh() async {
    try {
      final storedCredentials = await _localUsuarioRepository.read();
      if (storedCredentials != null && storedCredentials.canRefresh) {
        final refreshedUsuarioDTO =
            await _remoteUsuarioRepository.refresh(storedCredentials);
        await _localUsuarioRepository.save(refreshedUsuarioDTO);
        return refreshedUsuarioDTO.toDomain();
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
