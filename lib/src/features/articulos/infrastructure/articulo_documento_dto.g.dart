// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_documento_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticuloDocumentoDTO _$$_ArticuloDocumentoDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticuloDocumentoDTO(
      articuloId: json['ARTICULO_ID'] as String,
      nombreArchivo: json['NOMBRE_ARCHIVO'] as String?,
      idiomaId: json['IDIOMA_ID'] as String,
      observaciones: json['OBSERVACIONES'] as String?,
    );

Map<String, dynamic> _$$_ArticuloDocumentoDTOToJson(
        _$_ArticuloDocumentoDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'NOMBRE_ARCHIVO': instance.nombreArchivo,
      'IDIOMA_ID': instance.idiomaId,
      'OBSERVACIONES': instance.observaciones,
    };
