// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_venta_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PedidoVentaDTO _$$_PedidoVentaDTOFromJson(Map<String, dynamic> json) =>
    _$_PedidoVentaDTO(
      empresaId: json['EMPRESA_ID'] as String,
      pedidoVentaId: json['PEDIDO_ID'] as String,
      pedidoVentaDate: DateTime.parse(json['FECHA_PEDIDO'] as String),
      tipoVenta: json['TIPO_VENTA'] as String,
      clienteId: json['CLIENTE_ID'] as String?,
      direccionId: json['DIRECCION_ID'] as String?,
      nombreCliente: json['NOMBRE_CLIENTE'] as String?,
      direccionEntrga1: json['DIRECCION_ENVIO1'] as String?,
      direccionEntrga2: json['DIRECCION_ENVIO2'] as String?,
      codigoPostal: json['CODIGO_POSTAL'] as String?,
      poblacion: json['POBLACION'] as String?,
      provincia: json['PROVINCIA'] as String?,
      paisId: json['PAIS_ID'] as String?,
      divisaId: json['DIVISA_ID'] as String,
      baseImponible: (json['BASE_IMPONIBLE'] as num).toDouble(),
      importeIva: (json['IMPORTE_IVA'] as num).toDouble(),
      total: (json['TOTAL'] as num).toDouble(),
      pedidoVentaEstadoId: (json['ESTADO_PEDIDO_ID'] as num).toDouble(),
      oferta: json['OFERTA_SN'] as String,
      descuentoProntoPago: (json['DESCUENTO_PRONTO_PAGO'] as num).toDouble(),
      iva: (json['IVA'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$$_PedidoVentaDTOToJson(_$_PedidoVentaDTO instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.empresaId,
      'PEDIDO_ID': instance.pedidoVentaId,
      'FECHA_PEDIDO': instance.pedidoVentaDate.toIso8601String(),
      'TIPO_VENTA': instance.tipoVenta,
      'CLIENTE_ID': instance.clienteId,
      'DIRECCION_ID': instance.direccionId,
      'NOMBRE_CLIENTE': instance.nombreCliente,
      'DIRECCION_ENVIO1': instance.direccionEntrga1,
      'DIRECCION_ENVIO2': instance.direccionEntrga2,
      'CODIGO_POSTAL': instance.codigoPostal,
      'POBLACION': instance.poblacion,
      'PROVINCIA': instance.provincia,
      'PAIS_ID': instance.paisId,
      'DIVISA_ID': instance.divisaId,
      'BASE_IMPONIBLE': instance.baseImponible,
      'IMPORTE_IVA': instance.importeIva,
      'TOTAL': instance.total,
      'ESTADO_PEDIDO_ID': instance.pedidoVentaEstadoId,
      'OFERTA_SN': instance.oferta,
      'DESCUENTO_PRONTO_PAGO': instance.descuentoProntoPago,
      'IVA': instance.iva,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
