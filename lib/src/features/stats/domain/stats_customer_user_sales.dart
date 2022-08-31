import 'package:freezed_annotation/freezed_annotation.dart';

import '../../articles/domain/article.dart';
import '../../customer/domain/customer.dart';

part 'stats_customer_user_sales.freezed.dart';

@freezed
class StatsCustomerUserSales with _$StatsCustomerUserSales {
  const StatsCustomerUserSales._();
  const factory StatsCustomerUserSales(
      {required double year,
      required double month,
      required Customer customer,
      required Article article,
      double? units,
      double? amount,
      double? cost,
      required DateTime lastUpdated,
      required bool deleted}) = _StatsCustomerUserSales;
}
