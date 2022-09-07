import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_documento.freezed.dart';

@freezed
class ArticuloDocumento with _$ArticuloDocumento {
  const ArticuloDocumento._();
  const factory ArticuloDocumento({
    required String articuloId,
    String? nombreArchivo,
    String? pathArchivo,
    required String idiomaId,
    String? observaciones,
  }) = _ArticuloDocumento;
}
