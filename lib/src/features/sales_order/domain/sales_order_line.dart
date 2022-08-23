import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'sales_order_line.freezed.dart';

@freezed
class SalesOrderLine with _$SalesOrderLine {
  const SalesOrderLine._();
  const factory SalesOrderLine({
    required String companyId,
    required String salesOrderId,
    required String id,
    required String articleId,
    String? articleDescription,
    required double quantity,
    required Money divisaPrice,
    double? priceType,
    required double discount1,
    required double discount2,
    required double discount3,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _SalesOrderLine;
}
