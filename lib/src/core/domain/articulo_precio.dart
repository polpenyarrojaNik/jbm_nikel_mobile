import 'package:freezed_annotation/freezed_annotation.dart';

import '../../features/pedido_venta/domain/precio.dart';

part 'articulo_precio.freezed.dart';

@freezed
class ArticuloPrecio with _$ArticuloPrecio {
  const ArticuloPrecio._();
  const factory ArticuloPrecio({
    required Precio precio,
    required String divisaId,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    required double iva,
  }) = _ArticuloPrecio;
}
