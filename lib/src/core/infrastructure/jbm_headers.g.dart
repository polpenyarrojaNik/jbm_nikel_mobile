// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jbm_headers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JBMHeadersImpl _$$JBMHeadersImplFromJson(Map<String, dynamic> json) =>
    _$JBMHeadersImpl(
      etag: json['etag'] as String?,
      maxPage: (json['maxPage'] as num?)?.toInt(),
      totalRows: (json['totalRows'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$JBMHeadersImplToJson(_$JBMHeadersImpl instance) =>
    <String, dynamic>{
      'etag': instance.etag,
      'maxPage': instance.maxPage,
      'totalRows': instance.totalRows,
    };
