// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestionAddressDTO _$SuggestionAddressDTOFromJson(
  Map<String, dynamic> json,
) => _SuggestionAddressDTO(
  direccion: json['DIRECCION'] as String?,
  codigoPostal: json['CODIGO_POSTAL'] as String?,
  poblacion: json['POBLACION'] as String?,
  provinciaId: json['PROVINCIA_ID'] as String?,
  provinciaNombre: json['PROVINCIA_NOMBRE'] as String?,
  paisId: json['PAIS_ID'] as String?,
  formattedAddress: json['DIRECCION_FORMATEADA'] as String?,
  formattedAddressResult: json['FORMATTED_ADDRESS_RESULT'] as String?,
);

Map<String, dynamic> _$SuggestionAddressDTOToJson(
  _SuggestionAddressDTO instance,
) => <String, dynamic>{
  'DIRECCION': instance.direccion,
  'CODIGO_POSTAL': instance.codigoPostal,
  'POBLACION': instance.poblacion,
  'PROVINCIA_ID': instance.provinciaId,
  'PROVINCIA_NOMBRE': instance.provinciaNombre,
  'PAIS_ID': instance.paisId,
  'DIRECCION_FORMATEADA': instance.formattedAddress,
  'FORMATTED_ADDRESS_RESULT': instance.formattedAddressResult,
};
