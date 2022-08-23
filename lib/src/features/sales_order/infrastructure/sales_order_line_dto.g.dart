// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_line_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesOrderLineDTO _$$_SalesOrderLineDTOFromJson(Map<String, dynamic> json) =>
    _$_SalesOrderLineDTO(
      companyId: json['EMPRESA_ID'] as String,
      salesOrderId: json['PEDIDO_ID'] as String,
      id: json['PEDIDO_LINEA_ID'] as String,
      articleId: json['ARTICULO_ID'] as String,
      articleDescription: json['ARTICULO_DESCRIPCION'] as String?,
      quantity: (json['CANTIDAD'] as num).toDouble(),
      divisaPrice: (json['PRECIO_DIVISA'] as num).toDouble(),
      priceType: (json['TIPO_PRECIO'] as num?)?.toDouble(),
      discount1: (json['DESCUENTO1'] as num).toDouble(),
      discount2: (json['DESCUENTO2'] as num).toDouble(),
      discount3: (json['DESCUENTO3'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$$_SalesOrderLineDTOToJson(
        _$_SalesOrderLineDTO instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.companyId,
      'PEDIDO_ID': instance.salesOrderId,
      'PEDIDO_LINEA_ID': instance.id,
      'ARTICULO_ID': instance.articleId,
      'ARTICULO_DESCRIPCION': instance.articleDescription,
      'CANTIDAD': instance.quantity,
      'PRECIO_DIVISA': instance.divisaPrice,
      'TIPO_PRECIO': instance.priceType,
      'DESCUENTO1': instance.discount1,
      'DESCUENTO2': instance.discount2,
      'DESCUENTO3': instance.discount3,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
