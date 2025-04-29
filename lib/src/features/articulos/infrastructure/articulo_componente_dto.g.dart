// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_componente_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticuloComponenteDTOImpl _$$ArticuloComponenteDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ArticuloComponenteDTOImpl(
  articuloId: json['ARTICULO_ID'] as String,
  articuloComponenteId: json['ARTICULO_COMPONENTE_ID'] as String,
  cantidad: (json['CANTIDAD'] as num).toInt(),
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

Map<String, dynamic> _$$ArticuloComponenteDTOImplToJson(
  _$ArticuloComponenteDTOImpl instance,
) => <String, dynamic>{
  'ARTICULO_ID': instance.articuloId,
  'ARTICULO_COMPONENTE_ID': instance.articuloComponenteId,
  'CANTIDAD': instance.cantidad,
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
