import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_recambio.freezed.dart';

@freezed
class ArticuloRecambio with _$ArticuloRecambio {
  const ArticuloRecambio._();
  const factory ArticuloRecambio(
      {required String articuloId,
      required String id,
      required String descripcion,
      required int cantidad,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloRecambio;
}
