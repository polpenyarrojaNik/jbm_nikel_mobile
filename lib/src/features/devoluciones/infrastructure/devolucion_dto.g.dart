// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devolucion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DevolucionDTO _$DevolucionDTOFromJson(Map<String, dynamic> json) =>
    _DevolucionDTO(
      empresaId: json['EMPRESA_ID'] as String,
      id: json['DEVOLUCION_ID'] as String,
      fechaDevolucion: DateTime.parse(json['FECHA_DEVOLUCION'] as String),
      clienteId: json['CLIENTE_ID'] as String?,
      direccionId: json['DIRECCION_ID'] as String?,
      nombre: json['NOMBRE'] as String?,
      direccionRecogida1: json['DIRECCION_RECOGIDA1'] as String?,
      direccionRecogida2: json['DIRECCION_RECOGIDA2'] as String?,
      codigoPostal: json['CODIGO_POSTAL'] as String?,
      poblacion: json['POBLACION'] as String?,
      paisId: json['PAIS_ID'] as String?,
      almacenDestino: json['ALMACEN_DESTINO'] as String?,
      agenciaTransporte: json['AGENCIA_TRANSPORTE'] as String?,
      devolucionEstadoId: json['DEVOLUCION_ESTADO_ID'] as String,
      kilosDevolucion: (json['KILOS_DEVOLUCION'] as num).toDouble(),
      bultos: (json['BULTOS'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$DevolucionDTOToJson(_DevolucionDTO instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.empresaId,
      'DEVOLUCION_ID': instance.id,
      'FECHA_DEVOLUCION': instance.fechaDevolucion.toIso8601String(),
      'CLIENTE_ID': instance.clienteId,
      'DIRECCION_ID': instance.direccionId,
      'NOMBRE': instance.nombre,
      'DIRECCION_RECOGIDA1': instance.direccionRecogida1,
      'DIRECCION_RECOGIDA2': instance.direccionRecogida2,
      'CODIGO_POSTAL': instance.codigoPostal,
      'POBLACION': instance.poblacion,
      'PAIS_ID': instance.paisId,
      'ALMACEN_DESTINO': instance.almacenDestino,
      'AGENCIA_TRANSPORTE': instance.agenciaTransporte,
      'DEVOLUCION_ESTADO_ID': instance.devolucionEstadoId,
      'KILOS_DEVOLUCION': instance.kilosDevolucion,
      'BULTOS': instance.bultos,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
