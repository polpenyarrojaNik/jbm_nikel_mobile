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
    required String divisaId,
    required int cantidad,
    required Money precio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    required double descuentoProntoPago,
    required double iva,
    required int tipoPrecio,
  }) = _ArticuloPrecio;

  factory ArticuloPrecio.crearNuevoArticuloPrecio({
    required String articuloId,
    required String clienteId,
    required int cantidad,
    required String divisaId,
    required int tipoPrecio,
    required double nuevoPrecio,
    required double nuevoDescuento1,
    required double nuevoDescuento2,
    required double nuevoDescuento3,
    required double descuentoProntoPago,
    required double iva,
  }) =>
      ArticuloPrecio(
        articuloId: articuloId,
        clienteId: clienteId,
        cantidad: cantidad,
        precio: nuevoPrecio.parseMoney(currencyId: divisaId),
        divisaId: divisaId,
        descuento1: nuevoDescuento1,
        descuento2: nuevoDescuento2,
        descuento3: nuevoDescuento3,
        descuentoProntoPago: descuentoProntoPago,
        iva: iva,
        tipoPrecio: tipoPrecio,
      );
}
