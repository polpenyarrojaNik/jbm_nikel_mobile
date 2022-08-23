import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/country.dart';
import 'package:jbm_nikel_mobile/src/core/domain/divisa.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order_status.dart';
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
    String? customerId,
    String? addressId,
    String? customerName,
    String? shippingAddress1,
    String? shippingAddress2,
    String? zipCode,
    String? city,
    String? state,
    Country? country,
    required Divisa divisa,
    Money? taxBase,
    Money? ivaAmount,
    Money? total,
    required SalesOrderStatus salesOrderStatus,
    required bool isOffer,
    required double promptPaymentDiscount,
    required double iva,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _SalesOrder;
}
