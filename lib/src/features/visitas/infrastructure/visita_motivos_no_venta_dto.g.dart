// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_motivos_no_venta_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisitaMotivoNoVentaDTOImpl _$$VisitaMotivoNoVentaDTOImplFromJson(
  Map<String, dynamic> json,
) => _$VisitaMotivoNoVentaDTOImpl(
  id: (json['CODIGO'] as num).toInt(),
  descripcionES: json['DESCRIPCION_ES'] as String,
  descripcionEN: json['DESCRIPCION_EN'] as String?,
  descripcionFR: json['DESCRIPCION_FR'] as String?,
  descripcionDE: json['DESCRIPCION_DE'] as String?,
  descripcionCA: json['DESCRIPCION_CA'] as String?,
  descripcionGB: json['DESCRIPCION_GB'] as String?,
  descripcionHU: json['DESCRIPCION_HU'] as String?,
  descripcionIT: json['DESCRIPCION_IT'] as String?,
  descripcionNL: json['DESCRIPCION_NL'] as String?,
  descripcionPL: json['DESCRIPCION_PL'] as String?,
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$$VisitaMotivoNoVentaDTOImplToJson(
  _$VisitaMotivoNoVentaDTOImpl instance,
) => <String, dynamic>{
  'CODIGO': instance.id,
  'DESCRIPCION_ES': instance.descripcionES,
  'DESCRIPCION_EN': instance.descripcionEN,
  'DESCRIPCION_FR': instance.descripcionFR,
  'DESCRIPCION_DE': instance.descripcionDE,
  'DESCRIPCION_CA': instance.descripcionCA,
  'DESCRIPCION_GB': instance.descripcionGB,
  'DESCRIPCION_HU': instance.descripcionHU,
  'DESCRIPCION_IT': instance.descripcionIT,
  'DESCRIPCION_NL': instance.descripcionNL,
  'DESCRIPCION_PL': instance.descripcionPL,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
