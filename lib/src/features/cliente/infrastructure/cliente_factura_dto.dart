import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../domain/cliente_factura.dart';

part 'cliente_factura_dto.freezed.dart';
part 'cliente_factura_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ClienteFacturaDTO with _$ClienteFacturaDTO {
  const ClienteFacturaDTO._();
  const factory ClienteFacturaDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'SERIE') required String serie,
    @JsonKey(name: 'FACTURA_ID') required String facturaId,
    @JsonKey(name: 'FECHA_FACTURA') required DateTime fechaFactura,
    @JsonKey(name: 'IMPORTE_FACTURA') required double importeFactura,
    @JsonKey(name: 'DOCUMENTO_PDF') required String documentoPdf,
    @JsonKey(name: 'ARCHIVO_EXISTE_SN') required String archivoExiste,
  }) = _ClienteFacturaDTO;

  factory ClienteFacturaDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteFacturaDTOFromJson(json);

  ClienteFactura toDomain(String? divisaId) {
    return ClienteFactura(
      clienteId: clienteId,
      facturaId: facturaId,
      empresaId: empresaId,
      serie: serie,
      fechaFactura: fechaFactura.toUtc(),
      importeFactura: Money.fromNum(importeFactura, isoCode: divisaId ?? 'EU'),

      documentoPdf: documentoPdf,
      archivoExiste: archivoExiste == 'S',
    );
  }
}
