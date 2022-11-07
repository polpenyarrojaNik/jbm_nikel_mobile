// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'log_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogDTO _$LogDTOFromJson(Map<String, dynamic> json) {
  return _LogDTO.fromJson(json);
}

/// @nodoc
mixin _$LogDTO {
  @JsonKey(name: 'LOG_LEVEL')
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'LOG_MESSAGE')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'LOG_ERROR')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'APP_ID')
  String get appId => throw _privateConstructorUsedError;
  @JsonKey(name: 'APP_BUILD')
  String get appBuild => throw _privateConstructorUsedError;
  @JsonKey(name: 'APP_BUILD_NAME')
  String get appBuildName => throw _privateConstructorUsedError;
  @JsonKey(name: 'USER_ID')
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogDTOCopyWith<LogDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogDTOCopyWith<$Res> {
  factory $LogDTOCopyWith(LogDTO value, $Res Function(LogDTO) then) =
      _$LogDTOCopyWithImpl<$Res, LogDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'LOG_LEVEL') String level,
      @JsonKey(name: 'LOG_MESSAGE') String message,
      @JsonKey(name: 'LOG_ERROR') String? error,
      @JsonKey(name: 'APP_ID') String appId,
      @JsonKey(name: 'APP_BUILD') String appBuild,
      @JsonKey(name: 'APP_BUILD_NAME') String appBuildName,
      @JsonKey(name: 'USER_ID') String userId});
}

/// @nodoc
class _$LogDTOCopyWithImpl<$Res, $Val extends LogDTO>
    implements $LogDTOCopyWith<$Res> {
  _$LogDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? message = null,
    Object? error = freezed,
    Object? appId = null,
    Object? appBuild = null,
    Object? appBuildName = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      appBuild: null == appBuild
          ? _value.appBuild
          : appBuild // ignore: cast_nullable_to_non_nullable
              as String,
      appBuildName: null == appBuildName
          ? _value.appBuildName
          : appBuildName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogDTOCopyWith<$Res> implements $LogDTOCopyWith<$Res> {
  factory _$$_LogDTOCopyWith(_$_LogDTO value, $Res Function(_$_LogDTO) then) =
      __$$_LogDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'LOG_LEVEL') String level,
      @JsonKey(name: 'LOG_MESSAGE') String message,
      @JsonKey(name: 'LOG_ERROR') String? error,
      @JsonKey(name: 'APP_ID') String appId,
      @JsonKey(name: 'APP_BUILD') String appBuild,
      @JsonKey(name: 'APP_BUILD_NAME') String appBuildName,
      @JsonKey(name: 'USER_ID') String userId});
}

/// @nodoc
class __$$_LogDTOCopyWithImpl<$Res>
    extends _$LogDTOCopyWithImpl<$Res, _$_LogDTO>
    implements _$$_LogDTOCopyWith<$Res> {
  __$$_LogDTOCopyWithImpl(_$_LogDTO _value, $Res Function(_$_LogDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? message = null,
    Object? error = freezed,
    Object? appId = null,
    Object? appBuild = null,
    Object? appBuildName = null,
    Object? userId = null,
  }) {
    return _then(_$_LogDTO(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      appBuild: null == appBuild
          ? _value.appBuild
          : appBuild // ignore: cast_nullable_to_non_nullable
              as String,
      appBuildName: null == appBuildName
          ? _value.appBuildName
          : appBuildName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogDTO extends _LogDTO {
  const _$_LogDTO(
      {@JsonKey(name: 'LOG_LEVEL') required this.level,
      @JsonKey(name: 'LOG_MESSAGE') required this.message,
      @JsonKey(name: 'LOG_ERROR') this.error,
      @JsonKey(name: 'APP_ID') required this.appId,
      @JsonKey(name: 'APP_BUILD') required this.appBuild,
      @JsonKey(name: 'APP_BUILD_NAME') required this.appBuildName,
      @JsonKey(name: 'USER_ID') required this.userId})
      : super._();

  factory _$_LogDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LogDTOFromJson(json);

  @override
  @JsonKey(name: 'LOG_LEVEL')
  final String level;
  @override
  @JsonKey(name: 'LOG_MESSAGE')
  final String message;
  @override
  @JsonKey(name: 'LOG_ERROR')
  final String? error;
  @override
  @JsonKey(name: 'APP_ID')
  final String appId;
  @override
  @JsonKey(name: 'APP_BUILD')
  final String appBuild;
  @override
  @JsonKey(name: 'APP_BUILD_NAME')
  final String appBuildName;
  @override
  @JsonKey(name: 'USER_ID')
  final String userId;

  @override
  String toString() {
    return 'LogDTO(level: $level, message: $message, error: $error, appId: $appId, appBuild: $appBuild, appBuildName: $appBuildName, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogDTO &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.appBuild, appBuild) ||
                other.appBuild == appBuild) &&
            (identical(other.appBuildName, appBuildName) ||
                other.appBuildName == appBuildName) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level, message, error, appId,
      appBuild, appBuildName, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogDTOCopyWith<_$_LogDTO> get copyWith =>
      __$$_LogDTOCopyWithImpl<_$_LogDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogDTOToJson(
      this,
    );
  }
}

abstract class _LogDTO extends LogDTO {
  const factory _LogDTO(
      {@JsonKey(name: 'LOG_LEVEL') required final String level,
      @JsonKey(name: 'LOG_MESSAGE') required final String message,
      @JsonKey(name: 'LOG_ERROR') final String? error,
      @JsonKey(name: 'APP_ID') required final String appId,
      @JsonKey(name: 'APP_BUILD') required final String appBuild,
      @JsonKey(name: 'APP_BUILD_NAME') required final String appBuildName,
      @JsonKey(name: 'USER_ID') required final String userId}) = _$_LogDTO;
  const _LogDTO._() : super._();

  factory _LogDTO.fromJson(Map<String, dynamic> json) = _$_LogDTO.fromJson;

  @override
  @JsonKey(name: 'LOG_LEVEL')
  String get level;
  @override
  @JsonKey(name: 'LOG_MESSAGE')
  String get message;
  @override
  @JsonKey(name: 'LOG_ERROR')
  String? get error;
  @override
  @JsonKey(name: 'APP_ID')
  String get appId;
  @override
  @JsonKey(name: 'APP_BUILD')
  String get appBuild;
  @override
  @JsonKey(name: 'APP_BUILD_NAME')
  String get appBuildName;
  @override
  @JsonKey(name: 'USER_ID')
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_LogDTOCopyWith<_$_LogDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
