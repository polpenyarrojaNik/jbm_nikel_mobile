// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_customer_user_sales_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsCustomerUserSalesDTO _$$_StatsCustomerUserSalesDTOFromJson(
        Map<String, dynamic> json) =>
    _$_StatsCustomerUserSalesDTO(
      year: (json['ANYO'] as num).toDouble(),
      month: (json['MES'] as num).toDouble(),
      customerId: json['CLIENTE_ID'] as String,
      articleId: json['ARTICULO_ID'] as String,
      units: (json['UNIDADES'] as num?)?.toDouble(),
      amount: (json['IMPORTE'] as num?)?.toDouble(),
      cost: (json['COSTE'] as num?)?.toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_StatsCustomerUserSalesDTOToJson(
        _$_StatsCustomerUserSalesDTO instance) =>
    <String, dynamic>{
      'ANYO': instance.year,
      'MES': instance.month,
      'CLIENTE_ID': instance.customerId,
      'ARTICULO_ID': instance.articleId,
      'UNIDADES': instance.units,
      'IMPORTE': instance.amount,
      'COSTE': instance.cost,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
