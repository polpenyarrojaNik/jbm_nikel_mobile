import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/articulo_documento.dart';

part 'articulo_documento_dto.freezed.dart';
part 'articulo_documento_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloDocumentoDTO with _$ArticuloDocumentoDTO {
  const ArticuloDocumentoDTO._();
  const factory ArticuloDocumentoDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,
    @JsonKey(name: 'PATH_ARCHIVO') String? pathArchivo,
    @JsonKey(name: 'IDIOMA_ID') required String idiomaId,
    @JsonKey(name: 'OBSERVACIONES') String? observaciones,
  }) = _ArticuloDocumentoDTO;

  factory ArticuloDocumentoDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloDocumentoDTOFromJson(json);

  ArticuloDocumento toDomain() {
    return ArticuloDocumento(
      articuloId: articuloId,
      nombreArchivo: nombreArchivo,
      pathArchivo: pathArchivo,
      idiomaId: idiomaId,
      observaciones: observaciones,
    );
  }
}
