import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/articulo_recambio.dart';

import '../../../core/infrastructure/remote_database.dart';

part 'articulo_recambio_dto.freezed.dart';
part 'articulo_recambio_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloRecambioDTO
    with _$ArticuloRecambioDTO
    implements Insertable<ArticuloRecambioDTO> {
  const ArticuloRecambioDTO._();
  const factory ArticuloRecambioDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'RECAMBIO_ID') required String id,
    @JsonKey(name: 'DESCRIPCION') required String descripcion,
    @JsonKey(name: 'CANTIDAD') required int cantidad,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticuloRecambioDTO;

  factory ArticuloRecambioDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloRecambioDTOFromJson(json);

  ArticuloRecambio toDomain() {
    return ArticuloRecambio(
      articuloId: articuloId,
      id: id,
      descripcion: descripcion,
      cantidad: cantidad,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticuloRecambioTableCompanion(
      articuloId: Value(articuloId),
      id: Value(id),
      descripcion: Value(descripcion),
      cantidad: Value(cantidad),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticuloRecambioDTO)
class ArticuloRecambioTable extends Table {
  @override
  String get tableName => 'ARTICULOS_RECAMBIOS';

  @override
  Set<Column> get primaryKey => {articuloId, id};

  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get id => text().named('RECAMBIO_ID')();
  TextColumn get descripcion => text().named('DESCRIPCION')();
  IntColumn get cantidad => integer().named('CANTIDAD')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
