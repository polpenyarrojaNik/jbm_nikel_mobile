import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/entity_id_is_local_param.dart';

part 'seleccionar_cantidad_param.freezed.dart';

@freezed
class SeleccionarCantidadParam with _$SeleccionarCantidadParam {
  const SeleccionarCantidadParam._();
  const factory SeleccionarCantidadParam({
    required EntityIdIsLocalParam pedidoVentaIdIsLocalParam,
    required String clienteId,
    String? articuloId,
    int? cantidad,
    int? posicionLineaActualizar,
  }) = _SeleccionarCantidadParam;
}
