// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metodo_cobro_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetodoDeCobroDTO _$$_MetodoDeCobroDTOFromJson(Map<String, dynamic> json) =>
    _$_MetodoDeCobroDTO(
      id: json['METODO_COBRO_ID'] as String,
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
      descripcionPT: json['DESCRIPCION_PT'] as String?,
      descripcionRO: json['DESCRIPCION_RO'] as String?,
      descripcionRU: json['DESCRIPCION_RU'] as String?,
      descripcionCN: json['DESCRIPCION_CN'] as String?,
      descripcionEL: json['DESCRIPCION_EL'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_MetodoDeCobroDTOToJson(_$_MetodoDeCobroDTO instance) =>
    <String, dynamic>{
      'METODO_COBRO_ID': instance.id,
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
      'DESCRIPCION_PT': instance.descripcionPT,
      'DESCRIPCION_RO': instance.descripcionRO,
      'DESCRIPCION_RU': instance.descripcionRU,
      'DESCRIPCION_CN': instance.descripcionCN,
      'DESCRIPCION_EL': instance.descripcionEL,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
