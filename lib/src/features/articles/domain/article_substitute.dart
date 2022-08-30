import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article.dart';

part 'article_substitute.freezed.dart';

@freezed
class ArticleSubstitute with _$ArticleSubstitute {
  const ArticleSubstitute._();
  const factory ArticleSubstitute(
      {required String articleId,
      required Article articleSubstitute,
      required double order,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticleSubstitute;
}
