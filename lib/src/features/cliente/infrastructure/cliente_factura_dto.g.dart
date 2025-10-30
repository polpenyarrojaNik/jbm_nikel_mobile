// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_factura_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClienteFacturaDTO _$ClienteFacturaDTOFromJson(Map<String, dynamic> json) =>
    _ClienteFacturaDTO(
      clienteId: json['CLIENTE_ID'] as String,
      empresaId: json['EMPRESA_ID'] as String,
      serie: json['SERIE'] as String,
      facturaId: json['FACTURA_ID'] as String,
      fechaFactura: DateTime.parse(json['FECHA_FACTURA'] as String),
      importeFactura: (json['IMPORTE_FACTURA'] as num).toDouble(),
      documentoPdf: json['DOCUMENTO_PDF'] as String,
      archivoExiste: json['ARCHIVO_EXISTE_SN'] as String,
    );

Map<String, dynamic> _$ClienteFacturaDTOToJson(_ClienteFacturaDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'EMPRESA_ID': instance.empresaId,
      'SERIE': instance.serie,
      'FACTURA_ID': instance.facturaId,
      'FECHA_FACTURA': instance.fechaFactura.toIso8601String(),
      'IMPORTE_FACTURA': instance.importeFactura,
      'DOCUMENTO_PDF': instance.documentoPdf,
      'ARCHIVO_EXISTE_SN': instance.archivoExiste,
    };
