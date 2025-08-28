import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../domain/usuario.dart';

part 'usuario_dto.freezed.dart';
part 'usuario_dto.g.dart';
// ignore_for_file: invalid_annotation_target

@freezed
abstract class UsuarioDTO with _$UsuarioDTO {
  const UsuarioDTO._();
  const factory UsuarioDTO({
    @JsonKey(name: 'USUARIO_ID') required String id,
    @JsonKey(name: 'USUARIO') required String usuario,
    @JsonKey(name: 'CLAVE') required String contrasenya,
    @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
    required String? nombreUsuario,
    @JsonKey(name: 'PROVISIONAL_TOKEN') required String provisionalToken,
    @JsonKey(name: 'REFRESH_TOKEN') String? refreshToken,
    @JsonKey(name: 'TEST') required String test,
    @JsonKey(name: 'IDIOMA_ID') required String idiomaId,
    @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
    required String modificarPedido,
    @JsonKey(name: 'APP_VER_TOTAL_VENTAS') required String verTotalVentas,
    @JsonKey(name: 'PACKAGE_NAME') String? packageName,
    @JsonKey(name: 'VERSION') String? version,
    @JsonKey(name: 'BUILD_NUMBER') String? buildNumber,
    @JsonKey(name: 'DEVICE_INFO') String? deviceInfo,
    @JsonKey(name: 'MARGEN_COMERCIAL') double? margenComercial,
  }) = _UsuarioDTO;

  DateTime get expiration {
    return JwtDecoder.getExpirationDate(provisionalToken);
  }

  bool get isExpired {
    final expiration = this.expiration;
    return DateTime.now().isAfter(expiration);
  }

  bool get isTest => (test == 'S');

  bool get canRefresh => refreshToken != null;

  factory UsuarioDTO.fromJson(Map<String, dynamic> json) =>
      _$UsuarioDTOFromJson(json);

  factory UsuarioDTO.fromDomain(Usuario usuario) {
    return UsuarioDTO(
      id: usuario.id,
      usuario: usuario.usuario,
      contrasenya: usuario.contrasenya,
      nombreUsuario: usuario.nombreUsuario,
      provisionalToken: usuario.provisionalToken,
      refreshToken: usuario.refreshToken,
      test: (usuario.test) ? 'S' : 'N',
      idiomaId: usuario.idiomaId,
      modificarPedido: usuario.modificarPedido ? 'S' : 'N',
      verTotalVentas: usuario.verTotalVentas ? 'S' : 'N',
      margenComercial: usuario.margenComercial,
      packageName: usuario.packageName,
      version: usuario.version,
      buildNumber: usuario.buildNumber,
      deviceInfo: usuario.deviceInfo,
    );
  }

  Usuario toDomain() {
    return Usuario(
      id: id,
      usuario: usuario,
      contrasenya: contrasenya,
      nombreUsuario: nombreUsuario,
      provisionalToken: provisionalToken,
      refreshToken: refreshToken,
      test: (test == 'S'),
      idiomaId: idiomaId,
      modificarPedido: modificarPedido == 'S',
      verTotalVentas: verTotalVentas == 'S',
      margenComercial: margenComercial ?? 0.0,
      packageName: packageName!,
      version: version!,
      buildNumber: buildNumber!,
      deviceInfo: deviceInfo!,
    );
  }
}
