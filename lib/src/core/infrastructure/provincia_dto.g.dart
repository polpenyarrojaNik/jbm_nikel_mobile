// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProvinciaDTO _$$_ProvinciaDTOFromJson(Map<String, dynamic> json) =>
    _$_ProvinciaDTO(
      paisId: json['PAIS_ID'] as String?,
      regionId: json['REGION_ID'] as String?,
      provinciaId: json['PROVINCIA_ID'] as String,
      provincia: json['PROVINCIA'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ProvinciaDTOToJson(_$_ProvinciaDTO instance) =>
    <String, dynamic>{
      'PAIS_ID': instance.paisId,
      'REGION_ID': instance.regionId,
      'PROVINCIA_ID': instance.provinciaId,
      'PROVINCIA': instance.provincia,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
