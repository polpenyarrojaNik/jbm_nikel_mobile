import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:money2/money2.dart';

part 'articulo_precio.freezed.dart';

@freezed
class ArticuloPrecio with _$ArticuloPrecio {
  const ArticuloPrecio._();
  const factory ArticuloPrecio({
    required String articuloId,
    required String clienteId,
    required int cantidad,
    required Money precio,
    required double? descuento1,
    required double? descuento2,
    required double? descuento3,
    required int tipoPrecio,
  }) = _ArticuloPrecio;

  factory ArticuloPrecio.crearNuevoArticuloPrecio(
    String articuloId,
    String clienteId,
    int cantidad,
    String divisaId,
    int tipoPrecio,
    double nuevoPrecio,
    double nuevoDescuento1,
    double nuevoDescuento2,
    double nuevoDescuento3,
  ) =>
      ArticuloPrecio(
        articuloId: articuloId,
        clienteId: clienteId,
        cantidad: cantidad,
        precio: nuevoPrecio.parseMoney(nuevoPrecio, divisaId),
        descuento1: nuevoDescuento1,
        descuento2: nuevoDescuento2,
        descuento3: nuevoDescuento3,
        tipoPrecio: tipoPrecio,
      );
}
