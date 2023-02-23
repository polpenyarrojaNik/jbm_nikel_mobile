// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteDireccionLocalDTO _$$_ClienteDireccionLocalDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ClienteDireccionLocalDTO(
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
      enviada: json['ENVIADA'] as String? ?? 'N',
      tratada: json['TRATADA'] as String? ?? 'N',
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ClienteDireccionLocalDTOToJson(
        _$_ClienteDireccionLocalDTO instance) =>
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
      'ENVIADA': instance.enviada,
      'TRATADA': instance.tratada,
      'DELETED': instance.deleted,
    };
