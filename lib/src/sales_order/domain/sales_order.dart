import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'sales_order.freezed.dart';

@freezed
class SalesOrder with _$SalesOrder {
  const SalesOrder._();
  const factory SalesOrder({
    required String companyId,
    required String salesOrderId,
    required DateTime salesOrderDate,
    required String salesType,
    required String customerId,
    required String? customerName,
    required String? shippingAddress1,
    required String? shippingAddress2,
    required String? zipCode,
    required String? city,
    required String? state,
    required String? countryId,
    required String divisaId,
    required Money taxBase,
    required Money ivaAmount,
    required Money total,
    required DateTime? lastUpdated,
    required bool deleted,
  }) = _SalesOrder;
}
