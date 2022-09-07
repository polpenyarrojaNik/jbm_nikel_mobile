import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_tarifa_precio.freezed.dart';

@freezed
class ArticuloTarifaPrecio with _$ArticuloTarifaPrecio {
  const ArticuloTarifaPrecio._();
  const factory ArticuloTarifaPrecio(
      {required String articuloId,
      required String tarifaId,
      String? tarifaDescripcion,
      required double cantidadDesDe,
      required double precio,
      double? tipoPrecio,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloTarifaPrecio;
}
