// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/pais.dart';
import '../domain/provincia.dart';
import '../domain/suggestion_address.dart';

part 'suggestion_address_dto.freezed.dart';
part 'suggestion_address_dto.g.dart';

@freezed
abstract class SuggestionAddressDTO with _$SuggestionAddressDTO {
  @JsonSerializable(explicitToJson: true)
  factory SuggestionAddressDTO({
    @JsonKey(name: 'DIRECCION') String? direccion,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA_ID') String? provinciaId,
    @JsonKey(name: 'PROVINCIA_NOMBRE') String? provinciaNombre,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'DIRECCION_FORMATEADA') String? formattedAddress,
    @JsonKey(name: 'FORMATTED_ADDRESS_RESULT') String? formattedAddressResult,
  }) = _SuggestionAddressDTO;

  const SuggestionAddressDTO._();

  factory SuggestionAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$SuggestionAddressDTOFromJson(json);

  SuggestionAddress toDomain(Provincia? provincia, Pais? pais) {
    return SuggestionAddress(
      direccion: direccion,
      codigoPostal: codigoPostal,
      poblacion: poblacion,
      provincia: provincia,
      pais: pais,
      formattedAddress: formattedAddress,
      formattedAddressResult: formattedAddressResult,
    );
  }
}
