import 'package:freezed_annotation/freezed_annotation.dart';

part 'log.freezed.dart';

@freezed
abstract class Log with _$Log {
  const Log._();
  const factory Log({
    int? id,
    required String level,
    required String message,
    String? error,
    required String appId,
    required String appBuild,
    required String appBuildName,
    required String userId,
    required String device,
    String? userEmail,
    String? userName,
    required DateTime timestamp,
  }) = _Log;
}
