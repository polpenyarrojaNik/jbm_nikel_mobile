// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeolocationEntityDTOImpl _$$GeolocationEntityDTOImplFromJson(
  Map<String, dynamic> json,
) => _$GeolocationEntityDTOImpl(
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

Map<String, dynamic> _$$GeolocationEntityDTOImplToJson(
  _$GeolocationEntityDTOImpl instance,
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

_$AdministrativeLevelsDTOImpl _$$AdministrativeLevelsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$AdministrativeLevelsDTOImpl(state: json['level2long'] as String?);

Map<String, dynamic> _$$AdministrativeLevelsDTOImplToJson(
  _$AdministrativeLevelsDTOImpl instance,
) => <String, dynamic>{'level2long': instance.state};

_$ExtraDTOImpl _$$ExtraDTOImplFromJson(Map<String, dynamic> json) =>
    _$ExtraDTOImpl(subpremise: json['subpremise'] as String?);

Map<String, dynamic> _$$ExtraDTOImplToJson(_$ExtraDTOImpl instance) =>
    <String, dynamic>{'subpremise': instance.subpremise};
