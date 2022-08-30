import 'package:freezed_annotation/freezed_annotation.dart';

import '../../articles/domain/article.dart';

part 'top_article.freezed.dart';

@freezed
class TopArticle with _$TopArticle {
  const TopArticle._();
  const factory TopArticle(
      {required Article article,
      required DateTime lastUpdated,
      required bool deleted}) = _TopArticle;
}
