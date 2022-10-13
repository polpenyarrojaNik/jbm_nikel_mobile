import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_componente.freezed.dart';

@freezed
class ArticuloComponente with _$ArticuloComponente {
  const ArticuloComponente._();
  const factory ArticuloComponente(
      {required String articuloId,
      required String articuloComponenteId,
      required String descripcionES,
      String? descripcionEN,
      String? descripcionFR,
      String? descripcionDE,
      String? descripcionCA,
      String? descripcionGB,
      String? descripcionHU,
      String? descripcionIT,
      String? descripcionNL,
      String? descripcionPL,
      String? descripcionPT,
      String? descripcionRO,
      String? descripcionRU,
      String? descripcionCN,
      String? descripcionEL,
      required int cantidad,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloComponente;
}
