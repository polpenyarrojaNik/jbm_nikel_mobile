import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/log.dart';

part 'log_dto.freezed.dart';
part 'log_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class LogDTO with _$LogDTO {
  const LogDTO._();
  const factory LogDTO({
    @JsonKey(name: 'LOG_LEVEL') required String level,
    @JsonKey(name: 'LOG_MESSAGE') required String message,
    @JsonKey(name: 'LOG_ERROR') String? error,
    @JsonKey(name: 'APP_ID') required String appId,
    @JsonKey(name: 'APP_BUILD') required String appBuild,
    @JsonKey(name: 'APP_BUILD_NAME') required String appBuildName,
    @JsonKey(name: 'USER_ID') required String userId,
  }) = _LogDTO;

  factory LogDTO.fromJson(Map<String, dynamic> json) => _$LogDTOFromJson(json);

  factory LogDTO.fromDomain(Log _) {
    return LogDTO(
        level: _.level,
        message: _.message,
        error: _.error,
        appId: _.appId,
        appBuild: _.appBuild,
        appBuildName: _.appBuildName,
        userId: _.userId);
  }

  Log toDomain() {
    return Log(
        level: level,
        message: message,
        appId: appId,
        appBuild: appBuild,
        appBuildName: appBuildName,
        userId: userId);
  }
}
