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
    String? articuloDescription,
    required double cantidad,
    required Money precioDivisa,
    required String divisaId,
    double? tipoPrecio,
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
    required ArticuloPrecio articuloPrecio,
    required String articuloDescripcion,
    required bool stockDisponibleSN,
  }) {
    return PedidoVentaLinea(
      pedidoVentaId: null,
      pedidoVentaLineaId: null,
      pedidoVentaAppId: pedidoVentaAppId,
      pedidoVentaLineaAppId: lineaAppId,
      articuloId: articuloPrecio.articuloId,
      articuloDescription: articuloDescripcion,
      cantidad: articuloPrecio.cantidad.toDouble(),
      precioDivisa: articuloPrecio.precio,
      divisaId: articuloPrecio.divisaId,
      tipoPrecio: articuloPrecio.tipoPrecio.toDouble(),
      descuento1: articuloPrecio.descuento1,
      descuento2: articuloPrecio.descuento2,
      descuento3: articuloPrecio.descuento3,
      descuentoProntoPago: articuloPrecio.descuentoProntoPago,
      stockDisponibleSN: stockDisponibleSN,
      iva: articuloPrecio.iva,
      importeLinea: Money.parse('0', code: articuloPrecio.divisaId),
      lastUpdated: DateTime.now(),
      deleted: false,
    );
  }
}
