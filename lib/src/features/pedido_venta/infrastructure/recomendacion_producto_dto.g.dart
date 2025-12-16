// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recomendacion_producto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecomendacionProductoDTO _$RecomendacionProductoDTOFromJson(
  Map<String, dynamic> json,
) => _RecomendacionProductoDTO(
  articuloId: json['ARTICULO_ID'] as String,
  probabilidad: (json['PROBABILIDAD'] as num).toDouble(),
  motivo: json['MOTIVO'] as String,
);

Map<String, dynamic> _$RecomendacionProductoDTOToJson(
  _RecomendacionProductoDTO instance,
) => <String, dynamic>{
  'ARTICULO_ID': instance.articuloId,
  'PROBABILIDAD': instance.probabilidad,
  'MOTIVO': instance.motivo,
};
