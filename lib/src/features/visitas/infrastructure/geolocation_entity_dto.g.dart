// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeolocationEntityDTO _$GeolocationEntityDTOFromJson(
  Map<String, dynamic> json,
) => _GeolocationEntityDTO(
  formattedAddress: json['formattedAddress'] as String,
  streetName: json['streetName'] as String,
  streetNumber: json['streetNumber'] as String?,
  city: json['city'] as String?,
  countryCode: json['countryCode'] as String,
  zipCode: json['zipcode'] as String,
  advinistrativeLevels:
      json['administrativeLevels'] == null
          ? null
          : AdministrativeLevelsDTO.fromJson(
            json['administrativeLevels'] as Map<String, dynamic>,
          ),
  extra:
      json['extra'] == null
          ? null
          : ExtraDTO.fromJson(json['extra'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GeolocationEntityDTOToJson(
  _GeolocationEntityDTO instance,
) => <String, dynamic>{
  'formattedAddress': instance.formattedAddress,
  'streetName': instance.streetName,
  'streetNumber': instance.streetNumber,
  'city': instance.city,
  'countryCode': instance.countryCode,
  'zipcode': instance.zipCode,
  'administrativeLevels': instance.advinistrativeLevels?.toJson(),
  'extra': instance.extra?.toJson(),
};

_AdministrativeLevelsDTO _$AdministrativeLevelsDTOFromJson(
  Map<String, dynamic> json,
) => _AdministrativeLevelsDTO(state: json['level2long'] as String?);

Map<String, dynamic> _$AdministrativeLevelsDTOToJson(
  _AdministrativeLevelsDTO instance,
) => <String, dynamic>{'level2long': instance.state};

_ExtraDTO _$ExtraDTOFromJson(Map<String, dynamic> json) =>
    _ExtraDTO(subpremise: json['subpremise'] as String?);

Map<String, dynamic> _$ExtraDTOToJson(_ExtraDTO instance) => <String, dynamic>{
  'subpremise': instance.subpremise,
};
