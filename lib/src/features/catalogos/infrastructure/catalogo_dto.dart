import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/domain/catalogo.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_favorito_dto.dart';

part 'catalogo_dto.freezed.dart';
part 'catalogo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CatalogoDTO with _$CatalogoDTO {
  const CatalogoDTO._();
  const factory CatalogoDTO({
    @JsonKey(name: 'CATALOGO_ID') required int catalogoId,
    @JsonKey(name: 'NOMBRE') required String nombre,
    @JsonKey(name: 'IDIOMA_ID') required String idiomaId,
    @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
        required String tipoPrecioCatalogoId,
    @JsonKey(name: 'TIPO_CATALOGO_ID') required String tipoCatalogoId,
    @JsonKey(name: 'TAG_BUSQUEDA') required String tagBusqueda,
    @JsonKey(name: 'ORDEN') required int orden,
    @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')
        required String nombreFicheroPortada,
    @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')
        required String nombreFicheroCatalogo,
  }) = _CatalogoDTO;

  factory CatalogoDTO.fromJson(Map<String, dynamic> json) =>
      _$CatalogoDTOFromJson(json);

  Catalogo toDomain({required List<CatalogoFavoritoDTO> favoriteList}) {
    return Catalogo(
      catalogoId: catalogoId,
      nombre: nombre,
      idiomaId: idiomaId,
      tipoPrecioCatalogoId: tipoPrecioCatalogoId,
      tipoCatalogoId: tipoCatalogoId,
      tagBusqueda: tagBusqueda,
      orden: orden,
      nombreFicherPortada: nombreFicheroPortada,
      nombreFicheroCatalogo: nombreFicheroCatalogo,
      isFavorite: checkIsFavorite(favoriteList),
    );
  }

  bool checkIsFavorite(List<CatalogoFavoritoDTO> favoriteList) {
    for (var i = 0; i < favoriteList.length; i++) {
      if (favoriteList[i].catalogoId == catalogoId) {
        return true;
      }
    }
    return false;
  }
}
