import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'cliente_venta_articulo.freezed.dart';

@freezed
class ClienteVentaArticulo with _$ClienteVentaArticulo {
  const ClienteVentaArticulo._();
  const factory ClienteVentaArticulo({
    required double clienteId,
    required double mes,
    required Money importe,
    required Money coste,
  }) = _ClienteVentaArticulo;
}
