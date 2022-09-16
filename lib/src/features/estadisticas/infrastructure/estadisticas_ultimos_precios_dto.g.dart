// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estadisticas_ultimos_precios_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstadisticasUltimosPreciosDTO _$$_EstadisticasUltimosPreciosDTOFromJson(
        Map<String, dynamic> json) =>
    _$_EstadisticasUltimosPreciosDTO(
      clienteId: json['CLIENTE_ID'] as String,
      articuloId: json['ARTICULO_ID'] as String,
      fecha: DateTime.parse(json['FECHA'] as String),
      precioDivisa: (json['PRECIO_DIVISA'] as num).toDouble(),
      divisaId: json['DIVISA_ID'] as String,
      tipoPrecio: (json['TIPO_PRECIO'] as num).toDouble(),
      descuento1: (json['DESCUENTO1'] as num).toDouble(),
      descuento2: (json['DESCUENTO2'] as num).toDouble(),
      descuento3: (json['DESCUENTO3'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_EstadisticasUltimosPreciosDTOToJson(
        _$_EstadisticasUltimosPreciosDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'ARTICULO_ID': instance.articuloId,
      'FECHA': instance.fecha.toIso8601String(),
      'PRECIO_DIVISA': instance.precioDivisa,
      'DIVISA_ID': instance.divisaId,
      'TIPO_PRECIO': instance.tipoPrecio,
      'DESCUENTO1': instance.descuento1,
      'DESCUENTO2': instance.descuento2,
      'DESCUENTO3': instance.descuento3,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
