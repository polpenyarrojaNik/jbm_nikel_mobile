// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitDTO _$$_VisitDTOFromJson(Map<String, dynamic> json) => _$_VisitDTO(
      id: json['VISITA_ID'] as String,
      customerId: json['CLIENTE_ID'] as String,
      date: DateTime.parse(json['FECHA'] as String),
      numEmpl: json['NUM_EMPL'] as String,
      contact: json['CONTACTO'] as String?,
      summary: json['RESUMEN'] as String?,
      latitude: (json['LATITUD'] as num).toDouble(),
      longitude: (json['LONGITUD'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_VisitDTOToJson(_$_VisitDTO instance) =>
    <String, dynamic>{
      'VISITA_ID': instance.id,
      'CLIENTE_ID': instance.customerId,
      'FECHA': instance.date.toIso8601String(),
      'NUM_EMPL': instance.numEmpl,
      'CONTACTO': instance.contact,
      'RESUMEN': instance.summary,
      'LATITUD': instance.latitude,
      'LONGITUD': instance.longitude,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
