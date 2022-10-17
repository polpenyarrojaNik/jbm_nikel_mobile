// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_precio_tarifa_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticuloPrecioTarifaDTO _$$_ArticuloPrecioTarifaDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticuloPrecioTarifaDTO(
      articuloId: json['ARTICULO_ID'] as String,
      tarifaId: json['TARIFA_ID'] as String,
      tarifaDescripcion: json['TARIFA_DESCRIPCION'] as String?,
      cantidadDesde: json['CANTIDAD_DESDE'] as int,
      precio: (json['PRECIO'] as num).toDouble(),
      divisaId: json['DIVISA_ID'] as String,
      tipoPrecio: json['TIPO_PRECIO'] as int,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticuloPrecioTarifaDTOToJson(
        _$_ArticuloPrecioTarifaDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'TARIFA_ID': instance.tarifaId,
      'TARIFA_DESCRIPCION': instance.tarifaDescripcion,
      'CANTIDAD_DESDE': instance.cantidadDesde,
      'PRECIO': instance.precio,
      'DIVISA_ID': instance.divisaId,
      'TIPO_PRECIO': instance.tipoPrecio,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
