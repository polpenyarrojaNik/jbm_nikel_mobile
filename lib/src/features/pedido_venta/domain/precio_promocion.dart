import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'precio_promocion.freezed.dart';

@freezed
class PrecioPromocion with _$PrecioPromocion {
  const PrecioPromocion._();
  const factory PrecioPromocion({
    required Money precio,
    required int tipoPrecio,
    required double dto,
  }) = _PrecioPromocion;
}
