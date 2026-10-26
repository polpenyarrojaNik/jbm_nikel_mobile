import 'package:freezed_annotation/freezed_annotation.dart';

import '../../articulos/domain/articulo.dart';
import '../../cliente/domain/cliente.dart';
import 'pedido_local_param.dart';

part 'seleccionar_cantidad_param.freezed.dart';

@freezed
abstract class SeleccionarCantidadParam with _$SeleccionarCantidadParam {
  const SeleccionarCantidadParam._();
  const factory SeleccionarCantidadParam({
    required PedidoLocalParam pedidoVentaParam,
    required String clienteId,
    required String articuloId,
    /// Divisa del pedido/oferta; si es null se usa la del cliente.
    String? divisaId,
    int? cantidad,
    double? precio,
    double? descuento1,
    double? descuento2,
    bool? createdFromCliente,
    required int posicionLinea,
    required bool addNewLineaDesdeArticulo,
    required bool recomendado,
    required String? codPromo,
    required int? cantidadPromo,
    required bool? isPromo,
    DateTime? fechaCliente,
    @Default(false) bool isComponente,
  }) = _SeleccionarCantidadParam;

  bool isUpdatingLinea() => cantidad != null;
}

@freezed
abstract class SelectQuantityInitialData with _$SelectQuantityInitialData {
  const SelectQuantityInitialData._();
  const factory SelectQuantityInitialData({
    required Articulo articulo,
    required Cliente cliente,
  }) = _SelectQuantityInitialData;
}
