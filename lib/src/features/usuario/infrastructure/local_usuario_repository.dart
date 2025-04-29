import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'usuario_dto.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/presentation/app.dart';

typedef Json = Map<String, dynamic>;

const _preferenceKey = 'auth_credentials';

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
      await storage.write(key: _preferenceKey, value: jsonEncode(usuarioDTO));
    } on PlatformException catch (e) {
      throw AppException.authLocalFailure(e.toString());
    }
  }

  Future<UsuarioDTO?> read() async {
    if (_cachedUsuarioDTO != null) {
      return _cachedUsuarioDTO;
    }
    try {
      final jsonString = await storage.read(key: _preferenceKey);

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
    } on PlatformException catch (e) {
      throw AppException.authLocalFailure(e.toString());
    }
  }

  Future<void> clear() async {
    _cachedUsuarioDTO = null;
    try {
      await storage.delete(key: _preferenceKey);
    } on PlatformException catch (e) {
      throw AppException.authLocalFailure(e.toString());
    }
  }
}
