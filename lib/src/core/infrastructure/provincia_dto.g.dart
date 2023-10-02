// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinciaDTOImpl _$$ProvinciaDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProvinciaDTOImpl(
      paisId: json['PAIS_ID'] as String?,
      regionId: json['REGION_ID'] as String?,
      provinciaId: json['PROVINCIA_ID'] as String,
      provincia: json['PROVINCIA'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$ProvinciaDTOImplToJson(_$ProvinciaDTOImpl instance) =>
    <String, dynamic>{
      'PAIS_ID': instance.paisId,
      'REGION_ID': instance.regionId,
      'PROVINCIA_ID': instance.provinciaId,
      'PROVINCIA': instance.provincia,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
