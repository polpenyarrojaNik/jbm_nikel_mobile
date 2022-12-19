import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/articulo_sustitutivo.dart';

part 'articulo_sustitutivo_dto.freezed.dart';
part 'articulo_sustitutivo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloSustitutivoDTO
    with _$ArticuloSustitutivoDTO
    implements Insertable<ArticuloSustitutivoDTO> {
  const ArticuloSustitutivoDTO._();
  const factory ArticuloSustitutivoDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')
        required String articuloSustitutivoId,
    @JsonKey(name: 'ORDEN') required int orden,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticuloSustitutivoDTO;

  factory ArticuloSustitutivoDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloSustitutivoDTOFromJson(json);

  ArticuloSustitutivo toDomain(
      {required String articuloSustitutivoDescripcion,
      required int stockDisponible}) {
    return ArticuloSustitutivo(
      articuloId: articuloId,
      articuloSustitutivoId: articuloSustitutivoId,
      articuloSustitutivoDescription: articuloSustitutivoDescripcion,
      orden: orden,
      stockDisponible: stockDisponible,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticuloSustitutivoTableCompanion(
      articuloId: Value(articuloId),
      articuloSustitutivoId: Value(articuloSustitutivoId),
      orden: Value(orden),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticuloSustitutivoDTO)
class ArticuloSustitutivoTable extends Table {
  @override
  String get tableName => 'ARTICULOS_SUSTITUTIVOS';

  @override
  Set<Column> get primaryKey => {articuloId, articuloSustitutivoId};

  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get articuloSustitutivoId =>
      text().named('ARTICULO_ID_SUSTITUTIVO')();
  IntColumn get orden => integer().named('ORDEN')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
