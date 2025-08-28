// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estadisticas_articulos_top_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EstadisitcasArticulosTopDTO _$EstadisitcasArticulosTopDTOFromJson(
  Map<String, dynamic> json,
) => _EstadisitcasArticulosTopDTO(
  articuloId: json['ARTICULO_ID'] as String,
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$EstadisitcasArticulosTopDTOToJson(
  _EstadisitcasArticulosTopDTO instance,
) => <String, dynamic>{
  'ARTICULO_ID': instance.articuloId,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
