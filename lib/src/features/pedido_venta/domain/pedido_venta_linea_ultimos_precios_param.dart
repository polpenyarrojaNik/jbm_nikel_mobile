import 'package:freezed_annotation/freezed_annotation.dart';

part 'pedido_venta_linea_ultimos_precios_param.freezed.dart';

@freezed
class PedidoVentaLineaUltimosPreciosParam
    with _$PedidoVentaLineaUltimosPreciosParam {
  const PedidoVentaLineaUltimosPreciosParam._();
  const factory PedidoVentaLineaUltimosPreciosParam({
    required String clienteId,
    required String articuloId,
  }) = _PedidoVentaLineaUltimosPreciosParam;
}
