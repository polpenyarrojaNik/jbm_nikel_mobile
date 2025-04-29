// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_orden_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogoOrdenDTOImpl _$$CatalogoOrdenDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CatalogoOrdenDTOImpl(
  catalogoId: (json['CATALOGO_ID'] as num).toInt(),
  fechaAbierto: DateTime.parse(json['FECHA_ABIERTO'] as String),
);

Map<String, dynamic> _$$CatalogoOrdenDTOImplToJson(
  _$CatalogoOrdenDTOImpl instance,
) => <String, dynamic>{
  'CATALOGO_ID': instance.catalogoId,
  'FECHA_ABIERTO': instance.fechaAbierto.toIso8601String(),
};
