// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_imp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClienteDireccionImpDTOImpl _$$ClienteDireccionImpDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ClienteDireccionImpDTOImpl(
      id: json['GUID'] as String,
      fecha: DateTime.parse(json['FECHA'] as String),
      usuarioId: json['USUARIO_ID'] as String,
      clienteId: json['CLIENTE_ID'] as String,
      direccionId: json['DIRECCION_ID'] as String?,
      nombre: json['NOMBRE'] as String?,
      direccion1: json['DIRECCION1'] as String?,
      direccion2: json['DIRECCION2'] as String?,
      codigoPostal: json['CODIGO_POSTAL'] as String?,
      poblacion: json['POBLACION'] as String?,
      provincia: json['PROVINCIA'] as String?,
      paisId: json['PAIS_ID'] as String?,
      enviada: json['ENVIADA'] as String? ?? 'N',
      borrar: json['BORRAR'] as String? ?? 'N',
    );

Map<String, dynamic> _$$ClienteDireccionImpDTOImplToJson(
        _$ClienteDireccionImpDTOImpl instance) =>
    <String, dynamic>{
      'GUID': instance.id,
      'FECHA': instance.fecha.toIso8601String(),
      'USUARIO_ID': instance.usuarioId,
      'CLIENTE_ID': instance.clienteId,
      'DIRECCION_ID': instance.direccionId,
      'NOMBRE': instance.nombre,
      'DIRECCION1': instance.direccion1,
      'DIRECCION2': instance.direccion2,
      'CODIGO_POSTAL': instance.codigoPostal,
      'POBLACION': instance.poblacion,
      'PROVINCIA': instance.provincia,
      'PAIS_ID': instance.paisId,
      'ENVIADA': instance.enviada,
      'BORRAR': instance.borrar,
    };
