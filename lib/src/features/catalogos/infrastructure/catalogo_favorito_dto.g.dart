// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_favorito_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogoFavoritoDTOImpl _$$CatalogoFavoritoDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CatalogoFavoritoDTOImpl(
      id: (json['ID'] as num).toInt(),
      catalogoId: (json['CATALOGO_ID'] as num).toInt(),
      nombreArchivo: json['NOMBRE_ARCHIVO'] as String?,
    );

Map<String, dynamic> _$$CatalogoFavoritoDTOImplToJson(
        _$CatalogoFavoritoDTOImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CATALOGO_ID': instance.catalogoId,
      'NOMBRE_ARCHIVO': instance.nombreArchivo,
    };
