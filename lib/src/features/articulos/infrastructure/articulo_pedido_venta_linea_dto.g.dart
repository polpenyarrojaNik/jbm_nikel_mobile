// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_pedido_venta_linea_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticuloPedidoVentaLineaDTOImpl _$$ArticuloPedidoVentaLineaDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticuloPedidoVentaLineaDTOImpl(
      empresaId: json['EMPRESA_ID'] as String,
      pedidoVentaId: json['PEDIDO_ID'] as String,
      id: json['PEDIDO_LINEA_ID'] as String,
      articuloId: json['ARTICULO_ID'] as String,
      articuloDescription: json['ARTICULO_DESCRIPCION'] as String,
      clienteId: json['CLIENTE_ID'] as String,
      nombreCliente: json['NOMRE_CLIENTE'] as String,
      cantidad: (json['CANTIDAD'] as num).toInt(),
      precioDivisa: (json['PRECIO_DIVISA'] as num).toDouble(),
      tipoPrecio: (json['TIPO_PRECIO'] as num).toInt(),
      descuento1: (json['DESCUENTO1'] as num).toDouble(),
      descuento2: (json['DESCUENTO2'] as num).toDouble(),
      descuento3: (json['DESCUENTO3'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$$ArticuloPedidoVentaLineaDTOImplToJson(
        _$ArticuloPedidoVentaLineaDTOImpl instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.empresaId,
      'PEDIDO_ID': instance.pedidoVentaId,
      'PEDIDO_LINEA_ID': instance.id,
      'ARTICULO_ID': instance.articuloId,
      'ARTICULO_DESCRIPCION': instance.articuloDescription,
      'CLIENTE_ID': instance.clienteId,
      'NOMRE_CLIENTE': instance.nombreCliente,
      'CANTIDAD': instance.cantidad,
      'PRECIO_DIVISA': instance.precioDivisa,
      'TIPO_PRECIO': instance.tipoPrecio,
      'DESCUENTO1': instance.descuento1,
      'DESCUENTO2': instance.descuento2,
      'DESCUENTO3': instance.descuento3,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
