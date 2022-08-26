import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/article_substitute.dart';

part 'article_substitute_dto.freezed.dart';
part 'article_substitute_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticleSubstituteDTO
    with _$ArticleSubstituteDTO
    implements Insertable<ArticleSubstituteDTO> {
  const ArticleSubstituteDTO._();
  const factory ArticleSubstituteDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') required String id,
    @JsonKey(name: 'ORDEN') required double order,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticleSubstituteDTO;

  factory ArticleSubstituteDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticleSubstituteDTOFromJson(json);

  ArticleSubstitute toDomain() {
    return ArticleSubstitute(
      articleId: articleId,
      id: id,
      order: order,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticleSubstituteTableCompanion(
      articleId: Value(articleId),
      id: Value(id),
      order: Value(order),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticleSubstituteDTO)
class ArticleSubstituteTable extends Table {
  @override
  String get tableName => 'ARTICULOS_SUSTITUTIVOS';

  @override
  Set<Column> get primaryKey => {articleId, id};

  TextColumn get articleId => text().named('ARTICULO_ID')();
  TextColumn get id => text().named('ARTICULO_ID_SUSTITUTIVO')();
  RealColumn get order => real().named('ORDEN')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
