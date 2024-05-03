// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_recambio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticuloRecambioDTOImpl _$$ArticuloRecambioDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticuloRecambioDTOImpl(
      articuloId: json['ARTICULO_ID'] as String,
      id: json['RECAMBIO_ID'] as String,
      descripcion: json['DESCRIPCION'] as String,
      cantidad: (json['CANTIDAD'] as num).toInt(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$ArticuloRecambioDTOImplToJson(
        _$ArticuloRecambioDTOImpl instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'RECAMBIO_ID': instance.id,
      'DESCRIPCION': instance.descripcion,
      'CANTIDAD': instance.cantidad,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
