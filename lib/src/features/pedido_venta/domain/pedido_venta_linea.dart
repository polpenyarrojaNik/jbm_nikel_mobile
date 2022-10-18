import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/domain/articulo_precio.dart';

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
    DateTime? fechaDisponible,
    double? iva,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _PedidoVentaLinea;

  factory PedidoVentaLinea.newPedidoVentaLinea({
    required String pedidoVentaAppId,
    required String lineaAppId,
    required String articuloId,
    required String articuloDescripcion,
    required int cantidad,
    required ArticuloPrecio articuloPrecio,
    required double descuentoProntoPago,
    required bool stockDisponibleSN,
  }) {
    return PedidoVentaLinea(
      empresaId: null,
      pedidoVentaId: null,
      pedidoVentaLineaId: null,
      pedidoVentaAppId: pedidoVentaAppId,
      pedidoVentaLineaAppId: lineaAppId,
      articuloId: articuloId,
      articuloDescription: articuloDescripcion,
      cantidad: cantidad,
      precioDivisa: articuloPrecio.precio,
      divisaId: articuloPrecio.divisaId,
      tipoPrecio: articuloPrecio.tipoPrecio,
      descuento1: articuloPrecio.descuento1,
      descuento2: articuloPrecio.descuento2,
      descuento3: articuloPrecio.descuento3,
      descuentoProntoPago: descuentoProntoPago,
      stockDisponibleSN: stockDisponibleSN,
      iva: articuloPrecio.iva,
      importeLinea: Money.parse('0', code: articuloPrecio.divisaId),
      lastUpdated: DateTime.now().toUtc(),
      deleted: false,
    );
  }
}
