// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_pago_pendiente_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientePagoPendienteDTOImpl _$$ClientePagoPendienteDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ClientePagoPendienteDTOImpl(
  clienteId: json['CLIENTE_ID'] as String,
  efectoId: json['EFECTO_ID'] as String,
  facutaId: json['FACTURA_ID'] as String?,
  fechaFactura:
      json['FECHA_FACUTRA'] == null
          ? null
          : DateTime.parse(json['FECHA_FACUTRA'] as String),
  fechaExpiracion:
      json['FECHA_VENCIMIENTO'] == null
          ? null
          : DateTime.parse(json['FECHA_VENCIMIENTO'] as String),
  metodoDeCobroId: json['METODO_COBRO_ID'] as String?,
  estadoCobroId: json['ESTADO_COBRO_ID'] as String?,
  importe: (json['IMPORTE'] as num?)?.toDouble(),
  fechaExpiracionInicial:
      json['FECHA_VENCIMIENTO_INICIAL'] == null
          ? null
          : DateTime.parse(json['FECHA_VENCIMIENTO_INICIAL'] as String),
  vencidoJBM: json['VENCIDO_JBM'] as String?,
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$$ClientePagoPendienteDTOImplToJson(
  _$ClientePagoPendienteDTOImpl instance,
) => <String, dynamic>{
  'CLIENTE_ID': instance.clienteId,
  'EFECTO_ID': instance.efectoId,
  'FACTURA_ID': instance.facutaId,
  'FECHA_FACUTRA': instance.fechaFactura?.toIso8601String(),
  'FECHA_VENCIMIENTO': instance.fechaExpiracion?.toIso8601String(),
  'METODO_COBRO_ID': instance.metodoDeCobroId,
  'ESTADO_COBRO_ID': instance.estadoCobroId,
  'IMPORTE': instance.importe,
  'FECHA_VENCIMIENTO_INICIAL':
      instance.fechaExpiracionInicial?.toIso8601String(),
  'VENCIDO_JBM': instance.vencidoJBM,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
