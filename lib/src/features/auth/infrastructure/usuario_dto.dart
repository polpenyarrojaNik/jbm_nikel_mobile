import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/auth/domain/usuario.dart';
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
  }) = _UsuarioDTO;

  DateTime? get expiration {
    return JwtDecoder.getExpirationDate(provisionalToken);
  }

  bool get isExpired {
    final expiration = this.expiration;
    return expiration != null && DateTime.now().isAfter(expiration);
  }

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
    );
  }
}
