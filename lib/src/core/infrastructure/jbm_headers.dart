import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jbm_headers.freezed.dart';
part 'jbm_headers.g.dart';

@freezed
class JbmHeaders with _$JbmHeaders {
  const JbmHeaders._();
  const factory JbmHeaders({
    String? etag,
    int? maxPage,
    int? totalRows,
  }) = _JBMHeaders;

  factory JbmHeaders.parse(Response response) {
    final totalPages = response.headers.map['Total-Pages']?[0];
    final totalRows = response.headers.map['Total-Rows']?[0];

    return JbmHeaders(
      etag: getEtag(response.headers.map),
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

  factory JbmHeaders.fromJson(Map<String, dynamic> json) =>
      _$JbmHeadersFromJson(json);

  static String? getEtag(Map<String, List<String>> map) {
    if (map['ETag'] != null) {
      if (map['ETag']![0].contains('W/')) {
        final eTag = map['ETag']?[0] as String;
        return eTag.substring(2);
      }
      return map['ETag']?[0];
    }
    return map[0] as String?;
  }
}
