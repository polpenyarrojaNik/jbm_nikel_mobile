import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'pedido_venta_linea.freezed.dart';

@freezed
class PedidoVentaLinea with _$PedidoVentaLinea {
  const PedidoVentaLinea._();
  const factory PedidoVentaLinea({
    String? empresaId,
    String? pedidoVentaId,
    String? pedidoVentaLineaId,
    String? pedidoVentaAppId,
    String? pedidoVentaLineaAppId,
    required String articuloId,
    required String articuloDescription,
    required int cantidad,
    required Money precioDivisa,
    required String divisaId,
    required int tipoPrecio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    double? descuentoProntoPago,
    String? pedidoLineaIdComponente,
    Money? importeLinea,
    bool? stockDisponibleSN,
    int? stockDisponible,
    DateTime? fechaDisponible,
    double? iva,
    required int cantidadPendiente,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _PedidoVentaLinea;

  bool isComponente() => pedidoLineaIdComponente != null;
}
