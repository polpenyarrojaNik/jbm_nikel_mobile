// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_catalogo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TipoCatalogoDTO _$TipoCatalogoDTOFromJson(Map<String, dynamic> json) =>
    _TipoCatalogoDTO(
      tipoCatalogoId: json['TIPO_CATALOGO_ID'] as String,
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
    );

Map<String, dynamic> _$TipoCatalogoDTOToJson(_TipoCatalogoDTO instance) =>
    <String, dynamic>{
      'TIPO_CATALOGO_ID': instance.tipoCatalogoId,
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
    };
