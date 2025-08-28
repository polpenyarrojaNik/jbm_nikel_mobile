// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_imagen_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticuloImagenDTO _$ArticuloImagenDTOFromJson(Map<String, dynamic> json) =>
    _ArticuloImagenDTO(
      articuloId: json['ARTICULO_ID'] as String,
      nombreArchivo: json['NOMBRE_ARCHIVO'] as String,
    );

Map<String, dynamic> _$ArticuloImagenDTOToJson(_ArticuloImagenDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'NOMBRE_ARCHIVO': instance.nombreArchivo,
    };
