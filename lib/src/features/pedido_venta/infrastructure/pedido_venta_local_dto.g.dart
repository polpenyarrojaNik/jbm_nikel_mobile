// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_venta_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PedidoVentaLocalDTO _$$_PedidoVentaLocalDTOFromJson(
        Map<String, dynamic> json) =>
    _$_PedidoVentaLocalDTO(
      usuarioId: json['USUARIO_ID'] as String?,
      pedidoVentaAppId: json['PEDIDO_APP_ID'] as String,
      empresaId: json['EMPRESA_ID'] as String,
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
      fechaAlta: DateTime.parse(json['FECHA_ALTA'] as String),
      iva: (json['IVA'] as num).toDouble(),
      dtoBonificacion: (json['DTO_BONIFICACION'] as num).toDouble(),
      enviada: json['ENVIADA'] as String,
      tratada: json['TRATADA'] as String,
      errorSyncMessage: json['ERROR_SYNC'] as String?,
    );

Map<String, dynamic> _$$_PedidoVentaLocalDTOToJson(
        _$_PedidoVentaLocalDTO instance) =>
    <String, dynamic>{
      'USUARIO_ID': instance.usuarioId,
      'PEDIDO_APP_ID': instance.pedidoVentaAppId,
      'EMPRESA_ID': instance.empresaId,
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
      'FECHA_ALTA': instance.fechaAlta.toIso8601String(),
      'IVA': instance.iva,
      'DTO_BONIFICACION': instance.dtoBonificacion,
      'ENVIADA': instance.enviada,
      'TRATADA': instance.tratada,
      'ERROR_SYNC': instance.errorSyncMessage,
    };
