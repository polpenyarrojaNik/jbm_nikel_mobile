// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesOrderDTO _$$_SalesOrderDTOFromJson(Map<String, dynamic> json) =>
    _$_SalesOrderDTO(
      companyId: json['EMPRESA_ID'] as String,
      salesOrderId: json['PEDIDO_ID'] as String,
      salesOrderDate: DateTime.parse(json['FECHA_PEDIDO'] as String),
      salesType: json['TIPO_VENTA'] as String,
      customerId: json['CLIENTE_ID'] as String?,
      addressId: json['DIRECCION_ID'] as String?,
      customerName: json['NOMBRE_CLIENTE'] as String?,
      shippingAddress1: json['DIRECCION_ENVIO1'] as String?,
      shippingAddress2: json['DIRECCION_ENVIO2'] as String?,
      zipCode: json['CODIGO_POSTAL'] as String?,
      city: json['POBLACION'] as String?,
      state: json['PROVINCIA'] as String?,
      countryId: json['PAIS_ID'] as String?,
      divisaId: json['DIVISA_ID'] as String,
      taxBase: (json['BASE_IMPONIBLE'] as num).toDouble(),
      ivaAmount: (json['IMPORTE_IVA'] as num).toDouble(),
      total: (json['TOTAL'] as num).toDouble(),
      salesOrderStatusId: json['ESTADO_PEDIDO_ID'] as int,
      isOffer: json['OFERTA_SN'] as String,
      promptPaymentDiscount: (json['DESCUENTO_PRONTO_PAGO'] as num).toDouble(),
      iva: (json['IVA'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$$_SalesOrderDTOToJson(_$_SalesOrderDTO instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.companyId,
      'PEDIDO_ID': instance.salesOrderId,
      'FECHA_PEDIDO': instance.salesOrderDate.toIso8601String(),
      'TIPO_VENTA': instance.salesType,
      'CLIENTE_ID': instance.customerId,
      'DIRECCION_ID': instance.addressId,
      'NOMBRE_CLIENTE': instance.customerName,
      'DIRECCION_ENVIO1': instance.shippingAddress1,
      'DIRECCION_ENVIO2': instance.shippingAddress2,
      'CODIGO_POSTAL': instance.zipCode,
      'POBLACION': instance.city,
      'PROVINCIA': instance.state,
      'PAIS_ID': instance.countryId,
      'DIVISA_ID': instance.divisaId,
      'BASE_IMPONIBLE': instance.taxBase,
      'IMPORTE_IVA': instance.ivaAmount,
      'TOTAL': instance.total,
      'ESTADO_PEDIDO_ID': instance.salesOrderStatusId,
      'OFERTA_SN': instance.isOffer,
      'DESCUENTO_PRONTO_PAGO': instance.promptPaymentDiscount,
      'IVA': instance.iva,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
