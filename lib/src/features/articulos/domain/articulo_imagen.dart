import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_imagen.freezed.dart';

@freezed
class ArticuloImagen with _$ArticuloImagen {
  const ArticuloImagen._();
  const factory ArticuloImagen({
    required String articuloId,
    required String nombreArchivo,
    String? pathArchivo,
  }) = _ArticuloImagen;
}
