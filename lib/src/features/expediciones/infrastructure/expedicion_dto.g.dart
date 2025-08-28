// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expedicion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpedicionDTO _$ExpedicionDTOFromJson(Map<String, dynamic> json) =>
    _ExpedicionDTO(
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
      numLineas: (json['NUM_LINEAS'] as num).toInt(),
      estadoTrackingId: json['TRACKING_ESTADO'] as String,
      albaranId: json['ALBARAN_ID'] as String,
      trackId: json['TRACK_ID'] as String?,
      agencia: json['AGENCIA'] as String?,
      fechaAlbaran: DateTime.parse(json['FECHA_ALBARAN'] as String),
      oferta: json['OFERTA_SN'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$ExpedicionDTOToJson(_ExpedicionDTO instance) =>
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
      'NUM_LINEAS': instance.numLineas,
      'TRACKING_ESTADO': instance.estadoTrackingId,
      'ALBARAN_ID': instance.albaranId,
      'TRACK_ID': instance.trackId,
      'AGENCIA': instance.agencia,
      'FECHA_ALBARAN': instance.fechaAlbaran.toIso8601String(),
      'OFERTA_SN': instance.oferta,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
