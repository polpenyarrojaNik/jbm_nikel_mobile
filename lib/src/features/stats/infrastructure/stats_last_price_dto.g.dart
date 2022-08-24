// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_last_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsLastPriceDTO _$$_StatsLastPriceDTOFromJson(Map<String, dynamic> json) =>
    _$_StatsLastPriceDTO(
      customerId: json['CLIENTE_ID'] as String,
      articleId: json['ARTICULO_ID'] as String,
      date: DateTime.parse(json['FECHA'] as String),
      divisaPrice: (json['PRECIO_DIVISA'] as num).toDouble(),
      priceType: (json['TIPO_PRECIO'] as num).toDouble(),
      discount1: (json['DESCUENTO1'] as num).toDouble(),
      discount2: (json['DESCUENTO2'] as num).toDouble(),
      discount3: (json['DESCUENTO3'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_StatsLastPriceDTOToJson(
        _$_StatsLastPriceDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'ARTICULO_ID': instance.articleId,
      'FECHA': instance.date.toIso8601String(),
      'PRECIO_DIVISA': instance.divisaPrice,
      'TIPO_PRECIO': instance.priceType,
      'DESCUENTO1': instance.discount1,
      'DESCUENTO2': instance.discount2,
      'DESCUENTO3': instance.discount3,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
