import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario.freezed.dart';

@freezed
abstract class Usuario with _$Usuario {
  const Usuario._();
  const factory Usuario({
    required String id,
    required String usuario,
    required String contrasenya,
    String? nombreUsuario,
    String? refreshToken,
    required String provisionalToken,
    required bool test,
    required String idiomaId,
    required bool modificarPedido,
    required bool verTotalVentas,
    required double margenComercial,
    required String packageName,
    required String version,
    required String buildNumber,
    required String deviceInfo,
    required bool costeSn,
    required bool filtroRepresentante,
  }) = _Usuario;
}
