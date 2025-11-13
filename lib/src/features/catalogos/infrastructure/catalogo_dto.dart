import 'package:drift/drift.dart' hide JsonKey;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/local_database.dart';
import '../domain/catalogo.dart';

part 'catalogo_dto.freezed.dart';
part 'catalogo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class CatalogoDTO
    with _$CatalogoDTO
    implements Insertable<CatalogoDTO> {
  const CatalogoDTO._();
  const factory CatalogoDTO({
    @JsonKey(name: 'CATALOGO_ID') required int catalogoId,
    @JsonKey(name: 'NOMBRE') required String nombre,
    @JsonKey(name: 'IDIOMA_ID') required String idiomaId,
    @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
    required String tipoPrecioCatalogoId,
    @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')
    required String tipoPrecioCatalogoNombre,
    @JsonKey(name: 'TIPO_CATALOGO_ID') required String tipoCatalogoId,
    @JsonKey(name: 'TAG_BUSQUEDA') required String tagBusqueda,
    @JsonKey(name: 'ORDEN') required int orden,
    @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')
    required String nombreFicheroPortada,
    @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')
    required String nombreFicheroCatalogo,
    @JsonKey(name: 'DESCARGA_SN') required String descarga,
  }) = _CatalogoDTO;

  factory CatalogoDTO.fromJson(Map<String, dynamic> json) =>
      _$CatalogoDTOFromJson(json);

  String get getImageUrl {
    return 'https://${dotenv.get('URL', fallback: 'localhost:3001')}/api/v1/online/adjunto/catalogo/$catalogoId?NOMBRE_ARCHIVO=$nombreFicheroPortada';
  }

  factory CatalogoDTO.fromDomain(Catalogo catalogo) => CatalogoDTO(
    catalogoId: catalogo.catalogoId,
    nombre: catalogo.nombre,
    idiomaId: catalogo.idiomaId,
    tipoPrecioCatalogoId: catalogo.tipoPrecioCatalogoId,
    tipoPrecioCatalogoNombre: catalogo.tipoPrecioCatalogoNombre,
    tipoCatalogoId: catalogo.tipoCatalogoId,
    tagBusqueda: catalogo.tagBusqueda,
    orden: catalogo.orden,
    nombreFicheroPortada: catalogo.nombreFicheroPortada,
    nombreFicheroCatalogo: catalogo.nombreFicheroCatalogo,
    descarga: catalogo.descarga ? 'S' : 'N',
  );

  Catalogo toDomain({required bool test, required String? tipoPrecioCatalogo}) {
    return Catalogo(
      catalogoId: catalogoId,
      nombre: nombre,
      idiomaId: idiomaId,
      tipoPrecioCatalogoId: tipoPrecioCatalogoId,
      tipoPrecioCatalogoNombre: tipoPrecioCatalogoNombre,
      tipoCatalogoId: tipoCatalogoId,
      tagBusqueda: tagBusqueda,
      orden: orden,
      nombreFicheroPortada: nombreFicheroPortada,
      nombreFicheroCatalogo: nombreFicheroCatalogo,
      descarga: descarga == 'S',
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CatalogoFavoritoTableCompanion(
      catalogoId: Value(catalogoId),
      nombre: Value(nombre),
      idiomaId: Value(idiomaId),
      tipoPrecioCatalogoId: Value(tipoPrecioCatalogoId),
      tipoPrecioCatalogoNombre: Value(tipoPrecioCatalogoNombre),
      tipoCatalogoId: Value(tipoCatalogoId),
      tagBusqueda: Value(tagBusqueda),
      orden: Value(orden),
      nombreFicheroPortada: Value(nombreFicheroPortada),
      nombreFicheroCatalogo: Value(nombreFicheroCatalogo),
      descarga: Value(descarga),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CatalogoDTO)
class CatalogoFavoritoTable extends Table {
  @override
  String get tableName => 'CATALOGO_FAVORITO';

  @override
  Set<Column> get primaryKey => {catalogoId};

  IntColumn get catalogoId => integer().named('CATALOGO_ID')();
  TextColumn get nombre => text().named('NOMBRE')();
  TextColumn get idiomaId => text().named('IDIOMA_ID')();
  TextColumn get tipoPrecioCatalogoId =>
      text().named('TIPO_PRECIO_CATALOGO_ID')();
  TextColumn get tipoPrecioCatalogoNombre =>
      text().named('TIPO_PRECIO_CATALOGO_NOMBRE')();
  TextColumn get tipoCatalogoId => text().named('TIPO_CATALOGO_ID')();
  TextColumn get tagBusqueda => text().named('TAG_BUSQUEDA')();
  IntColumn get orden => integer().named('ORDEN')();
  TextColumn get nombreFicheroPortada =>
      text().named('NOMBRE_FICHERO_PORTADA')();
  TextColumn get nombreFicheroCatalogo =>
      text().named('NOMBRE_FICHERO_CATALOGO')();
  TextColumn get descarga => text().named('DESCARGA_SN')();
}
