// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subsector_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaisDTOImpl _$$PaisDTOImplFromJson(Map<String, dynamic> json) =>
    _$PaisDTOImpl(
      sectorId: json['SECTOR_ID'] as String,
      subsectorId: json['SUBSECTOR_ID'] as String,
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

Map<String, dynamic> _$$PaisDTOImplToJson(_$PaisDTOImpl instance) =>
    <String, dynamic>{
      'SECTOR_ID': instance.sectorId,
      'SUBSECTOR_ID': instance.subsectorId,
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
