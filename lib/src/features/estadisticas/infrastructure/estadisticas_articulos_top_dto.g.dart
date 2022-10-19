// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estadisticas_articulos_top_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstadisitcasArticulosTopDTO _$$_EstadisitcasArticulosTopDTOFromJson(
        Map<String, dynamic> json) =>
    _$_EstadisitcasArticulosTopDTO(
      articuloId: json['ARTICULO_ID'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_EstadisitcasArticulosTopDTOToJson(
        _$_EstadisitcasArticulosTopDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
