import 'package:freezed_annotation/freezed_annotation.dart';
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
    ArticuloPrecio articuloPrecio,
    String divisaID,
    String? nuevoPrecio,
    String? nuevoDescuento1,
    String? nuevoDescuento2,
    String? nuevoDescuento3,
  ) =>
      ArticuloPrecio(
        articuloId: articuloPrecio.articuloId,
        clienteId: articuloPrecio.clienteId,
        cantidad: articuloPrecio.cantidad,
        precio: (nuevoPrecio != null)
            ? (nuevoPrecio != '')
                ? Money.parse(nuevoPrecio, code: divisaID)
                : Money.parse('0', code: divisaID)
            : articuloPrecio.precio,
        descuento1: (nuevoDescuento1 != null)
            ? (nuevoDescuento1 != '')
                ? double.parse(nuevoDescuento1)
                : 0
            : articuloPrecio.descuento1,
        descuento2: (nuevoDescuento2 != null)
            ? (nuevoDescuento2 != '')
                ? double.parse(nuevoDescuento2)
                : 0
            : articuloPrecio.descuento2,
        descuento3: (nuevoDescuento3 != null)
            ? (nuevoDescuento3 != '')
                ? double.parse(nuevoDescuento3)
                : 0
            : articuloPrecio.descuento3,
        tipoPrecio: articuloPrecio.tipoPrecio,
      );
}
