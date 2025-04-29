import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jbm_headers.freezed.dart';
part 'jbm_headers.g.dart';

typedef Json = Map<String, dynamic>;

@freezed
class JBMHeaders with _$JBMHeaders {
  const JBMHeaders._();
  const factory JBMHeaders({String? etag, int? maxPage, int? totalRows}) =
      _JBMHeaders;

  factory JBMHeaders.parse(Response<dynamic> response) {
    final totalPages = response.headers.map['Total-Pages']?[0];
    final totalRows = response.headers.map['Total-Rows']?[0];

    return JBMHeaders(
      etag: getEtag(response.headers.map),
      maxPage: totalPages == null ? null : int.tryParse(totalPages),
      totalRows: totalRows == null ? null : int.tryParse(totalRows),
    );
  }

  factory JBMHeaders.fromJson(Map<String, dynamic> json) =>
      _$JBMHeadersFromJson(json);

  static String? getEtag(Map<String, List<String>> map) {
    if (map['ETag'] != null) {
      if (map['ETag']![0].contains('W/')) {
        final eTag = map['ETag']?[0] as String;
        return eTag.substring(2);
      }
      return map['ETag']?[0];
    }
    return null;
  }
}
