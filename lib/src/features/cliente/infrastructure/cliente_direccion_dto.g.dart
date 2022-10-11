// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteDireccionDTO _$$_ClienteDireccionDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ClienteDireccionDTO(
      clienteId: json['CLIENTE_ID'] as String,
      direccionId: json['DIRECCION_ID'] as String,
      nombre: json['NOMBRE'] as String,
      direccion1: json['DIRECCION1'] as String?,
      direccion2: json['DIRECCION2'] as String?,
      codigoPostal: json['CODIGO_POSTAL'] as String?,
      poblacion: json['POBLACION'] as String?,
      provincia: json['PROVINCIA'] as String?,
      paisId: json['PAIS_ID'] as String?,
      latitud: (json['LATITUD'] as num).toDouble(),
      longitud: (json['LONGITUD'] as num).toDouble(),
      predeterminada: json['PREDETERMINADA_SN'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ClienteDireccionDTOToJson(
        _$_ClienteDireccionDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'DIRECCION_ID': instance.direccionId,
      'NOMBRE': instance.nombre,
      'DIRECCION1': instance.direccion1,
      'DIRECCION2': instance.direccion2,
      'CODIGO_POSTAL': instance.codigoPostal,
      'POBLACION': instance.poblacion,
      'PROVINCIA': instance.provincia,
      'PAIS_ID': instance.paisId,
      'LATITUD': instance.latitud,
      'LONGITUD': instance.longitud,
      'PREDETERMINADA_SN': instance.predeterminada,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
