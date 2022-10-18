import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'articulo_precio.freezed.dart';

@freezed
class ArticuloPrecio with _$ArticuloPrecio {
  const ArticuloPrecio._();
  const factory ArticuloPrecio({
    required Money precio,
    required String divisaId,
    required int tipoPrecio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    required double iva,
  }) = _ArticuloPrecio;
}
