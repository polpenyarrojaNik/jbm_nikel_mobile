// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesOrderStatusDTO _$$_SalesOrderStatusDTOFromJson(
        Map<String, dynamic> json) =>
    _$_SalesOrderStatusDTO(
      id: json['ESTADO_PEDIDO_ID'] as int,
      descriptionES: json['DESCRIPCION_ES'] as String,
      descriptionEN: json['DESCRIPCION_EN'] as String?,
      descriptionFR: json['DESCRIPCION_FR'] as String?,
      descriptionDE: json['DESCRIPCION_DE'] as String?,
      descriptionCA: json['DESCRIPCION_CA'] as String?,
      descriptionGB: json['DESCRIPCION_GB'] as String?,
      descriptionHU: json['DESCRIPCION_HU'] as String?,
      descriptionIT: json['DESCRIPCION_IT'] as String?,
      descriptionNL: json['DESCRIPCION_NL'] as String?,
      descriptionPT: json['DESCRIPCION_PT'] as String?,
      descriptionRO: json['DESCRIPCION_RO'] as String?,
      descriptionRU: json['DESCRIPCION_RU'] as String?,
      descriptionCN: json['DESCRIPCION_CN'] as String?,
      descriptionEL: json['DESCRIPCION_EL'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_SalesOrderStatusDTOToJson(
        _$_SalesOrderStatusDTO instance) =>
    <String, dynamic>{
      'ESTADO_PEDIDO_ID': instance.id,
      'DESCRIPCION_ES': instance.descriptionES,
      'DESCRIPCION_EN': instance.descriptionEN,
      'DESCRIPCION_FR': instance.descriptionFR,
      'DESCRIPCION_DE': instance.descriptionDE,
      'DESCRIPCION_CA': instance.descriptionCA,
      'DESCRIPCION_GB': instance.descriptionGB,
      'DESCRIPCION_HU': instance.descriptionHU,
      'DESCRIPCION_IT': instance.descriptionIT,
      'DESCRIPCION_NL': instance.descriptionNL,
      'DESCRIPCION_PT': instance.descriptionPT,
      'DESCRIPCION_RO': instance.descriptionRO,
      'DESCRIPCION_RU': instance.descriptionRU,
      'DESCRIPCION_CN': instance.descriptionCN,
      'DESCRIPCION_EL': instance.descriptionEL,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
