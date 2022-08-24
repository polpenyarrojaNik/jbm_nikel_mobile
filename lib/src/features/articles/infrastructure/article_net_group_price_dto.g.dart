// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_net_group_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleNetGroupPriceDTO _$$_ArticleNetGroupPriceDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleNetGroupPriceDTO(
      articleId: json['ARTICULO_ID'] as String,
      netGroupId: json['GRUPO_NETO_ID'] as String,
      netGroupDescription: json['GRUPO_NETO_DESCRIPCION'] as String?,
      quantityFrom: (json['CANTIDAD_DESDE'] as num).toDouble(),
      price: (json['PRECIO'] as num).toDouble(),
      priceType: (json['TIPO_PRECIO'] as num?)?.toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticleNetGroupPriceDTOToJson(
        _$_ArticleNetGroupPriceDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articleId,
      'GRUPO_NETO_ID': instance.netGroupId,
      'GRUPO_NETO_DESCRIPCION': instance.netGroupDescription,
      'CANTIDAD_DESDE': instance.quantityFrom,
      'PRECIO': instance.price,
      'TIPO_PRECIO': instance.priceType,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
