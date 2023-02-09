// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteContactoLocalDTO _$$_ClienteContactoLocalDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ClienteContactoLocalDTO(
      clienteId: json['CLIENTE_ID'] as String,
      contactoId: json['CONTACTO_ID'] as String,
      observaciones: json['OBSERVACIONES'] as String?,
      nombre: json['NOMBRE'] as String?,
      apellido1: json['APELLIDO1'] as String?,
      apellido2: json['APELLIDO2'] as String?,
      telefono1: json['TELEFONO1'] as String?,
      telefono2: json['TELEFONO2'] as String?,
      email: json['EMAIL'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      enviado: json['ENVIADO'] as String? ?? 'N',
      tratado: json['TRATADO'] as String? ?? 'N',
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ClienteContactoLocalDTOToJson(
        _$_ClienteContactoLocalDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'CONTACTO_ID': instance.contactoId,
      'OBSERVACIONES': instance.observaciones,
      'NOMBRE': instance.nombre,
      'APELLIDO1': instance.apellido1,
      'APELLIDO2': instance.apellido2,
      'TELEFONO1': instance.telefono1,
      'TELEFONO2': instance.telefono2,
      'EMAIL': instance.email,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'ENVIADO': instance.enviado,
      'TRATADO': instance.tratado,
      'DELETED': instance.deleted,
    };
