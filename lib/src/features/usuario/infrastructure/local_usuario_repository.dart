import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/presentation/app.dart';
import 'usuario_dto.dart';

typedef Json = Map<String, dynamic>;

const _kPreferenceKey = 'auth_credentials';

final localUsuarioRepositoryProvider = Provider<LocalUsuarioRepository>((ref) {
  return LocalUsuarioRepository(ref.watch(flutterSecureStorage));
});

class LocalUsuarioRepository {
  final FlutterSecureStorage storage;

  LocalUsuarioRepository(this.storage);

  UsuarioDTO? _cachedUsuarioDTO;

  Future<void> save(UsuarioDTO usuarioDTO) async {
    _cachedUsuarioDTO = usuarioDTO;
    try {
      await storage.write(key: _kPreferenceKey, value: jsonEncode(usuarioDTO));
    } on PlatformException catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.authLocalFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<UsuarioDTO?> read() async {
    if (_cachedUsuarioDTO != null) {
      return _cachedUsuarioDTO;
    }
    try {
      final jsonString = await storage.read(key: _kPreferenceKey);

      if (jsonString == null) {
        return null;
      }
      try {
        return _cachedUsuarioDTO = UsuarioDTO.fromJson(
          jsonDecode(jsonString) as Json,
        );
      } on FormatException {
        return null;
      }
    } on PlatformException catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.authLocalFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<void> clear() async {
    _cachedUsuarioDTO = null;
    try {
      await storage.delete(key: _kPreferenceKey);
    } on PlatformException catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.authLocalFailure(e.toString()),
        stackTrace,
      );
    }
  }
}
