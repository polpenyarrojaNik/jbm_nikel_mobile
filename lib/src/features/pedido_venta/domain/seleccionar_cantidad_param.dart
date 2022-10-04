import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/articulo_precio.dart';

part 'seleccionar_cantidad_param.freezed.dart';

@freezed
class SeleccionarCantidadParam with _$SeleccionarCantidadParam {
  const SeleccionarCantidadParam._();
  const factory SeleccionarCantidadParam({
    required String articuloId,
    required String clienteId,
    required String divisaId,
    required ArticuloPrecio? articuloPrecio,
  }) = _SeleccionarCantidadParam;
}
