// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sector_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaisDTO _$PaisDTOFromJson(Map<String, dynamic> json) => _PaisDTO(
  id: json['sector_id'] as String,
  altaSN: json['alta_sn'] as String,
  descripcionES: json['descripcion_es'] as String,
  descripcionEN: json['descripcion_en'] as String?,
  descripcionFR: json['descripcion_fr'] as String?,
  descripcionDE: json['descripcion_de'] as String?,
  descripcionCA: json['descripcion_ca'] as String?,
  descripcionGB: json['descripcion_gb'] as String?,
  descripcionHU: json['descripcion_hu'] as String?,
  descripcionIT: json['descripcion_it'] as String?,
  descripcionNL: json['descripcion_nl'] as String?,
  descripcionPL: json['descripcion_pl'] as String?,
  lastUpdated: DateTime.parse(json['last_updated'] as String),
  deleted: json['deleted'] as String? ?? 'N',
);

Map<String, dynamic> _$PaisDTOToJson(_PaisDTO instance) => <String, dynamic>{
  'sector_id': instance.id,
  'alta_sn': instance.altaSN,
  'descripcion_es': instance.descripcionES,
  'descripcion_en': instance.descripcionEN,
  'descripcion_fr': instance.descripcionFR,
  'descripcion_de': instance.descripcionDE,
  'descripcion_ca': instance.descripcionCA,
  'descripcion_gb': instance.descripcionGB,
  'descripcion_hu': instance.descripcionHU,
  'descripcion_it': instance.descripcionIT,
  'descripcion_nl': instance.descripcionNL,
  'descripcion_pl': instance.descripcionPL,
  'last_updated': instance.lastUpdated.toIso8601String(),
  'deleted': instance.deleted,
};
