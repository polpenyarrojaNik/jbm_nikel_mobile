// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: json['USUARIO_ID'] as String,
      user: json['USUARIO'] as String,
      password: json['CLAVE'] as String,
      username: json['NOMBRE_MOSTRAR'] as String? ?? '',
      provisionalToken: json['PROVISIONAL_TOKEN'] as String,
      refreshToken: json['REFRESH_TOKEN'] as String,
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'USUARIO_ID': instance.id,
      'USUARIO': instance.user,
      'CLAVE': instance.password,
      'NOMBRE_MOSTRAR': instance.username,
      'PROVISIONAL_TOKEN': instance.provisionalToken,
      'REFRESH_TOKEN': instance.refreshToken,
    };
