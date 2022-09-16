import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'articulo_precio_tarifa.freezed.dart';

@freezed
class ArticuloPrecioTarifa with _$ArticuloPrecioTarifa {
  const ArticuloPrecioTarifa._();
  const factory ArticuloPrecioTarifa(
      {required String articuloId,
      required String tarifaId,
      String? tarifaDescripcion,
      required double cantidadDesDe,
      required Money precio,
      required String divisaId,
      double? tipoPrecio,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloPrecioTarifa;
}
