// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_rappel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerRappelDTO _$$_CustomerRappelDTOFromJson(Map<String, dynamic> json) =>
    _$_CustomerRappelDTO(
      customerId: json['CLIENTE_ID'] as String,
      rappelId: json['RAPPEL_ID'] as String,
      description: json['DESCRIPCION'] as String,
      dateFrom: DateTime.parse(json['FECHA_DESDE'] as String),
      dateTo: json['FECHA_HASTA'] == null
          ? null
          : DateTime.parse(json['FECHA_HASTA'] as String),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_CustomerRappelDTOToJson(
        _$_CustomerRappelDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'RAPPEL_ID': instance.rappelId,
      'DESCRIPCION': instance.description,
      'FECHA_DESDE': instance.dateFrom.toIso8601String(),
      'FECHA_HASTA': instance.dateTo?.toIso8601String(),
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
