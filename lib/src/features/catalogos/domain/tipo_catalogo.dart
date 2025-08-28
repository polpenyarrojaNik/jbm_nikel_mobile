import 'package:freezed_annotation/freezed_annotation.dart';

part 'tipo_catalogo.freezed.dart';

@freezed
abstract class TipoCatalogo with _$TipoCatalogo {
  const TipoCatalogo._();
  const factory TipoCatalogo({
    required String tipoCatalogoId,
    required String descripcion,
  }) = _TipoCatalogo;
}
