import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_user.freezed.dart';

@freezed
class CustomerUser with _$CustomerUser {
  const CustomerUser._();
  const factory CustomerUser(
      {required String customerId,
      required String userId,
      required DateTime lastUpdated,
      required bool deleted}) = _CustomerUser;
}
