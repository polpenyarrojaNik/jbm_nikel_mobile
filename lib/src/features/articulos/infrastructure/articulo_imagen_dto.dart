import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/articulo_imagen.dart';

part 'articulo_imagen_dto.freezed.dart';
part 'articulo_imagen_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloImagenDTO with _$ArticuloImagenDTO {
  const ArticuloImagenDTO._();
  const factory ArticuloImagenDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'NOMBRE_ARCHIVO') required String nombreArchivo,
  }) = _ArticuloImagenDTO;

  factory ArticuloImagenDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloImagenDTOFromJson(json);

  ArticuloImagen toDomain({required bool test}) {
    return ArticuloImagen(
        articuloId: articuloId,
        nombreArchivo: nombreArchivo,
        url: getImageUrl(articuloId, nombreArchivo, test));
  }

  String getImageUrl(String articuloId, String nombreArchivo, bool test) {
    return (test)
        ? 'http://${dotenv.get('URLTEST', fallback: 'localhost:3001')}/api/v1/online/adjunto/articulo/$articuloId/img?NOMBRE_ARCHIVO=$nombreArchivo'
        : 'https://${dotenv.get('URLTEST', fallback: 'localhost:3001')}/api/v1/online/adjunto/articulo/$articuloId/img?NOMBRE_ARCHIVO=$nombreArchivo';
  }
}
