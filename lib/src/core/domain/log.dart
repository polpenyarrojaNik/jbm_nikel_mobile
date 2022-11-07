import 'package:freezed_annotation/freezed_annotation.dart';

part 'log.freezed.dart';

@freezed
class Log with _$Log {
  const Log._();
  const factory Log(
      {required String level,
      required String message,
      String? error,
      required String appId,
      required String appBuild,
      required String appBuildName,
      required String userId}) = _Log;
}
