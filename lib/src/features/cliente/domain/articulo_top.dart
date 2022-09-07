import 'package:freezed_annotation/freezed_annotation.dart';

import '../../articulos/domain/articulo.dart';

part 'articulo_top.freezed.dart';

@freezed
class ArticuloTop with _$ArticuloTop {
  const ArticuloTop._();
  const factory ArticuloTop(
      {required Articulo articulo,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloTop;
}
