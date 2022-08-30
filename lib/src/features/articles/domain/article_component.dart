import 'package:freezed_annotation/freezed_annotation.dart';

import 'article.dart';

part 'article_component.freezed.dart';

@freezed
class ArticleComponent with _$ArticleComponent {
  const ArticleComponent._();
  const factory ArticleComponent(
      {required Article article,
      required Article articleComponent,
      required double quantity,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticleComponent;
}
