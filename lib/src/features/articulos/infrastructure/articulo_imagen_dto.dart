import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_imagen.dart';

part 'articulo_imagen_dto.freezed.dart';
part 'articulo_imagen_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloImagenDTO with _$ArticuloImagenDTO {
  const ArticuloImagenDTO._();
  const factory ArticuloImagenDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'NOMBRE_ARCHIVO') required String nombreArchivo,
    @JsonKey(name: 'PATH_ARCHIVO') String? pathArchivo,
  }) = _ArticuloImagenDTO;

  factory ArticuloImagenDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloImagenDTOFromJson(json);

  ArticuloImagen toDomain() {
    return ArticuloImagen(
      articuloId: articuloId,
      nombreArchivo: nombreArchivo,
      pathArchivo: pathArchivo,
    );
  }
}
