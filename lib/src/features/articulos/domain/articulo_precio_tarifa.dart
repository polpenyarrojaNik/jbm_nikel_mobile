import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_precio_tarifa.freezed.dart';

@freezed
class ArticuloPrecioTarifa with _$ArticuloPrecioTarifa {
  const ArticuloPrecioTarifa._();
  const factory ArticuloPrecioTarifa(
      {required String articuloId,
      required String tarifaId,
      String? tarifaDescripcion,
      required double cantidadDesDe,
      required double precio,
      double? tipoPrecio,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloPrecioTarifa;
}
