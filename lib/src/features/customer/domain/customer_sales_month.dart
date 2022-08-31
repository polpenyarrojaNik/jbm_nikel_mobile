import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_sales_month.freezed.dart';

@freezed
class CustomerSalesMonth with _$CustomerSalesMonth {
  const CustomerSalesMonth._();
  const factory CustomerSalesMonth({
    required double customerId,
    required double month,
    required double amount,
    required double cost,
  }) = _CustomerSalesMonth;
}
