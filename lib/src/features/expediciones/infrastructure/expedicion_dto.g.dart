// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expedicion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpedicionDTOImpl _$$ExpedicionDTOImplFromJson(Map<String, dynamic> json) =>
    _$ExpedicionDTOImpl(
      empresaId: json['EMPRESA_ID'] as String,
      pedidoVentaId: json['PEDIDO_ID'] as String,
      pedidoVentaDate: DateTime.parse(json['FECHA_PEDIDO'] as String),
      clienteId: json['CLIENTE_ID'] as String,
      direccionId: json['DIRECCION_ID'] as String?,
      nombreCliente: json['NOMRE_CLIENTE'] as String,
      codigoPostal: json['CODIGO_POSTAL'] as String?,
      poblacion: json['POBLACION'] as String?,
      provincia: json['PROVINCIA'] as String?,
      paisId: json['PAIS_ID'] as String?,
      divisaId: json['DIVISA_ID'] as String,
      baseImponible: (json['BASE_IMPONIBLE'] as num).toDouble(),
      pedidoVentaEstadoId: (json['ESTADO_PEDIDO_ID'] as num).toInt(),
      estadoTrackingId: json['TRACKING_ESTADO'] as String,
      trackId: json['TRACK_ID'] as String?,
      oferta: json['OFERTA_SN'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$$ExpedicionDTOImplToJson(_$ExpedicionDTOImpl instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.empresaId,
      'PEDIDO_ID': instance.pedidoVentaId,
      'FECHA_PEDIDO': instance.pedidoVentaDate.toIso8601String(),
      'CLIENTE_ID': instance.clienteId,
      'DIRECCION_ID': instance.direccionId,
      'NOMRE_CLIENTE': instance.nombreCliente,
      'CODIGO_POSTAL': instance.codigoPostal,
      'POBLACION': instance.poblacion,
      'PROVINCIA': instance.provincia,
      'PAIS_ID': instance.paisId,
      'DIVISA_ID': instance.divisaId,
      'BASE_IMPONIBLE': instance.baseImponible,
      'ESTADO_PEDIDO_ID': instance.pedidoVentaEstadoId,
      'TRACKING_ESTADO': instance.estadoTrackingId,
      'TRACK_ID': instance.trackId,
      'OFERTA_SN': instance.oferta,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
