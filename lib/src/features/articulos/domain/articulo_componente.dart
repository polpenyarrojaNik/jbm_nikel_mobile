import 'package:freezed_annotation/freezed_annotation.dart';

import 'articulo.dart';

part 'articulo_componente.freezed.dart';

@freezed
class ArticuloComponente with _$ArticuloComponente {
  const ArticuloComponente._();
  const factory ArticuloComponente(
      {required Articulo articulo,
      required Articulo articuloComponente,
      required double cantidad,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloComponente;
}
