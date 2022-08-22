// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerUserDTO _$$_CustomerUserDTOFromJson(Map<String, dynamic> json) =>
    _$_CustomerUserDTO(
      customerId: json['CLIENTE_ID'] as String,
      userId: json['USUARIO_ID'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_CustomerUserDTOToJson(_$_CustomerUserDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'USUARIO_ID': instance.userId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
