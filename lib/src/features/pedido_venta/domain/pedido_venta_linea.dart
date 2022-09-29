import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'pedido_venta_linea.freezed.dart';

@freezed
class PedidoVentaLinea with _$PedidoVentaLinea {
  const PedidoVentaLinea._();
  const factory PedidoVentaLinea({
    required String empresaId,
    required String pedidoVentaId,
    required String id,
    required String articuloId,
    String? articuloDescription,
    required double cantidad,
    required Money precioDivisa,
    required String divisaId,
    double? tipoPrecio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    String? pedidoLineaIdComponente,
    Money? importeLinea,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _PedidoVentaLinea;
}
