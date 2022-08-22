import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/auth/domain/user.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';
// ignore_for_file: invalid_annotation_target

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @JsonKey(name: 'USUARIO_ID') required String id,
    @JsonKey(name: 'USUARIO') required String user,
    @JsonKey(name: 'CLAVE') required String password,
    @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
        required String? username,
    @JsonKey(name: 'PROVISIONAL_TOKEN') required String provisionalToken,
    @JsonKey(name: 'REFRESH_TOKEN') required String refreshToken,
  }) = _UserDTO;

  DateTime? get expiration {
    return JwtDecoder.getExpirationDate(provisionalToken);
  }

  bool get isExpired {
    final expiration = this.expiration;
    return expiration != null && DateTime.now().isAfter(expiration);
  }

  bool get canRefresh => refreshToken != null;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User _) {
    return UserDTO(
      id: _.id,
      user: _.user,
      password: _.password,
      username: _.username,
      provisionalToken: _.provisionalToken,
      refreshToken: _.refreshToken,
    );
  }

  User toDomain() {
    return User(
      id: id,
      user: user,
      password: password,
      username: username,
      provisionalToken: provisionalToken,
      refreshToken: refreshToken,
    );
  }
}
