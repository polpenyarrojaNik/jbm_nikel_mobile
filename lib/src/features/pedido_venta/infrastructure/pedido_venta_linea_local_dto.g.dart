// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_venta_linea_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PedidoVentaLineaLocalDTOImpl _$$PedidoVentaLineaLocalDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PedidoVentaLineaLocalDTOImpl(
      pedidoVentaAppId: json['PEDIDO_APP_ID'] as String,
      empresaId: json['EMPRESA_ID'] as String?,
      pedidoId: json['PEDIDO_ID'] as String?,
      pedidoVentaLineaAppId: json['LIN_APP_ID'] as String,
      articuloId: json['PRODUCTO_ID'] as String,
      articuloDescription: json['DENOMINACION'] as String,
      cantidad: json['CANTIDAD'] as int,
      precioDivisa: (json['PRECIO_DIVISA'] as num).toDouble(),
      tipoPrecio: json['TPRECIO'] as int,
      descuento1: (json['DTO1'] as num).toDouble(),
      descuento2: (json['DTO2'] as num).toDouble(),
      descuento3: (json['DTO3'] as num).toDouble(),
      descuentoProntoPago: (json['DTO_PP'] as num).toDouble(),
      stockDisponibleSN: json['STOCK_DISPONIBLE_SN'] as String,
      fechaDisponible: json['F_DISPONIBLE'] == null
          ? null
          : DateTime.parse(json['F_DISPONIBLE'] as String),
      iva: (json['IVA'] as num).toDouble(),
      pedidoLineaComponenteId: json['PEDIDO_LINEA_ID_COMPONENTE'] as String?,
    );

Map<String, dynamic> _$$PedidoVentaLineaLocalDTOImplToJson(
        _$PedidoVentaLineaLocalDTOImpl instance) =>
    <String, dynamic>{
      'PEDIDO_APP_ID': instance.pedidoVentaAppId,
      'EMPRESA_ID': instance.empresaId,
      'PEDIDO_ID': instance.pedidoId,
      'LIN_APP_ID': instance.pedidoVentaLineaAppId,
      'PRODUCTO_ID': instance.articuloId,
      'DENOMINACION': instance.articuloDescription,
      'CANTIDAD': instance.cantidad,
      'PRECIO_DIVISA': instance.precioDivisa,
      'TPRECIO': instance.tipoPrecio,
      'DTO1': instance.descuento1,
      'DTO2': instance.descuento2,
      'DTO3': instance.descuento3,
      'DTO_PP': instance.descuentoProntoPago,
      'STOCK_DISPONIBLE_SN': instance.stockDisponibleSN,
      'F_DISPONIBLE': instance.fechaDisponible?.toIso8601String(),
      'IVA': instance.iva,
      'PEDIDO_LINEA_ID_COMPONENTE': instance.pedidoLineaComponenteId,
    };
