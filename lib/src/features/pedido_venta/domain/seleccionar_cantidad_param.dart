import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/articulo_precio.dart';
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
    int? cantidad,
    double? precio,
    double? descuento1,
    double? descuento2,
    bool? createdFromCliente,
    required int posicionLinea,
    required bool addNewLineaDesdeArticulo,
    required bool recomendado,
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
