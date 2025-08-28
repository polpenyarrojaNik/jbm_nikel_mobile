// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_venta_linea_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PedidoVentaLineaDTO _$PedidoVentaLineaDTOFromJson(Map<String, dynamic> json) =>
    _PedidoVentaLineaDTO(
      empresaId: json['EMPRESA_ID'] as String,
      pedidoId: json['PEDIDO_ID'] as String,
      pedidoVentaLineaId: json['PEDIDO_LINEA_ID'] as String,
      articuloId: json['ARTICULO_ID'] as String,
      articuloDescription: json['ARTICULO_DESCRIPCION'] as String,
      cantidad: (json['CANTIDAD'] as num).toInt(),
      precioDivisa: (json['PRECIO_DIVISA'] as num).toDouble(),
      tipoPrecio: (json['TIPO_PRECIO'] as num).toInt(),
      descuento1: (json['DESCUENTO1'] as num).toDouble(),
      descuento2: (json['DESCUENTO2'] as num).toDouble(),
      descuento3: (json['DESCUENTO3'] as num).toDouble(),
      pedidoLineaIdComponente: json['PEDIDO_LINEA_ID_COMPONENTE'] as String?,
      importeLinea: (json['TOTAL_LINEA'] as num?)?.toDouble(),
      cantidadServida: (json['CANTIDAD_SERVIDA'] as num).toInt(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$PedidoVentaLineaDTOToJson(
  _PedidoVentaLineaDTO instance,
) => <String, dynamic>{
  'EMPRESA_ID': instance.empresaId,
  'PEDIDO_ID': instance.pedidoId,
  'PEDIDO_LINEA_ID': instance.pedidoVentaLineaId,
  'ARTICULO_ID': instance.articuloId,
  'ARTICULO_DESCRIPCION': instance.articuloDescription,
  'CANTIDAD': instance.cantidad,
  'PRECIO_DIVISA': instance.precioDivisa,
  'TIPO_PRECIO': instance.tipoPrecio,
  'DESCUENTO1': instance.descuento1,
  'DESCUENTO2': instance.descuento2,
  'DESCUENTO3': instance.descuento3,
  'PEDIDO_LINEA_ID_COMPONENTE': instance.pedidoLineaIdComponente,
  'TOTAL_LINEA': instance.importeLinea,
  'CANTIDAD_SERVIDA': instance.cantidadServida,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
