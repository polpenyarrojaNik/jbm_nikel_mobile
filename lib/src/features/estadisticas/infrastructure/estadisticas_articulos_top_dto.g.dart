// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estadisticas_articulos_top_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EstadisitcasArticulosTopDTOImpl _$$EstadisitcasArticulosTopDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$EstadisitcasArticulosTopDTOImpl(
      articuloId: json['ARTICULO_ID'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$EstadisitcasArticulosTopDTOImplToJson(
        _$EstadisitcasArticulosTopDTOImpl instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
