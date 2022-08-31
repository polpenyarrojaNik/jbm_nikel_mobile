import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_article_sales.freezed.dart';

@freezed
class CustomerArticleSales with _$CustomerArticleSales {
  const CustomerArticleSales._();
  const factory CustomerArticleSales({
    required double customerId,
    required double month,
    required double amount,
    required double cost,
  }) = _CustomerArticleSales;
}
