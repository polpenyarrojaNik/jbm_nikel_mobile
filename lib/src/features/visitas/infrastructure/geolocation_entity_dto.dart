// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';
import '../../../core/domain/provincia.dart';
import '../domain/geolocation_entity.dart';

part 'geolocation_entity_dto.freezed.dart';
part 'geolocation_entity_dto.g.dart';

@freezed
abstract class GeolocationEntityDTO with _$GeolocationEntityDTO {
  @JsonSerializable(explicitToJson: true)
  factory GeolocationEntityDTO({
    @JsonKey(name: 'formattedAddress') required String formattedAddress,
    @JsonKey(name: 'streetName') required String streetName,
    @JsonKey(name: 'streetNumber') required String? streetNumber,
    @JsonKey(name: 'city') required String? city,
    @JsonKey(name: 'countryCode') required String countryCode,
    @JsonKey(name: 'zipcode') required String zipCode,
    @JsonKey(name: 'administrativeLevels')
    required AdministrativeLevelsDTO? advinistrativeLevels,
    @JsonKey(name: 'extra') required ExtraDTO? extra,
  }) = _GeolocationEntityDTO;

  const GeolocationEntityDTO._();

  factory GeolocationEntityDTO.fromJson(Map<String, dynamic> json) =>
      _$GeolocationEntityDTOFromJson(json);

  GeolocationEntity toDomain(Provincia? state, Pais? country) {
    return GeolocationEntity(
        streetAddress1: formatAddress,
        streetAddress2: null,
        zipCode: zipCode,
        city: city,
        state: state,
        country: country);
  }

  String get formatAddress {
    if (extra != null && extra?.subpremise != null) {
      return '$streetName${streetNumber != null ? ' $streetNumber' : null}, ${extra?.subpremise}';
    }
    return '$streetName${streetNumber != null ? ' $streetNumber' : null}';
  }
}

@freezed
abstract class AdministrativeLevelsDTO with _$AdministrativeLevelsDTO {
  @JsonSerializable(explicitToJson: true)
  factory AdministrativeLevelsDTO(
          {@JsonKey(name: 'level2long') required String? state}) =
      _AdministrativeLevelsDTO;

  const AdministrativeLevelsDTO._();

  factory AdministrativeLevelsDTO.fromJson(Map<String, dynamic> json) =>
      _$AdministrativeLevelsDTOFromJson(json);
}

@freezed
abstract class ExtraDTO with _$ExtraDTO {
  @JsonSerializable(explicitToJson: true)
  factory ExtraDTO({
    @JsonKey(name: 'subpremise') required String? subpremise,
  }) = _ExtraDTO;

  const ExtraDTO._();

  factory ExtraDTO.fromJson(Map<String, dynamic> json) =>
      _$ExtraDTOFromJson(json);
}
