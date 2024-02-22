import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/domain/usuario.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'usuario_dto.freezed.dart';
part 'usuario_dto.g.dart';
// ignore_for_file: invalid_annotation_target

@freezed
class UsuarioDTO with _$UsuarioDTO {
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

  DateTime? get expiration {
    return JwtDecoder.getExpirationDate(provisionalToken);
  }

  bool get isExpired {
    final expiration = this.expiration;
    return expiration != null && DateTime.now().isAfter(expiration);
  }

  bool get isTest => (test == 'S') ? true : false;

  bool get canRefresh => refreshToken != null;

  factory UsuarioDTO.fromJson(Map<String, dynamic> json) =>
      _$UsuarioDTOFromJson(json);

  factory UsuarioDTO.fromDomain(Usuario _) {
    return UsuarioDTO(
      id: _.id,
      usuario: _.usuario,
      contrasenya: _.contrasenya,
      nombreUsuario: _.nombreUsuario,
      provisionalToken: _.provisionalToken,
      refreshToken: _.refreshToken,
      test: (_.test) ? 'S' : 'N',
      idiomaId: _.idiomaId,
      modificarPedido: _.modificarPedido ? 'S' : 'N',
      verTotalVentas: _.verTotalVentas ? 'S' : 'N',
      margenComercial: _.margenComercial,
      packageName: _.packageName,
      version: _.version,
      buildNumber: _.buildNumber,
      deviceInfo: _.deviceInfo,
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
      test: (test == 'S') ? true : false,
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
