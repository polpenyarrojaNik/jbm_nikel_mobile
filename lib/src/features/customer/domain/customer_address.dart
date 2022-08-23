import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/country.dart';

part 'customer_address.freezed.dart';

@freezed
class CustomerAddress with _$CustomerAddress {
  const CustomerAddress._();
  const factory CustomerAddress(
      {required String customerId,
      required String addressId,
      String? name,
      String? address1,
      String? address2,
      String? zipCode,
      String? city,
      String? state,
      Country? country,
      required double latitude,
      required double longitude,
      required DateTime lastUpdated,
      required bool deleted}) = _CustomerAddress;
}
