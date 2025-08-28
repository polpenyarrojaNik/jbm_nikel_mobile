// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jbm_headers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JBMHeaders _$JBMHeadersFromJson(Map<String, dynamic> json) => _JBMHeaders(
  etag: json['etag'] as String?,
  maxPage: (json['maxPage'] as num?)?.toInt(),
  totalRows: (json['totalRows'] as num?)?.toInt(),
);

Map<String, dynamic> _$JBMHeadersToJson(_JBMHeaders instance) =>
    <String, dynamic>{
      'etag': instance.etag,
      'maxPage': instance.maxPage,
      'totalRows': instance.totalRows,
    };
