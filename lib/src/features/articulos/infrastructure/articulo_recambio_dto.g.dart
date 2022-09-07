// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_recambio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticuloRecambioDTO _$$_ArticuloRecambioDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticuloRecambioDTO(
      articuloId: json['ARTICULO_ID'] as String,
      id: json['RECAMBIO_ID'] as String,
      descripcion: json['DESCRIPCION'] as String,
      cantidad: (json['CANTIDAD'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticuloRecambioDTOToJson(
        _$_ArticuloRecambioDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'RECAMBIO_ID': instance.id,
      'DESCRIPCION': instance.descripcion,
      'CANTIDAD': instance.cantidad,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
