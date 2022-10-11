// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_componente_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticuloComponenteDTO _$$_ArticuloComponenteDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticuloComponenteDTO(
      articuloId: json['ARTICULO_ID'] as String,
      articuloComponenteId: json['ARTICULO_COMPONENTE_ID'] as String,
      cantidad: json['CANTIDAD'] as int,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticuloComponenteDTOToJson(
        _$_ArticuloComponenteDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'ARTICULO_COMPONENTE_ID': instance.articuloComponenteId,
      'CANTIDAD': instance.cantidad,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
