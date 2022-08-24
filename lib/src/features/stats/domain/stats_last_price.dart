import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_last_price.freezed.dart';

@freezed
class StatsLastPrice with _$StatsLastPrice {
  const StatsLastPrice._();
  const factory StatsLastPrice(
      {required String customerId,
      required String articleId,
      required DateTime date,
      required double divisaPrice,
      required double priceType,
      required double discount1,
      required double discount2,
      required double discount3,
      required DateTime lastUpdated,
      required bool deleted}) = _StatsLastPrice;
}
