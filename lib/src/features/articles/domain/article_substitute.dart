import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_substitute.freezed.dart';

@freezed
class ArticleSubstitute with _$ArticleSubstitute {
  const ArticleSubstitute._();
  const factory ArticleSubstitute(
      {required String articleId,
      required String id,
      required double order,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticleSubstitute;
}
