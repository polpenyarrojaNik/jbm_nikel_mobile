// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_usuario_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteUsuarioDTO _$$_ClienteUsuarioDTOFromJson(Map<String, dynamic> json) =>
    _$_ClienteUsuarioDTO(
      clienteId: json['CLIENTE_ID'] as String,
      usuarioId: json['USUARIO_ID'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ClienteUsuarioDTOToJson(
        _$_ClienteUsuarioDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'USUARIO_ID': instance.usuarioId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
