// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_albaran_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClienteAlbaranDTO _$ClienteAlbaranDTOFromJson(Map<String, dynamic> json) =>
    _ClienteAlbaranDTO(
      clienteId: json['CLIENTE_ID'] as String,
      albaranId: json['ALBARAN_ID'] as String,
      empresaId: json['EMPRESA_ID'] as String,
      fechaAlbaran: DateTime.parse(json['FECHA_EMISION'] as String),
      zipCode: json['CODIGO_POSTAL'] as String?,
      poblacion: json['POBLACION'] as String?,
      paisId: json['PAIS_ID'] as String?,
      provincia: json['PROVINCIA'] as String?,
      baseImponible: (json['BASE_IMPONIBLE'] as num).toDouble(),
      documentoPdf: json['DOCUMENTO_PDF'] as String,
      archivoExiste: json['ARCHIVO_EXISTE_SN'] as String,
    );

Map<String, dynamic> _$ClienteAlbaranDTOToJson(_ClienteAlbaranDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'ALBARAN_ID': instance.albaranId,
      'EMPRESA_ID': instance.empresaId,
      'FECHA_EMISION': instance.fechaAlbaran.toIso8601String(),
      'CODIGO_POSTAL': instance.zipCode,
      'POBLACION': instance.poblacion,
      'PAIS_ID': instance.paisId,
      'PROVINCIA': instance.provincia,
      'BASE_IMPONIBLE': instance.baseImponible,
      'DOCUMENTO_PDF': instance.documentoPdf,
      'ARCHIVO_EXISTE_SN': instance.archivoExiste,
    };
