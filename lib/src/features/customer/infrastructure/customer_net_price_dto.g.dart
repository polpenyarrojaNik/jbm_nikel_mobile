// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_net_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerNetPriceDTO _$$_CustomerNetPriceDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerNetPriceDTO(
      customerId: json['CLIENTE_ID'] as String,
      articleId: json['ARTICULO_ID'] as String,
      quantityFrom: (json['CANTIDAD_DESDE'] as num).toDouble(),
      price: (json['PRECIO'] as num).toDouble(),
      priceType: (json['TIPO_PRECIO'] as num?)?.toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_CustomerNetPriceDTOToJson(
        _$_CustomerNetPriceDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'ARTICULO_ID': instance.articleId,
      'CANTIDAD_DESDE': instance.quantityFrom,
      'PRECIO': instance.price,
      'TIPO_PRECIO': instance.priceType,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
