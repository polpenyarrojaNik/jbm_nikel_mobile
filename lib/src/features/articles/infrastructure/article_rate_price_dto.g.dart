// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_rate_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleRatePriceDTO _$$_ArticleRatePriceDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleRatePriceDTO(
      articleId: json['ARTICULO_ID'] as String,
      rateId: json['TARIFA_ID'] as String,
      rateDescription: json['TARIFA_DESCRIPCION'] as String?,
      quantityFrom: (json['CANTIDAD_DESDE'] as num).toDouble(),
      price: (json['PRECIO'] as num).toDouble(),
      priceType: (json['TIPO_PRECIO'] as num?)?.toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticleRatePriceDTOToJson(
        _$_ArticleRatePriceDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articleId,
      'TARIFA_ID': instance.rateId,
      'TARIFA_DESCRIPCION': instance.rateDescription,
      'CANTIDAD_DESDE': instance.quantityFrom,
      'PRECIO': instance.price,
      'TIPO_PRECIO': instance.priceType,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
