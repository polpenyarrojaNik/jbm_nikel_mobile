import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_net_price.freezed.dart';

@freezed
class CustomerNetPrice with _$CustomerNetPrice {
  const CustomerNetPrice._();
  const factory CustomerNetPrice(
      {required String customerId,
      required String articleId,
      required double quantityFrom,
      required double price,
      double? priceType,
      required DateTime lastUpdated,
      required bool deleted}) = _CustomerNetPrice;
}
