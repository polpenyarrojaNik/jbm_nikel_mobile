// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_imp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteContactoImpDTO _$$_ClienteContactoImpDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ClienteContactoImpDTO(
      id: json['GUID'] as String,
      fecha: DateTime.parse(json['FECHA'] as String),
      usuarioId: json['USUARIO_ID'] as String,
      clienteId: json['CLIENTE_ID'] as String,
      contactoId: json['CONTACTO_ID'] as String?,
      observaciones: json['OBSERVACIONES'] as String?,
      nombre: json['NOMBRE'] as String?,
      apellido1: json['APELLIDO1'] as String?,
      apellido2: json['APELLIDO2'] as String?,
      telefono1: json['TELEFONO1'] as String?,
      telefono2: json['TELEFONO2'] as String?,
      email: json['EMAIL'] as String?,
      enviado: json['ENVIADO'] as String? ?? 'N',
      borrar: json['BORRAR'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ClienteContactoImpDTOToJson(
        _$_ClienteContactoImpDTO instance) =>
    <String, dynamic>{
      'GUID': instance.id,
      'FECHA': instance.fecha.toIso8601String(),
      'USUARIO_ID': instance.usuarioId,
      'CLIENTE_ID': instance.clienteId,
      'CONTACTO_ID': instance.contactoId,
      'OBSERVACIONES': instance.observaciones,
      'NOMBRE': instance.nombre,
      'APELLIDO1': instance.apellido1,
      'APELLIDO2': instance.apellido2,
      'TELEFONO1': instance.telefono1,
      'TELEFONO2': instance.telefono2,
      'EMAIL': instance.email,
      'ENVIADO': instance.enviado,
      'BORRAR': instance.borrar,
    };
