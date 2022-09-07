import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../../articulos/domain/articulo.dart';
import '../domain/articulo_top.dart';

part 'articulo_top_dto.freezed.dart';
part 'articulo_top_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloTopDTO
    with _$ArticuloTopDTO
    implements Insertable<ArticuloTopDTO> {
  const ArticuloTopDTO._();
  const factory ArticuloTopDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticuloTopDTO;

  factory ArticuloTopDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloTopDTOFromJson(json);

  ArticuloTop toDomain({required Articulo articulo}) {
    return ArticuloTop(
      articulo: articulo,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticuloTopTableCompanion(
      articuloId: Value(articuloId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticuloTopDTO)
class ArticuloTopTable extends Table {
  @override
  String get tableName => 'ESTADISTICAS_ARTICULOS_TOP';

  @override
  Set<Column> get primaryKey => {articuloId};

  TextColumn get articuloId => text().named('ARTICULO_ID')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
