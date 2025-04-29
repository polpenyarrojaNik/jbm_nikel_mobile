// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_dto_cliente_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromoDtoClienteDTOImpl _$$PromoDtoClienteDTOImplFromJson(
  Map<String, dynamic> json,
) => _$PromoDtoClienteDTOImpl(
  empresaId: json['EMPRESA_ID'] as String,
  promoDtoId: json['PROMO_DTO_ID'] as String,
  clienteId: json['CLIENTE_ID'] as String,
  tipo: json['TIPO'] as String,
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$$PromoDtoClienteDTOImplToJson(
  _$PromoDtoClienteDTOImpl instance,
) => <String, dynamic>{
  'EMPRESA_ID': instance.empresaId,
  'PROMO_DTO_ID': instance.promoDtoId,
  'CLIENTE_ID': instance.clienteId,
  'TIPO': instance.tipo,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
