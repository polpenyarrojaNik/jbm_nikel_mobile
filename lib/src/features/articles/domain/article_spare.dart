import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_spare.freezed.dart';

@freezed
class ArticleSpare with _$ArticleSpare {
  const ArticleSpare._();
  const factory ArticleSpare(
      {required String articleId,
      required String id,
      required String description,
      required double quantity,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticleSpare;
}
