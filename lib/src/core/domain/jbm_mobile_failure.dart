import 'package:freezed_annotation/freezed_annotation.dart';

part 'jbm_mobile_failure.freezed.dart';

@freezed
class JbmMobileFailure with _$JbmMobileFailure {
  const JbmMobileFailure._();
  const factory JbmMobileFailure.api(int? errorCode, String? message) = _Api;
  const factory JbmMobileFailure.db(String? message) = _DB;
  const factory JbmMobileFailure.local(String? message) = _Local;
}
