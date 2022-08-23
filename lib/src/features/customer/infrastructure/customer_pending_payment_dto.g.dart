// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_pending_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerPendingPaymentDTO _$$_CustomerPendingPaymentDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerPendingPaymentDTO(
      customerId: json['CLIENTE_ID'] as String,
      effectId: json['EFECTO_ID'] as String,
      invoiceId: json['FACTURA_ID'] as String?,
      invoiceDate: json['FECHA_FACUTRA'] == null
          ? null
          : DateTime.parse(json['FECHA_FACUTRA'] as String),
      expirationDate: json['FECHA_VENCIMIENTO'] == null
          ? null
          : DateTime.parse(json['FECHA_VENCIMIENTO'] as String),
      collectionMethodId: json['METODO_COBRO_ID'] as String?,
      collectionStatusId: json['ESTADO_COBRO_ID'] as String?,
      amount: (json['IMPORTE'] as num?)?.toDouble(),
      initialExpirationDate: json['FECHA_VENCIMIENTO_INICIAL'] == null
          ? null
          : DateTime.parse(json['FECHA_VENCIMIENTO_INICIAL'] as String),
      expirationJBM: json['VENCIDO_JBM'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_CustomerPendingPaymentDTOToJson(
        _$_CustomerPendingPaymentDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'EFECTO_ID': instance.effectId,
      'FACTURA_ID': instance.invoiceId,
      'FECHA_FACUTRA': instance.invoiceDate?.toIso8601String(),
      'FECHA_VENCIMIENTO': instance.expirationDate?.toIso8601String(),
      'METODO_COBRO_ID': instance.collectionMethodId,
      'ESTADO_COBRO_ID': instance.collectionStatusId,
      'IMPORTE': instance.amount,
      'FECHA_VENCIMIENTO_INICIAL':
          instance.initialExpirationDate?.toIso8601String(),
      'VENCIDO_JBM': instance.expirationJBM,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
