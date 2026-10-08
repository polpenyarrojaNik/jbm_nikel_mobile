// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/business_card_data.dart';
import '../domain/pais.dart';
import '../domain/provincia.dart';

part 'business_card_data_dto.freezed.dart';
part 'business_card_data_dto.g.dart';

@freezed
abstract class BusinessCardDataDTO with _$BusinessCardDataDTO {
  factory BusinessCardDataDTO({
    @JsonKey(name: 'CONTACTO_NOMBRE') required String? contactName,
    @JsonKey(name: 'CONTACTO_APELLIDOS') required String? contactSurname,
    @JsonKey(name: 'TELEFONO') required String? phone,
    @JsonKey(name: 'CORREO_ELECTRONICO') required String? email,
    @JsonKey(name: 'DIRECCION1') required String? streetAddress,
    @JsonKey(name: 'CODIGO_POSTAL') required String? zipCode,
    @JsonKey(name: 'POBLACION') required String? city,
    @JsonKey(name: 'PROVINCIA') required String? province,
    @JsonKey(name: 'PAIS_ID') required String? countryId,
    @JsonKey(name: 'EMPRESA_NOMBRE') required String? companyName,
  }) = _BusinessCardDataDTO;

  const BusinessCardDataDTO._();

  factory BusinessCardDataDTO.fromJson(Map<String, dynamic> json) =>
      _$BusinessCardDataDTOFromJson(json);

  BusinessCardData toDomain({Pais? pais, Provincia? provincia}) {
    return BusinessCardData(
      contactName: contactName,
      contactSurname: contactSurname,
      phone: phone,
      email: email,
      streetAddress: streetAddress,
      zipCode: zipCode,
      city: city,
      province: provincia,
      country: pais,
      companyName: companyName,
    );
  }
}
