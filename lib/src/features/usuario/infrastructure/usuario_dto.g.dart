// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsuarioDTO _$$_UsuarioDTOFromJson(Map<String, dynamic> json) =>
    _$_UsuarioDTO(
      id: json['USUARIO_ID'] as String,
      usuario: json['USUARIO'] as String,
      contrasenya: json['CLAVE'] as String,
      nombreUsuario: json['NOMBRE_MOSTRAR'] as String? ?? '',
      provisionalToken: json['PROVISIONAL_TOKEN'] as String,
      refreshToken: json['REFRESH_TOKEN'] as String?,
      test: json['TEST'] as String,
    );

Map<String, dynamic> _$$_UsuarioDTOToJson(_$_UsuarioDTO instance) =>
    <String, dynamic>{
      'USUARIO_ID': instance.id,
      'USUARIO': instance.usuario,
      'CLAVE': instance.contrasenya,
      'NOMBRE_MOSTRAR': instance.nombreUsuario,
      'PROVISIONAL_TOKEN': instance.provisionalToken,
      'REFRESH_TOKEN': instance.refreshToken,
      'TEST': instance.test,
    };
