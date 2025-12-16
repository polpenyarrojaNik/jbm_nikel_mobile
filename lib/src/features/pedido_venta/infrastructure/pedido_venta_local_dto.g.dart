// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_venta_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PedidoVentaLocalDTO _$PedidoVentaLocalDTOFromJson(Map<String, dynamic> json) =>
    _PedidoVentaLocalDTO(
      usuarioId: json['USUARIO_ID'] as String?,
      pedidoId: json['PEDIDO_ID'] as String?,
      empresaId: json['EMPRESA_ID'] as String?,
      pedidoVentaAppId: json['PEDIDO_APP_ID'] as String,
      clienteId: json['CLIENTE_ID'] as String,
      nombreCliente: json['NOMBRE_CLIENTE'] as String,
      direccionId: json['DIRECCION_ID'] as String?,
      direccion1: json['DIRECCION1'] as String?,
      direccion2: json['DIRECCION2'] as String?,
      codigoPostal: json['CODIGO_POSTAL'] as String?,
      poblacion: json['POBLACION'] as String?,
      provincia: json['PROVINCIA'] as String?,
      paisId: json['PAIS_ID'] as String?,
      divisaId: json['DIVISA_ID'] as String?,
      pedidoCliente: json['PEDIDO_CLIENTE'] as String?,
      observaciones: json['OBSERVACIONES'] as String?,
      oferta: json['OFERTA_SN'] as String,
      ofertaFechaHasta: json['OFERTA_FECHA_HASTA'] == null
          ? null
          : DateTime.parse(json['OFERTA_FECHA_HASTA'] as String),
      fechaAlta: DateTime.parse(json['FECHA_ALTA'] as String),
      iva: (json['IVA'] as num).toDouble(),
      dtoBonificacion: (json['DTO_BONIFICACION'] as num).toDouble(),
      enviada: json['ENVIADA'] as String,
      tratada: json['TRATADA'] as String,
      borrador: json['BORRADOR'] as String,
      errorSyncMessage: json['ERROR_SYNC'] as String?,
    );

Map<String, dynamic> _$PedidoVentaLocalDTOToJson(
  _PedidoVentaLocalDTO instance,
) => <String, dynamic>{
  'USUARIO_ID': instance.usuarioId,
  'PEDIDO_ID': instance.pedidoId,
  'EMPRESA_ID': instance.empresaId,
  'PEDIDO_APP_ID': instance.pedidoVentaAppId,
  'CLIENTE_ID': instance.clienteId,
  'NOMBRE_CLIENTE': instance.nombreCliente,
  'DIRECCION_ID': instance.direccionId,
  'DIRECCION1': instance.direccion1,
  'DIRECCION2': instance.direccion2,
  'CODIGO_POSTAL': instance.codigoPostal,
  'POBLACION': instance.poblacion,
  'PROVINCIA': instance.provincia,
  'PAIS_ID': instance.paisId,
  'DIVISA_ID': instance.divisaId,
  'PEDIDO_CLIENTE': instance.pedidoCliente,
  'OBSERVACIONES': instance.observaciones,
  'OFERTA_SN': instance.oferta,
  'OFERTA_FECHA_HASTA': instance.ofertaFechaHasta?.toIso8601String(),
  'FECHA_ALTA': instance.fechaAlta.toIso8601String(),
  'IVA': instance.iva,
  'DTO_BONIFICACION': instance.dtoBonificacion,
  'ENVIADA': instance.enviada,
  'TRATADA': instance.tratada,
  'BORRADOR': instance.borrador,
  'ERROR_SYNC': instance.errorSyncMessage,
};
