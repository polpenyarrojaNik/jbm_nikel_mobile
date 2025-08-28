// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_documento_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticuloDocumentoDTO _$ArticuloDocumentoDTOFromJson(
  Map<String, dynamic> json,
) => _ArticuloDocumentoDTO(
  articuloId: json['ARTICULO_ID'] as String,
  nombreArchivo: json['NOMBRE_ARCHIVO'] as String?,
  idiomaId: json['IDIOMA_ID'] as String,
  observaciones: json['OBSERVACIONES'] as String?,
);

Map<String, dynamic> _$ArticuloDocumentoDTOToJson(
  _ArticuloDocumentoDTO instance,
) => <String, dynamic>{
  'ARTICULO_ID': instance.articuloId,
  'NOMBRE_ARCHIVO': instance.nombreArchivo,
  'IDIOMA_ID': instance.idiomaId,
  'OBSERVACIONES': instance.observaciones,
};
