import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_rappel.freezed.dart';

@freezed
class CustomerRappel with _$CustomerRappel {
  const CustomerRappel._();
  const factory CustomerRappel(
      {required String customerId,
      required String rappelId,
      required String description,
      required DateTime dateFrom,
      DateTime? dateTo,
      required DateTime lastUpdated,
      required bool deleted}) = _CustomerRappel;
}
