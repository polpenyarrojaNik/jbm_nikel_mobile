// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteContactoDTO _$$_ClienteContactoDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ClienteContactoDTO(
      clienteId: json['CLIENTE_ID'] as String,
      contactoId: json['CONTACTOO_ID'] as String,
      observaciones: json['OBSERVACIONES'] as String?,
      nombre: json['NOMBRE'] as String?,
      apellido1: json['APELLIDO1'] as String?,
      apellido2: json['APELLIDO2'] as String?,
      telefono1: json['TELEFONO1'] as String?,
      telefono2: json['TELEFONO2'] as String?,
      email: json['EMAIL'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ClienteContactoDTOToJson(
        _$_ClienteContactoDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'CONTACTOO_ID': instance.contactoId,
      'OBSERVACIONES': instance.observaciones,
      'NOMBRE': instance.nombre,
      'APELLIDO1': instance.apellido1,
      'APELLIDO2': instance.apellido2,
      'TELEFONO1': instance.telefono1,
      'TELEFONO2': instance.telefono2,
      'EMAIL': instance.email,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
