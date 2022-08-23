import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/family.dart';
import 'package:jbm_nikel_mobile/src/core/domain/subfamily.dart';

part 'customer_discount.freezed.dart';

@freezed
class CustomerDiscount with _$CustomerDiscount {
  const CustomerDiscount._();
  const factory CustomerDiscount(
      {required String customerId,
      required String articleId,
      required Family family,
      required Subfamily subfamily,
      required double quantityFrom,
      required double discount,
      required DateTime lastUpdated,
      required bool deleted}) = _CustomerDiscount;
}
