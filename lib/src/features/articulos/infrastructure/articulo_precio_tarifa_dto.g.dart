// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_precio_tarifa_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticuloPrecioTarifaDTO _$ArticuloPrecioTarifaDTOFromJson(
  Map<String, dynamic> json,
) => _ArticuloPrecioTarifaDTO(
  articuloId: json['ARTICULO_ID'] as String,
  tarifaId: json['TARIFA_ID'] as String,
  tarifaDescripcion: json['TARIFA_DESCRIPCION'] as String?,
  cantidadDesde: (json['CANTIDAD_DESDE'] as num).toInt(),
  precio: (json['PRECIO'] as num).toDouble(),
  divisaId: json['DIVISA_ID'] as String,
  tipoPrecio: (json['TIPO_PRECIO'] as num).toInt(),
  visibleSN: json['VISIBLE_SN'] as String,
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$ArticuloPrecioTarifaDTOToJson(
  _ArticuloPrecioTarifaDTO instance,
) => <String, dynamic>{
  'ARTICULO_ID': instance.articuloId,
  'TARIFA_ID': instance.tarifaId,
  'TARIFA_DESCRIPCION': instance.tarifaDescripcion,
  'CANTIDAD_DESDE': instance.cantidadDesde,
  'PRECIO': instance.precio,
  'DIVISA_ID': instance.divisaId,
  'TIPO_PRECIO': instance.tipoPrecio,
  'VISIBLE_SN': instance.visibleSN,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
