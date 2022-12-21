// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogoDTO _$$_CatalogoDTOFromJson(Map<String, dynamic> json) =>
    _$_CatalogoDTO(
      catalogoId: json['CATALOGO_ID'] as int,
      nombre: json['NOMBRE'] as String,
      idiomaId: json['IDIOMA_ID'] as String,
      tipoPrecioCatalogoId: json['TIPO_PRECIO_CATALOGO_ID'] as String,
      tipoCatalogoId: json['TIPO_CATALOGO_ID'] as String,
      tagBusqueda: json['TAG_BUSQUEDA'] as String,
      orden: json['ORDEN'] as int,
      nombreFicheroPortada: json['NOMBRE_FICHERO_PORTADA'] as String,
      nombreFicheroCatalogo: json['NOMBRE_FICHERO_CATALOGO'] as String,
    );

Map<String, dynamic> _$$_CatalogoDTOToJson(_$_CatalogoDTO instance) =>
    <String, dynamic>{
      'CATALOGO_ID': instance.catalogoId,
      'NOMBRE': instance.nombre,
      'IDIOMA_ID': instance.idiomaId,
      'TIPO_PRECIO_CATALOGO_ID': instance.tipoPrecioCatalogoId,
      'TIPO_CATALOGO_ID': instance.tipoCatalogoId,
      'TAG_BUSQUEDA': instance.tagBusqueda,
      'ORDEN': instance.orden,
      'NOMBRE_FICHERO_PORTADA': instance.nombreFicheroPortada,
      'NOMBRE_FICHERO_CATALOGO': instance.nombreFicheroCatalogo,
    };
