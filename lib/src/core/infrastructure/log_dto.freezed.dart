// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogDTO _$LogDTOFromJson(Map<String, dynamic> json) {
  return _LogDTO.fromJson(json);
}

/// @nodoc
mixin _$LogDTO {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'DEVICE')
  String get device => throw _privateConstructorUsedError;
  @JsonKey(name: 'USER_ID')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'USER_EMAIL')
  String? get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'USER_NAME')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIMESTAMP')
  DateTime get timestamp => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'LOG_LEVEL') String level,
      @JsonKey(name: 'LOG_MESSAGE') String message,
      @JsonKey(name: 'LOG_ERROR') String? error,
      @JsonKey(name: 'APP_ID') String appId,
      @JsonKey(name: 'APP_BUILD') String appBuild,
      @JsonKey(name: 'APP_BUILD_NAME') String appBuildName,
      @JsonKey(name: 'DEVICE') String device,
      @JsonKey(name: 'USER_ID') String userId,
      @JsonKey(name: 'USER_EMAIL') String? userEmail,
      @JsonKey(name: 'USER_NAME') String? userName,
      @JsonKey(name: 'TIMESTAMP') DateTime timestamp});
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
    Object? id = freezed,
    Object? level = null,
    Object? message = null,
    Object? error = freezed,
    Object? appId = null,
    Object? appBuild = null,
    Object? appBuildName = null,
    Object? device = null,
    Object? userId = null,
    Object? userEmail = freezed,
    Object? userName = freezed,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogDTOImplCopyWith<$Res> implements $LogDTOCopyWith<$Res> {
  factory _$$LogDTOImplCopyWith(
          _$LogDTOImpl value, $Res Function(_$LogDTOImpl) then) =
      __$$LogDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'LOG_LEVEL') String level,
      @JsonKey(name: 'LOG_MESSAGE') String message,
      @JsonKey(name: 'LOG_ERROR') String? error,
      @JsonKey(name: 'APP_ID') String appId,
      @JsonKey(name: 'APP_BUILD') String appBuild,
      @JsonKey(name: 'APP_BUILD_NAME') String appBuildName,
      @JsonKey(name: 'DEVICE') String device,
      @JsonKey(name: 'USER_ID') String userId,
      @JsonKey(name: 'USER_EMAIL') String? userEmail,
      @JsonKey(name: 'USER_NAME') String? userName,
      @JsonKey(name: 'TIMESTAMP') DateTime timestamp});
}

/// @nodoc
class __$$LogDTOImplCopyWithImpl<$Res>
    extends _$LogDTOCopyWithImpl<$Res, _$LogDTOImpl>
    implements _$$LogDTOImplCopyWith<$Res> {
  __$$LogDTOImplCopyWithImpl(
      _$LogDTOImpl _value, $Res Function(_$LogDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? level = null,
    Object? message = null,
    Object? error = freezed,
    Object? appId = null,
    Object? appBuild = null,
    Object? appBuildName = null,
    Object? device = null,
    Object? userId = null,
    Object? userEmail = freezed,
    Object? userName = freezed,
    Object? timestamp = null,
  }) {
    return _then(_$LogDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogDTOImpl extends _LogDTO {
  const _$LogDTOImpl(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'LOG_LEVEL') required this.level,
      @JsonKey(name: 'LOG_MESSAGE') required this.message,
      @JsonKey(name: 'LOG_ERROR') this.error,
      @JsonKey(name: 'APP_ID') required this.appId,
      @JsonKey(name: 'APP_BUILD') required this.appBuild,
      @JsonKey(name: 'APP_BUILD_NAME') required this.appBuildName,
      @JsonKey(name: 'DEVICE') required this.device,
      @JsonKey(name: 'USER_ID') required this.userId,
      @JsonKey(name: 'USER_EMAIL') this.userEmail,
      @JsonKey(name: 'USER_NAME') this.userName,
      @JsonKey(name: 'TIMESTAMP') required this.timestamp})
      : super._();

  factory _$LogDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogDTOImplFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
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
  @JsonKey(name: 'DEVICE')
  final String device;
  @override
  @JsonKey(name: 'USER_ID')
  final String userId;
  @override
  @JsonKey(name: 'USER_EMAIL')
  final String? userEmail;
  @override
  @JsonKey(name: 'USER_NAME')
  final String? userName;
  @override
  @JsonKey(name: 'TIMESTAMP')
  final DateTime timestamp;

  @override
  String toString() {
    return 'LogDTO(id: $id, level: $level, message: $message, error: $error, appId: $appId, appBuild: $appBuild, appBuildName: $appBuildName, device: $device, userId: $userId, userEmail: $userEmail, userName: $userName, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.appBuild, appBuild) ||
                other.appBuild == appBuild) &&
            (identical(other.appBuildName, appBuildName) ||
                other.appBuildName == appBuildName) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, level, message, error, appId,
      appBuild, appBuildName, device, userId, userEmail, userName, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogDTOImplCopyWith<_$LogDTOImpl> get copyWith =>
      __$$LogDTOImplCopyWithImpl<_$LogDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogDTOImplToJson(
      this,
    );
  }
}

abstract class _LogDTO extends LogDTO {
  const factory _LogDTO(
          {@JsonKey(name: 'ID') required final int? id,
          @JsonKey(name: 'LOG_LEVEL') required final String level,
          @JsonKey(name: 'LOG_MESSAGE') required final String message,
          @JsonKey(name: 'LOG_ERROR') final String? error,
          @JsonKey(name: 'APP_ID') required final String appId,
          @JsonKey(name: 'APP_BUILD') required final String appBuild,
          @JsonKey(name: 'APP_BUILD_NAME') required final String appBuildName,
          @JsonKey(name: 'DEVICE') required final String device,
          @JsonKey(name: 'USER_ID') required final String userId,
          @JsonKey(name: 'USER_EMAIL') final String? userEmail,
          @JsonKey(name: 'USER_NAME') final String? userName,
          @JsonKey(name: 'TIMESTAMP') required final DateTime timestamp}) =
      _$LogDTOImpl;
  const _LogDTO._() : super._();

  factory _LogDTO.fromJson(Map<String, dynamic> json) = _$LogDTOImpl.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
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
  @JsonKey(name: 'DEVICE')
  String get device;
  @override
  @JsonKey(name: 'USER_ID')
  String get userId;
  @override
  @JsonKey(name: 'USER_EMAIL')
  String? get userEmail;
  @override
  @JsonKey(name: 'USER_NAME')
  String? get userName;
  @override
  @JsonKey(name: 'TIMESTAMP')
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$LogDTOImplCopyWith<_$LogDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
