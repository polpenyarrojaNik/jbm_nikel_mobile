import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_net_group.freezed.dart';

@freezed
class CustomerNetGroup with _$CustomerNetGroup {
  const CustomerNetGroup._();
  const factory CustomerNetGroup(
      {required String customerId,
      required String netGroupId,
      String? netGroupDescription,
      required DateTime lastUpdated,
      required bool deleted}) = _CustomerNetGroup;
}
