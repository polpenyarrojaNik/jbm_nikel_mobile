// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_rappel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteRappelDTO _$$_ClienteRappelDTOFromJson(Map<String, dynamic> json) =>
    _$_ClienteRappelDTO(
      clienteId: json['CLIENTE_ID'] as String,
      rappelId: json['RAPPEL_ID'] as String,
      descripcion: json['DESCRIPCION'] as String,
      fechaDesDe: DateTime.parse(json['FECHA_DESDE'] as String),
      fechaHasta: json['FECHA_HASTA'] == null
          ? null
          : DateTime.parse(json['FECHA_HASTA'] as String),
      nombreArchivo: json['NOMBRE_ARCHIVO'] as String?,
      firmado: json['FIRMADO'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ClienteRappelDTOToJson(_$_ClienteRappelDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'RAPPEL_ID': instance.rappelId,
      'DESCRIPCION': instance.descripcion,
      'FECHA_DESDE': instance.fechaDesDe.toIso8601String(),
      'FECHA_HASTA': instance.fechaHasta?.toIso8601String(),
      'NOMBRE_ARCHIVO': instance.nombreArchivo,
      'FIRMADO': instance.firmado,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
