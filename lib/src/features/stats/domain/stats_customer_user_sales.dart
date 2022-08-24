import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_customer_user_sales.freezed.dart';

@freezed
class StatsCustomerUserSales with _$StatsCustomerUserSales {
  const StatsCustomerUserSales._();
  const factory StatsCustomerUserSales(
      {required double year,
      required double month,
      required String customerId,
      required String articleId,
      double? units,
      double? amount,
      double? cost,
      required DateTime lastUpdated,
      required bool deleted}) = _StatsCustomerUserSales;
}
