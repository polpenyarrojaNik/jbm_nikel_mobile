// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_tarifa_precio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticuloTarifaPrecioDTO _$$_ArticuloTarifaPrecioDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticuloTarifaPrecioDTO(
      articuloId: json['ARTICULO_ID'] as String,
      tarifaId: json['TARIFA_ID'] as String,
      tarifaDescripcion: json['TARIFA_DESCRIPCION'] as String?,
      cantidadDesDe: (json['CANTIDAD_DESDE'] as num).toDouble(),
      precio: (json['PRECIO'] as num).toDouble(),
      tipoPrecio: (json['TIPO_PRECIO'] as num?)?.toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticuloTarifaPrecioDTOToJson(
        _$_ArticuloTarifaPrecioDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'TARIFA_ID': instance.tarifaId,
      'TARIFA_DESCRIPCION': instance.tarifaDescripcion,
      'CANTIDAD_DESDE': instance.cantidadDesDe,
      'PRECIO': instance.precio,
      'TIPO_PRECIO': instance.tipoPrecio,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
