import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../core/exceptions/app_exception.dart';
import '../domain/usuario.dart';
import 'local_usuario_repository.dart';
import 'remote_usuario_repository.dart';

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

    String deviceInfoStr;

    if (Platform.isAndroid) {
      final andoridInfo = await deviceInfoPlugin.androidInfo;

      deviceInfoStr = '${andoridInfo.model}/${andoridInfo.id}';
    } else {
      final iOSInfo = await deviceInfoPlugin.iosInfo;
      deviceInfoStr =
          '${iOSInfo.utsname.machine}/${iOSInfo.identifierForVendor ?? ''}';
    }

    final usuarioDtos = usuarioDTO.copyWith(
      packageName: packageInfo.appName,
      version: '${packageInfo.appName} ${packageInfo.version}',
      buildNumber: packageInfo.buildNumber,
      deviceInfo: deviceInfoStr,
    );

    await _localUsuarioRepository.save(usuarioDtos);

    await Sentry.configureScope(
      (scope) => scope.setUser(
        SentryUser(
          id: usuarioDtos.id,
          username: usuarioDtos.usuario,
          name: usuarioDtos.nombreUsuario,
          data: {
            'ver_total_ventas': usuarioDtos.verTotalVentas,
            'modificar_pedido': usuarioDtos.modificarPedido,
            'margen_comercial': usuarioDtos.margenComercial,
          },
        ),
      ),
    );

    return usuarioDtos.toDomain();
  }

  Future<void> signOut() async {
    await Sentry.configureScope((scope) => scope.setUser(null));

    await _localUsuarioRepository.clear();
  }

  Future<Usuario?> refresh() async {
    try {
      final storedCredentials = await _localUsuarioRepository.read();

      try {
        if (storedCredentials != null && storedCredentials.canRefresh) {
          final refreshedUsuarioDTO = await _remoteUsuarioRepository.refresh(
            storedCredentials,
          );
          await _localUsuarioRepository.save(refreshedUsuarioDTO);

          Sentry.configureScope(
            (scope) => scope.setUser(
              SentryUser(
                id: refreshedUsuarioDTO.id,
                username: refreshedUsuarioDTO.usuario,
                name: refreshedUsuarioDTO.nombreUsuario,
                data: {
                  'ver_total_ventas': refreshedUsuarioDTO.verTotalVentas,
                  'modificar_pedido': refreshedUsuarioDTO.modificarPedido,
                  'margen_comercial': refreshedUsuarioDTO.margenComercial,
                },
              ),
            ),
          );
          return refreshedUsuarioDTO.toDomain();
        }
        return null;
      } on AppException catch (e) {
        return e.details.statusCode == 400
            ? null
            : storedCredentials?.toDomain();
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
        final userDto = await _remoteUsuarioRepository.remoteSyncUser(
          storedCredentials,
        );

        final packageInfo = await PackageInfo.fromPlatform();
        final deviceInfoPlugin = DeviceInfoPlugin();

        String deviceInfoStr;

        if (Platform.isAndroid) {
          final andoridInfo = await deviceInfoPlugin.androidInfo;

          deviceInfoStr = '${andoridInfo.model}/${andoridInfo.id}';
        } else {
          final iOSInfo = await deviceInfoPlugin.iosInfo;
          deviceInfoStr =
              '${iOSInfo.utsname.machine}/${iOSInfo.identifierForVendor ?? ''}';
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
        await Sentry.configureScope(
          (scope) => scope.setUser(
            SentryUser(
              id: usuarioDto.id,
              username: usuarioDto.usuario,
              name: usuarioDto.nombreUsuario,
              data: {
                'ver_total_ventas': usuarioDto.verTotalVentas,
                'modificar_pedido': usuarioDto.modificarPedido,
                'margen_comercial': usuarioDto.margenComercial,
              },
            ),
          ),
        );
      }
    } catch (e) {
      // Do nothing
    }
  }
}
