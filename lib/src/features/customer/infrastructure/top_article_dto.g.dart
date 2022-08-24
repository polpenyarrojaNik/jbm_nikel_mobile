// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopArticleDTO _$$_TopArticleDTOFromJson(Map<String, dynamic> json) =>
    _$_TopArticleDTO(
      articleId: json['ARTICULO_ID'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_TopArticleDTOToJson(_$_TopArticleDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articleId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
