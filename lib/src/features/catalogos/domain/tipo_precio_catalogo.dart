import 'package:freezed_annotation/freezed_annotation.dart';

part 'tipo_precio_catalogo.freezed.dart';

@freezed
class TipoPrecioCatalogo with _$TipoPrecioCatalogo {
  const TipoPrecioCatalogo._();
  const factory TipoPrecioCatalogo({
    required String tipoPrecioCatalogoId,
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
  }) = _TipoPrecioCatalogo;
}
