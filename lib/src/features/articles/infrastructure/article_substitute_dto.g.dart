// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_substitute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleSubstituteDTO _$$_ArticleSubstituteDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleSubstituteDTO(
      articleId: json['ARTICULO_ID'] as String,
      articleSubstituteId: json['ARTICULO_ID_SUSTITUTIVO'] as String,
      order: (json['ORDEN'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticleSubstituteDTOToJson(
        _$_ArticleSubstituteDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articleId,
      'ARTICULO_ID_SUSTITUTIVO': instance.articleSubstituteId,
      'ORDEN': instance.order,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
