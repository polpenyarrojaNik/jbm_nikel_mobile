import 'package:freezed_annotation/freezed_annotation.dart';

part 'pedido_venta_linea_ultimos_precios_param.freezed.dart';

@freezed
abstract class UltimosPreciosParam with _$UltimosPreciosParam {
  const UltimosPreciosParam._();
  const factory UltimosPreciosParam({
    required String clienteId,
    required String articuloId,
  }) = _UltimosPreciosParam;
}
