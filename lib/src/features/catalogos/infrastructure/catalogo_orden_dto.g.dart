// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_orden_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogoOrdenDTO _$CatalogoOrdenDTOFromJson(Map<String, dynamic> json) =>
    _CatalogoOrdenDTO(
      catalogoId: (json['CATALOGO_ID'] as num).toInt(),
      fechaAbierto: DateTime.parse(json['FECHA_ABIERTO'] as String),
    );

Map<String, dynamic> _$CatalogoOrdenDTOToJson(_CatalogoOrdenDTO instance) =>
    <String, dynamic>{
      'CATALOGO_ID': instance.catalogoId,
      'FECHA_ABIERTO': instance.fechaAbierto.toIso8601String(),
    };
