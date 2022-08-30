import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_net_group_price.freezed.dart';

@freezed
class ArticleNetGroupPrice with _$ArticleNetGroupPrice {
  const ArticleNetGroupPrice._();
  const factory ArticleNetGroupPrice(
      {required String articleId,
      required String netGroupId,
      String? netGroupDescription,
      required double quantityFrom,
      required double price,
      double? priceType,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticleNetGroupPrice;
}
