import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'cliente_factura.freezed.dart';

@freezed
abstract class ClienteFactura with _$ClienteFactura {
  const ClienteFactura._();
  const factory ClienteFactura({
    required String clienteId,
    required String empresaId,
    required String serie,
    required String facturaId,
    required DateTime fechaFactura,
    required Money importeFactura,
    required String documentoPdf,
    required bool archivoExiste,
  }) = _ClienteFactura;
}
