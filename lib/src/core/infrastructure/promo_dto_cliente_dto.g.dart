// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_dto_cliente_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoDtoClienteDTO _$PromoDtoClienteDTOFromJson(Map<String, dynamic> json) =>
    _PromoDtoClienteDTO(
      empresaId: json['EMPRESA_ID'] as String,
      promoDtoId: json['PROMO_DTO_ID'] as String,
      clienteId: json['CLIENTE_ID'] as String,
      tipo: json['TIPO'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$PromoDtoClienteDTOToJson(_PromoDtoClienteDTO instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.empresaId,
      'PROMO_DTO_ID': instance.promoDtoId,
      'CLIENTE_ID': instance.clienteId,
      'TIPO': instance.tipo,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
