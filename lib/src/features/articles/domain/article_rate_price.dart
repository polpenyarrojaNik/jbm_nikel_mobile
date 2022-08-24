import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'article_rate_price.freezed.dart';

@freezed
class ArticleRatePrice with _$ArticleRatePrice {
  const ArticleRatePrice._();
  const factory ArticleRatePrice(
      {required String articleId,
      required String rateId,
      String? rateDescription,
      required double quantityFrom,
      required Money price,
      double? priceType,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticleRatePrice;
}
