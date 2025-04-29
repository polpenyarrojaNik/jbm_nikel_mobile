// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_documento_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticuloDocumentoDTOImpl _$$ArticuloDocumentoDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticuloDocumentoDTOImpl(
      articuloId: json['ARTICULO_ID'] as String,
      nombreArchivo: json['NOMBRE_ARCHIVO'] as String?,
      idiomaId: json['IDIOMA_ID'] as String,
      observaciones: json['OBSERVACIONES'] as String?,
    );

Map<String, dynamic> _$$ArticuloDocumentoDTOImplToJson(
        _$ArticuloDocumentoDTOImpl instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'NOMBRE_ARCHIVO': instance.nombreArchivo,
      'IDIOMA_ID': instance.idiomaId,
      'OBSERVACIONES': instance.observaciones,
    };
