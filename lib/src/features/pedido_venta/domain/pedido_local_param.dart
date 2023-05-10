import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta_linea.dart';

part 'pedido_local_param.freezed.dart';

@freezed
class PedidoLocalParam with _$PedidoLocalParam {
  const PedidoLocalParam._();
  const factory PedidoLocalParam({
    String? pedidoAppId,
    String? pedidoId,
    String? empresaId,
    required bool isEdit,
    bool? tratada,
    String? createPedidoFromClienteId,
    PedidoVentaLinea? addLineaDesdeArticulo,
  }) = _PedidoLocalParam;

  bool get isLocal =>
      pedidoId == null && empresaId == null || (tratada != null && !tratada!);
}
