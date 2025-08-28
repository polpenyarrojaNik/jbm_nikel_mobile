import 'package:freezed_annotation/freezed_annotation.dart';

part 'pedido_venta_estado.freezed.dart';

@freezed
abstract class PedidoVentaEstado with _$PedidoVentaEstado {
  const PedidoVentaEstado._();
  const factory PedidoVentaEstado({
    required int id,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _PedidoVentaEstado;
}
