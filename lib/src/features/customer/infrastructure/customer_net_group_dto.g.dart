// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_net_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerNetGroupDTO _$$_CustomerNetGroupDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerNetGroupDTO(
      customerId: json['CLIENTE_ID'] as String,
      netGroupId: json['GRUPO_NETO_ID'] as String,
      netGroupDescription: json['GRUPO_NETO_DESCRIPCION'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_CustomerNetGroupDTOToJson(
        _$_CustomerNetGroupDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'GRUPO_NETO_ID': instance.netGroupId,
      'GRUPO_NETO_DESCRIPCION': instance.netGroupDescription,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
