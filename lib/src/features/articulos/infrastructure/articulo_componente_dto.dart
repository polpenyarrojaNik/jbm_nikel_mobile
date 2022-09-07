import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_componente.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/articulo.dart';

part 'articulo_componente_dto.freezed.dart';
part 'articulo_componente_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloComponenteDTO
    with _$ArticuloComponenteDTO
    implements Insertable<ArticuloComponenteDTO> {
  const ArticuloComponenteDTO._();
  const factory ArticuloComponenteDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'ARTICULO_COMPONENTE_ID')
        required String articuloComponenteId,
    @JsonKey(name: 'CANTIDAD') required double cantidad,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticuloComponenteDTO;

  factory ArticuloComponenteDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloComponenteDTOFromJson(json);

  ArticuloComponente toDomain(
      {required Articulo articulo, required Articulo articuloComponente}) {
    return ArticuloComponente(
      articulo: articulo,
      articuloComponente: articuloComponente,
      cantidad: cantidad,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticuloComponenteTableCompanion(
      articuloId: Value(articuloId),
      articuloComponenteId: Value(articuloComponenteId),
      cantidad: Value(cantidad),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticuloComponenteDTO)
class ArticuloComponenteTable extends Table {
  @override
  String get tableName => 'ARTICULOS_COMPONENTES';

  @override
  Set<Column> get primaryKey => {articuloId, articuloComponenteId};

  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get articuloComponenteId =>
      text().named('ARTICULO_COMPONENTE_ID')();
  RealColumn get cantidad => real().named('CANTIDAD')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
