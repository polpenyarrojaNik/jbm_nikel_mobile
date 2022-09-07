// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitaDTO _$$_VisitaDTOFromJson(Map<String, dynamic> json) => _$_VisitaDTO(
      id: json['VISITA_ID'] as String,
      clienteId: json['CLIENTE_ID'] as String,
      fecha: DateTime.parse(json['FECHA'] as String),
      numEmpl: json['NUM_EMPL'] as String,
      contacto: json['CONTACTOO'] as String?,
      resumen: json['RESUMEN'] as String?,
      latitud: (json['LATITUD'] as num).toDouble(),
      longitud: (json['LONGITUD'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_VisitaDTOToJson(_$_VisitaDTO instance) =>
    <String, dynamic>{
      'VISITA_ID': instance.id,
      'CLIENTE_ID': instance.clienteId,
      'FECHA': instance.fecha.toIso8601String(),
      'NUM_EMPL': instance.numEmpl,
      'CONTACTOO': instance.contacto,
      'RESUMEN': instance.resumen,
      'LATITUD': instance.latitud,
      'LONGITUD': instance.longitud,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
