import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_component.dart';

import '../../../core/infrastructure/database.dart';

part 'article_component_dto.freezed.dart';
part 'article_component_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticleComponentDTO
    with _$ArticleComponentDTO
    implements Insertable<ArticleComponentDTO> {
  const ArticleComponentDTO._();
  const factory ArticleComponentDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'ARTICULO_COMPONENTE_ID') required String id,
    @JsonKey(name: 'CANTIDAD') required double quantity,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticleComponentDTO;

  factory ArticleComponentDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticleComponentDTOFromJson(json);

  ArticleComponent toDomain() {
    return ArticleComponent(
      articleId: articleId,
      id: id,
      quantity: quantity,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticleComponentTableCompanion(
      articleId: Value(articleId),
      id: Value(id),
      quantity: Value(quantity),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticleComponentDTO)
class ArticleComponentTable extends Table {
  @override
  String get tableName => 'ARTICULOS_COMPONENTES';

  @override
  Set<Column> get primaryKey => {articleId, id};

  TextColumn get articleId => text().named('ARTICULO_ID')();
  TextColumn get id => text().named('ARTICULO_COMPONENTE_ID')();
  RealColumn get quantity => real().named('CANTIDAD')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
