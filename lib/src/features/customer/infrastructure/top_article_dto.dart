import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/top_article.dart';

part 'top_article_dto.freezed.dart';
part 'top_article_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class TopArticleDTO with _$TopArticleDTO implements Insertable<TopArticleDTO> {
  const TopArticleDTO._();
  const factory TopArticleDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _TopArticleDTO;

  factory TopArticleDTO.fromJson(Map<String, dynamic> json) =>
      _$TopArticleDTOFromJson(json);

  TopArticle toDomain() {
    return TopArticle(
      articleId: articleId,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return TopArticleTableCompanion(
      articleId: Value(articleId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(TopArticleDTO)
class TopArticleTable extends Table {
  @override
  String get tableName => 'ESTADISTICAS_ARTICULOS_TOP';

  @override
  Set<Column> get primaryKey => {articleId};

  TextColumn get articleId => text().named('ARTICULO_ID')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
