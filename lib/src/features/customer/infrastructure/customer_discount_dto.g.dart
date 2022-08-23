// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_discount_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDiscountDTO _$$_CustomerDiscountDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerDiscountDTO(
      customerId: json['CLIENTE_ID'] as String,
      articleId: json['ARTICULO_ID'] as String,
      familyId: json['FAMILIA_ID'] as String,
      subfamilyId: json['SUBFAMILIA_ID'] as String,
      quantityFrom: (json['CANTIDAD_DESDE'] as num).toDouble(),
      discount: (json['DESCUENTO'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_CustomerDiscountDTOToJson(
        _$_CustomerDiscountDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'ARTICULO_ID': instance.articleId,
      'FAMILIA_ID': instance.familyId,
      'SUBFAMILIA_ID': instance.subfamilyId,
      'CANTIDAD_DESDE': instance.quantityFrom,
      'DESCUENTO': instance.discount,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
