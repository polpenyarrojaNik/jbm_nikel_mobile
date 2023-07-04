import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';

import '../../../core/infrastructure/remote_database.dart';
import '../domain/articulo_grupo_neto.dart';

part 'articulo_grupo_neto_dto.freezed.dart';
part 'articulo_grupo_neto_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloGrupoNetoDTO
    with _$ArticuloGrupoNetoDTO
    implements Insertable<ArticuloGrupoNetoDTO> {
  const ArticuloGrupoNetoDTO._();
  const factory ArticuloGrupoNetoDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'GRUPO_NETO_ID') required String grupoNetoId,
    @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
    required String grupoNetoDescripcion,
    @JsonKey(name: 'CANTIDAD_DESDE') required int cantidadDesde,
    @JsonKey(name: 'PRECIO') required double precio,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'TIPO_PRECIO') required int tipoPrecio,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticuloGrupoNetoDTO;

  factory ArticuloGrupoNetoDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloGrupoNetoDTOFromJson(json);

  ArticuloGrupoNeto toDomain() {
    return ArticuloGrupoNeto(
      articuloId: articuloId,
      grupoNetoId: grupoNetoId,
      grupoNetoDescripcion: grupoNetoDescripcion,
      cantidadDesde: cantidadDesde,
      precio: precio.toMoney(currencyId: divisaId),
      divisaId: divisaId,
      tipoPrecio: tipoPrecio,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticuloGrupoNetoTableCompanion(
      articuloId: Value(articuloId),
      grupoNetoId: Value(grupoNetoId),
      grupoNetoDescripcion: Value(grupoNetoDescripcion),
      cantidadDesde: Value(cantidadDesde),
      precio: Value(precio),
      divisaId: Value(divisaId),
      tipoPrecio: Value(tipoPrecio),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticuloGrupoNetoDTO)
class ArticuloGrupoNetoTable extends Table {
  @override
  String get tableName => 'ARTICULOS_GRUPOS_NETOS_PRECIO';

  @override
  Set<Column> get primaryKey => {articuloId, grupoNetoId, cantidadDesde};

  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get grupoNetoId => text().named('GRUPO_NETO_ID')();
  TextColumn get grupoNetoDescripcion =>
      text().named('GRUPO_NETO_DESCRIPCION')();
  IntColumn get cantidadDesde => integer().named('CANTIDAD_DESDE')();
  RealColumn get precio => real().named('PRECIO')();
  TextColumn get divisaId => text().named('DIVISA_ID')();
  IntColumn get tipoPrecio => integer().named('TIPO_PRECIO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
