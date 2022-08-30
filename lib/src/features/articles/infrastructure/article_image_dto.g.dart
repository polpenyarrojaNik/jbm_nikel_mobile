// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleImageDTO _$$_ArticleImageDTOFromJson(Map<String, dynamic> json) =>
    _$_ArticleImageDTO(
      articleId: json['ARTICULO_ID'] as String,
      fileName: json['NOMBRE_ARCHIVO'] as String,
      filePath: json['PATH_ARCHIVO'] as String?,
    );

Map<String, dynamic> _$$_ArticleImageDTOToJson(_$_ArticleImageDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articleId,
      'NOMBRE_ARCHIVO': instance.fileName,
      'PATH_ARCHIVO': instance.filePath,
    };
