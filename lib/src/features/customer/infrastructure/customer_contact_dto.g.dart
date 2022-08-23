// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_contact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerContactDTO _$$_CustomerContactDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerContactDTO(
      customerId: json['CLIENTE_ID'] as String,
      contactId: json['CONTACTO_ID'] as String,
      remarks: json['OBSERVACIONES'] as String?,
      name: json['NOMBRE'] as String?,
      lastName1: json['APELLIDO1'] as String?,
      lastName2: json['APELLIDO2'] as String?,
      phone1: json['TELEFONO1'] as String?,
      phone2: json['TELEFONO2'] as String?,
      email: json['EMAIL'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_CustomerContactDTOToJson(
        _$_CustomerContactDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'CONTACTO_ID': instance.contactId,
      'OBSERVACIONES': instance.remarks,
      'NOMBRE': instance.name,
      'APELLIDO1': instance.lastName1,
      'APELLIDO2': instance.lastName2,
      'TELEFONO1': instance.phone1,
      'TELEFONO2': instance.phone2,
      'EMAIL': instance.email,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
