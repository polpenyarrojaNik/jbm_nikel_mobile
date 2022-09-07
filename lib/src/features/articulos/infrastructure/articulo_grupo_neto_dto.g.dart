// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_grupo_neto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticuloGrupoNetoDTO _$$_ArticuloGrupoNetoDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticuloGrupoNetoDTO(
      articuloId: json['ARTICULO_ID'] as String,
      grupoNetoId: json['GRUPO_NETO_ID'] as String,
      grupoNetoDescripcion: json['GRUPO_NETO_DESCRIPCION'] as String?,
      cantidadDesDe: (json['CANTIDAD_DESDE'] as num).toDouble(),
      precio: (json['PRECIO'] as num).toDouble(),
      tipoPrecio: (json['TIPO_PRECIO'] as num?)?.toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticuloGrupoNetoDTOToJson(
        _$_ArticuloGrupoNetoDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'GRUPO_NETO_ID': instance.grupoNetoId,
      'GRUPO_NETO_DESCRIPCION': instance.grupoNetoDescripcion,
      'CANTIDAD_DESDE': instance.cantidadDesDe,
      'PRECIO': instance.precio,
      'TIPO_PRECIO': instance.tipoPrecio,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
