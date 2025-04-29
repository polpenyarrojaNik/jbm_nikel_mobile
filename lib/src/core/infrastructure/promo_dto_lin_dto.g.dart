// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_dto_lin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromoDtoLineaDTOImpl _$$PromoDtoLineaDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PromoDtoLineaDTOImpl(
      empresaId: json['EMPRESA_ID'] as String,
      promoDtoId: json['PROMO_DTO_ID'] as String,
      articuloId: json['ARTICULO_ID'] as String,
      cantidadDesde: (json['CANTIDAD_DESDE'] as num).toInt(),
      precio: (json['PRECIO'] as num).toDouble(),
      tipoPrecio: (json['TIPO_PRECIO'] as num?)?.toInt(),
      dto: (json['DTO'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$PromoDtoLineaDTOImplToJson(
        _$PromoDtoLineaDTOImpl instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.empresaId,
      'PROMO_DTO_ID': instance.promoDtoId,
      'ARTICULO_ID': instance.articuloId,
      'CANTIDAD_DESDE': instance.cantidadDesde,
      'PRECIO': instance.precio,
      'TIPO_PRECIO': instance.tipoPrecio,
      'DTO': instance.dto,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
