// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogoDTOImpl _$$CatalogoDTOImplFromJson(Map<String, dynamic> json) =>
    _$CatalogoDTOImpl(
      catalogoId: (json['CATALOGO_ID'] as num).toInt(),
      nombre: json['NOMBRE'] as String,
      idiomaId: json['IDIOMA_ID'] as String,
      tipoPrecioCatalogoId: json['TIPO_PRECIO_CATALOGO_ID'] as String,
      tipoPrecioCatalogoNombre: json['TIPO_PRECIO_CATALOGO_NOMBRE'] as String,
      tipoCatalogoId: json['TIPO_CATALOGO_ID'] as String,
      tagBusqueda: json['TAG_BUSQUEDA'] as String,
      orden: (json['ORDEN'] as num).toInt(),
      nombreFicheroPortada: json['NOMBRE_FICHERO_PORTADA'] as String,
      nombreFicheroCatalogo: json['NOMBRE_FICHERO_CATALOGO'] as String,
      descarga: json['DESCARGA_SN'] as String,
    );

Map<String, dynamic> _$$CatalogoDTOImplToJson(_$CatalogoDTOImpl instance) =>
    <String, dynamic>{
      'CATALOGO_ID': instance.catalogoId,
      'NOMBRE': instance.nombre,
      'IDIOMA_ID': instance.idiomaId,
      'TIPO_PRECIO_CATALOGO_ID': instance.tipoPrecioCatalogoId,
      'TIPO_PRECIO_CATALOGO_NOMBRE': instance.tipoPrecioCatalogoNombre,
      'TIPO_CATALOGO_ID': instance.tipoCatalogoId,
      'TAG_BUSQUEDA': instance.tagBusqueda,
      'ORDEN': instance.orden,
      'NOMBRE_FICHERO_PORTADA': instance.nombreFicheroPortada,
      'NOMBRE_FICHERO_CATALOGO': instance.nombreFicheroCatalogo,
      'DESCARGA_SN': instance.descarga,
    };
