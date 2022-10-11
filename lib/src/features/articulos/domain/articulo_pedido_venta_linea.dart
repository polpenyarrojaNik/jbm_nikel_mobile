import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'articulo_pedido_venta_linea.freezed.dart';

@freezed
class ArticuloPedidoVentaLinea with _$ArticuloPedidoVentaLinea {
  const ArticuloPedidoVentaLinea._();
  const factory ArticuloPedidoVentaLinea({
    required String empresaId,
    required String pedidoVentaId,
    required String id,
    required String articuloId,
    required String articuloDescription,
    required String clienteId,
    required String nombreCliente,
    required int cantidad,
    required Money precioDivisa,
    required String divisaId,
    required int tipoPrecio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _ArticuloPedidoVentaLinea;
}
