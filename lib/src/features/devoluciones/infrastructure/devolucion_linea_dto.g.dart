// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devolucion_linea_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DevolucionLineaDTO _$DevolucionLineaDTOFromJson(Map<String, dynamic> json) =>
    _DevolucionLineaDTO(
      empresaId: json['EMPRESA_ID'] as String,
      devolucionId: json['DEVOLUCION_ID'] as String,
      articuloId: json['ARTICULO_ID'] as String,
      articuloDescription: json['ARTICULO_DESCRIPCION'] as String,
      cantidadDevolucion: (json['CANTIDAD_DEVOLUCION'] as num?)?.toDouble(),
      cantidadRecibida: (json['CANTIDAD_RECIBIDA'] as num?)?.toDouble(),
      devolucionMotivoId: json['DEVOLUCION_MOTIVO_ID'] as String?,
      devolucionEstadoId: json['DEVOLUCION_ESTADO_ID'] as String?,
      observaciones: json['OBSERVACIONES'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$DevolucionLineaDTOToJson(_DevolucionLineaDTO instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.empresaId,
      'DEVOLUCION_ID': instance.devolucionId,
      'ARTICULO_ID': instance.articuloId,
      'ARTICULO_DESCRIPCION': instance.articuloDescription,
      'CANTIDAD_DEVOLUCION': instance.cantidadDevolucion,
      'CANTIDAD_RECIBIDA': instance.cantidadRecibida,
      'DEVOLUCION_MOTIVO_ID': instance.devolucionMotivoId,
      'DEVOLUCION_ESTADO_ID': instance.devolucionEstadoId,
      'OBSERVACIONES': instance.observaciones,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
