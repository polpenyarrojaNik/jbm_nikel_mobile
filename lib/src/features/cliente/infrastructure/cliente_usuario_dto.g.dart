// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_usuario_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClienteUsuarioDTO _$ClienteUsuarioDTOFromJson(Map<String, dynamic> json) =>
    _ClienteUsuarioDTO(
      clienteId: json['CLIENTE_ID'] as String,
      usuarioId: json['USUARIO_ID'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$ClienteUsuarioDTOToJson(_ClienteUsuarioDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'USUARIO_ID': instance.usuarioId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
