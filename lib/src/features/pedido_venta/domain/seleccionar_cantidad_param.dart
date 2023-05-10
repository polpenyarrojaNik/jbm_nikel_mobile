import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_local_param.dart';

part 'seleccionar_cantidad_param.freezed.dart';

@freezed
class SeleccionarCantidadParam with _$SeleccionarCantidadParam {
  const SeleccionarCantidadParam._();
  const factory SeleccionarCantidadParam({
    required PedidoLocalParam pedidoVentaParam,
    required String clienteId,
    required String articuloId,
    int? cantidad,
    double? precio,
    double? descuento1,
    double? descuento2,
    bool? createdFromCliente,
    required int posicionLinea,
    required bool addNewLineaDesdeArticulo,
  }) = _SeleccionarCantidadParam;

  bool isUpdatingLinea() => cantidad != null;
}
