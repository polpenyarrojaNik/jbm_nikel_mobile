// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_tarifa_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsuarioTarifaDTO _$UsuarioTarifaDTOFromJson(Map<String, dynamic> json) =>
    _UsuarioTarifaDTO(
      usuarioId: json['USUARIO_ID'] as String,
      tarifaId: json['TARIFA_ID'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$UsuarioTarifaDTOToJson(_UsuarioTarifaDTO instance) =>
    <String, dynamic>{
      'USUARIO_ID': instance.usuarioId,
      'TARIFA_ID': instance.tarifaId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
