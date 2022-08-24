// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_spare_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleSpareDTO _$$_ArticleSpareDTOFromJson(Map<String, dynamic> json) =>
    _$_ArticleSpareDTO(
      articleId: json['ARTICULO_ID'] as String,
      id: json['RECAMBIO_ID'] as String,
      description: json['DESCRIPCION'] as String,
      quantity: (json['CANTIDAD'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticleSpareDTOToJson(_$_ArticleSpareDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articleId,
      'RECAMBIO_ID': instance.id,
      'DESCRIPCION': instance.description,
      'CANTIDAD': instance.quantity,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
