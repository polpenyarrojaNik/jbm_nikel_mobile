// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_grupo_neto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticuloGrupoNetoDTO _$ArticuloGrupoNetoDTOFromJson(
  Map<String, dynamic> json,
) => _ArticuloGrupoNetoDTO(
  articuloId: json['ARTICULO_ID'] as String,
  grupoNetoId: json['GRUPO_NETO_ID'] as String,
  grupoNetoDescripcion: json['GRUPO_NETO_DESCRIPCION'] as String,
  cantidadDesde: (json['CANTIDAD_DESDE'] as num).toInt(),
  precio: (json['PRECIO'] as num).toDouble(),
  divisaId: json['DIVISA_ID'] as String,
  tipoPrecio: (json['TIPO_PRECIO'] as num).toInt(),
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$ArticuloGrupoNetoDTOToJson(
  _ArticuloGrupoNetoDTO instance,
) => <String, dynamic>{
  'ARTICULO_ID': instance.articuloId,
  'GRUPO_NETO_ID': instance.grupoNetoId,
  'GRUPO_NETO_DESCRIPCION': instance.grupoNetoDescripcion,
  'CANTIDAD_DESDE': instance.cantidadDesde,
  'PRECIO': instance.precio,
  'DIVISA_ID': instance.divisaId,
  'TIPO_PRECIO': instance.tipoPrecio,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
