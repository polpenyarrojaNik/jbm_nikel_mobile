import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_spare.dart';

import '../../../core/infrastructure/database.dart';

part 'article_spare_dto.freezed.dart';
part 'article_spare_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticleSpareDTO
    with _$ArticleSpareDTO
    implements Insertable<ArticleSpareDTO> {
  const ArticleSpareDTO._();
  const factory ArticleSpareDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'RECAMBIO_ID') required String id,
    @JsonKey(name: 'DESCRIPCION') required String description,
    @JsonKey(name: 'CANTIDAD') required double quantity,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticleSpareDTO;

  factory ArticleSpareDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticleSpareDTOFromJson(json);

  ArticleSpare toDomain() {
    return ArticleSpare(
      articleId: articleId,
      id: id,
      description: description,
      quantity: quantity,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticleSpareTableCompanion(
      articleId: Value(articleId),
      id: Value(id),
      description: Value(description),
      quantity: Value(quantity),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticleSpareDTO)
class ArticleSpareTable extends Table {
  @override
  String get tableName => 'ARTICULOS_COMPONENTES';

  @override
  Set<Column> get primaryKey => {articleId, id};

  TextColumn get articleId => text().named('ARTICULO_ID')();
  TextColumn get id => text().named('ARTICULO_COMPONENTE_ID')();
  TextColumn get description => text().named('DESCRIPCION')();
  RealColumn get quantity => real().named('CANTIDAD')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
