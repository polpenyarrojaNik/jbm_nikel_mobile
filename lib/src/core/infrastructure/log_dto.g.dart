// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogDTO _$$_LogDTOFromJson(Map<String, dynamic> json) => _$_LogDTO(
      level: json['LOG_LEVEL'] as String,
      message: json['LOG_MESSAGE'] as String,
      error: json['LOG_ERROR'] as String?,
      appId: json['APP_ID'] as String,
      appBuild: json['APP_BUILD'] as String,
      appBuildName: json['APP_BUILD_NAME'] as String,
      userId: json['USER_ID'] as String,
    );

Map<String, dynamic> _$$_LogDTOToJson(_$_LogDTO instance) => <String, dynamic>{
      'LOG_LEVEL': instance.level,
      'LOG_MESSAGE': instance.message,
      'LOG_ERROR': instance.error,
      'APP_ID': instance.appId,
      'APP_BUILD': instance.appBuild,
      'APP_BUILD_NAME': instance.appBuildName,
      'USER_ID': instance.userId,
    };
