// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleDocumentDTO _$$_ArticleDocumentDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleDocumentDTO(
      articleId: json['ARTICULO_ID'] as String,
      fileName: json['NOMBRE_ARCHIVO'] as String?,
      filePath: json['PATH_ARCHIVO'] as String?,
      languageId: json['IDIOMA_ID'] as String,
      remarks: json['OBSERVACIONES'] as String?,
    );

Map<String, dynamic> _$$_ArticleDocumentDTOToJson(
        _$_ArticleDocumentDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articleId,
      'NOMBRE_ARCHIVO': instance.fileName,
      'PATH_ARCHIVO': instance.filePath,
      'IDIOMA_ID': instance.languageId,
      'OBSERVACIONES': instance.remarks,
    };
