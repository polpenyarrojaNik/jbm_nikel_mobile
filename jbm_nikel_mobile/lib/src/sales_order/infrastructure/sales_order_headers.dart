import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_order_headers.freezed.dart';
part 'sales_order_headers.g.dart';

@freezed
class SalesOrderHeaders with _$SalesOrderHeaders {
  const SalesOrderHeaders._();
  const factory SalesOrderHeaders({
    int? maxPage,
    int? totalRows,
  }) = _SalesOrderHeaders;

  factory SalesOrderHeaders.parse(Response response) {
    final totalPages = response.headers.map['Total-Pages']?[0];
    final totalRows = response.headers.map['Total-Rows']?[0];

    return SalesOrderHeaders(
      maxPage: totalPages == null
          ? null
          : int.tryParse(
              totalPages,
            ),
      totalRows: totalRows == null
          ? null
          : int.tryParse(
              totalRows,
            ),
    );
  }

  factory SalesOrderHeaders.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderHeadersFromJson(json);
}
