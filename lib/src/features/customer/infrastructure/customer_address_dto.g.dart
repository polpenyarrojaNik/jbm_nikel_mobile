// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerAddressDTO _$$_CustomerAddressDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerAddressDTO(
      customerId: json['CLIENTE_ID'] as String,
      addressId: json['DIRECCION_ID'] as String,
      name: json['NOMBRE'] as String?,
      address1: json['DIRECCION1'] as String?,
      address2: json['DIRECCION2'] as String?,
      zipCode: json['CODIGO_POSTAL'] as String?,
      city: json['POBLACION'] as String?,
      state: json['PROVINCIA'] as String?,
      countryId: json['PAIS_ID'] as String?,
      latitude: (json['LATITUD'] as num).toDouble(),
      longitude: (json['LONGITUD'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_CustomerAddressDTOToJson(
        _$_CustomerAddressDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'DIRECCION_ID': instance.addressId,
      'NOMBRE': instance.name,
      'DIRECCION1': instance.address1,
      'DIRECCION2': instance.address2,
      'CODIGO_POSTAL': instance.zipCode,
      'POBLACION': instance.city,
      'PROVINCIA': instance.state,
      'PAIS_ID': instance.countryId,
      'LATITUD': instance.latitude,
      'LONGITUD': instance.longitude,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
