import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:jbm_nikel_mobile/src/features/customer/domain/collection_method.dart';

part 'customer_pending_payment.freezed.dart';

@freezed
class CustomerPendingPayment with _$CustomerPendingPayment {
  const CustomerPendingPayment._();
  const factory CustomerPendingPayment(
      {required String customerId,
      required String effectId,
      String? invoiceId,
      DateTime? invoiceDate,
      DateTime? expirationDate,
      CollectionMethod? collectionMethod,
      String? collectionStatusId,
      double? amount,
      DateTime? initialExpirationDate,
      bool? expirationJBM,
      required DateTime lastUpdated,
      required bool deleted}) = _CustomerPendingPayment;
}
