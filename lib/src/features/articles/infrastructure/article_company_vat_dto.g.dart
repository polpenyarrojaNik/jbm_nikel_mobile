// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_company_vat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleCompanyVATDTO _$$_ArticleCompanyVATDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleCompanyVATDTO(
      articleId: json['ARTICULO_ID'] as String,
      companyId: json['EMPRESA_ID'] as String,
      vat: (json['IVA'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticleCompanyVATDTOToJson(
        _$_ArticleCompanyVATDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articleId,
      'EMPRESA_ID': instance.companyId,
      'IVA': instance.vat,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
