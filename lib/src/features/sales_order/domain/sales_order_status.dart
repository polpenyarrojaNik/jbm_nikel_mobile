import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_order_status.freezed.dart';

@freezed
class SalesOrderStatus with _$SalesOrderStatus {
  const SalesOrderStatus._();
  const factory SalesOrderStatus(
      {required String id,
      required String description,
      required DateTime lastUpdate,
      required bool deleted}) = _SalesOrderStatus;
}
