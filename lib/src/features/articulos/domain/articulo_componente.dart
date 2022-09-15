import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_componente.freezed.dart';

@freezed
class ArticuloComponente with _$ArticuloComponente {
  const ArticuloComponente._();
  const factory ArticuloComponente(
      {required String articuloId,
      required String articuloComponenteId,
      String? articuloComponenteDescripcion,
      required double cantidad,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloComponente;
}
