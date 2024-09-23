import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/exceptions/app_exception.dart';
import 'local_usuario_repository.dart';
import 'remote_usuario_repository.dart';
import 'package:package_info_plus/package_info_plus.dart';

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

    if (storedCredentials?.isExpired ?? false) {
      return refresh();
    }

    return storedCredentials?.toDomain();
  }

  Future<Usuario> signIn(String username, String password) async {
    final usuarioDTO = await _remoteUsuarioRepository.signIn(
      username,
      password,
      username.contains('@'),
    );
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

    final usuarioDtos = usuarioDTO.copyWith(
      packageName: packageInfo.appName,
      version: '${packageInfo.appName} ${packageInfo.version}',
      buildNumber: packageInfo.buildNumber,
      deviceInfo: deviceInfoStr,
    );

    await _localUsuarioRepository.save(usuarioDtos);

    return usuarioDtos.toDomain();
  }

  Future<void> signOut() async {
    await _localUsuarioRepository.clear();
  }

  Future<Usuario?> refresh() async {
    try {
      final storedCredentials = await _localUsuarioRepository.read();

      try {
        if (storedCredentials != null && storedCredentials.canRefresh) {
          final refreshedUsuarioDTO =
              await _remoteUsuarioRepository.refresh(storedCredentials);
          await _localUsuarioRepository.save(refreshedUsuarioDTO);
          return refreshedUsuarioDTO.toDomain();
        }
        return null;
      } on AppException catch (e) {
        if (e.details.statusCode == 400) {
          return null;
        } else {
          return storedCredentials?.toDomain();
        }
      } catch (e) {
        return storedCredentials?.toDomain();
      }
    } catch (e) {
      return null;
    }
  }

  Future<void> syncUser() async {
    try {
      final storedCredentials = await _localUsuarioRepository.read();

      if (storedCredentials != null) {
        final userDto =
            await _remoteUsuarioRepository.remoteSyncUser(storedCredentials);

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

        final usuarioDto = storedCredentials.copyWith(
          nombreUsuario: userDto.nombreUsuario,
          idiomaId: userDto.idiomaId,
          modificarPedido: userDto.modificarPedido,
          verTotalVentas: userDto.verTotalVentas,
          margenComercial: userDto.margenComercial,
          packageName: packageInfo.appName,
          version: '${packageInfo.appName} ${packageInfo.version}',
          buildNumber: packageInfo.buildNumber,
          deviceInfo: deviceInfoStr,
        );
        await _localUsuarioRepository.save(usuarioDto);
      }
    } catch (e) {
      // Do nothing
    }
  }
}
