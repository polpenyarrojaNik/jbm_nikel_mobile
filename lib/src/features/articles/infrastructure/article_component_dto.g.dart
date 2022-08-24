// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_component_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleComponentDTO _$$_ArticleComponentDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleComponentDTO(
      articleId: json['ARTICULO_ID'] as String,
      id: json['ARTICULO_COMPONENTE_ID'] as String,
      quantity: (json['CANTIDAD'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticleComponentDTOToJson(
        _$_ArticleComponentDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articleId,
      'ARTICULO_COMPONENTE_ID': instance.id,
      'CANTIDAD': instance.quantity,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
