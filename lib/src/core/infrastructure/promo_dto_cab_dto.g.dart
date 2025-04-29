// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_dto_cab_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromoDtoCabDTOImpl _$$PromoDtoCabDTOImplFromJson(Map<String, dynamic> json) =>
    _$PromoDtoCabDTOImpl(
      empresaId: json['EMPRESA_ID'] as String,
      promoDtoId: json['PROMO_DTO_ID'] as String,
      nombre: json['NOMBRE'] as String,
      fechaDesde: DateTime.parse(json['FECHA_DESDE'] as String),
      fechaHasta: json['FECHA_HASTA'] == null
          ? null
          : DateTime.parse(json['FECHA_HASTA'] as String),
      divisaId: json['DIVISA_ID'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$PromoDtoCabDTOImplToJson(
        _$PromoDtoCabDTOImpl instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.empresaId,
      'PROMO_DTO_ID': instance.promoDtoId,
      'NOMBRE': instance.nombre,
      'FECHA_DESDE': instance.fechaDesde.toIso8601String(),
      'FECHA_HASTA': instance.fechaHasta?.toIso8601String(),
      'DIVISA_ID': instance.divisaId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
