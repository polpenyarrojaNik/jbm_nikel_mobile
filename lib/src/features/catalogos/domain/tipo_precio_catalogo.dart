import 'package:freezed_annotation/freezed_annotation.dart';

part 'tipo_precio_catalogo.freezed.dart';

@freezed
class TipoPrecioCatalogo with _$TipoPrecioCatalogo {
  const TipoPrecioCatalogo._();
  const factory TipoPrecioCatalogo({
    required String tipoPrecioCatalogoId,
    required String descripcion,
  }) = _TipoPrecioCatalogo;
}
