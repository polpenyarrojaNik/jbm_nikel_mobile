import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_venta_articulo.freezed.dart';

@freezed
class ClienteVentaArticulo with _$ClienteVentaArticulo {
  const ClienteVentaArticulo._();
  const factory ClienteVentaArticulo({
    required double clienteId,
    required double mes,
    required double importe,
    required double coste,
  }) = _ClienteVentaArticulo;
}
