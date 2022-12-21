import 'package:freezed_annotation/freezed_annotation.dart';

part 'tipo_catalogo.freezed.dart';

@freezed
class TipoCatalogo with _$TipoCatalogo {
  const TipoCatalogo._();
  const factory TipoCatalogo({
    required String tipoCatalogoId,
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
  }) = _TipoCatalogo;
}
