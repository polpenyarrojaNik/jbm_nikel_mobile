import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'articulo_top.freezed.dart';

@freezed
abstract class ArticuloTop with _$ArticuloTop {
  const ArticuloTop._();
  const factory ArticuloTop({
    required String articuloId,
    required String descripcion,
    required Money ventasTotal,
    required Money ventasCliente,
  }) = _ArticuloTop;
}
