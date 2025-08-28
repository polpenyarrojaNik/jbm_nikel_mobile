// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LogDTO {

@JsonKey(name: 'ID') int? get id;@JsonKey(name: 'LOG_LEVEL') String get level;@JsonKey(name: 'LOG_MESSAGE') String get message;@JsonKey(name: 'LOG_ERROR') String? get error;@JsonKey(name: 'APP_ID') String get appId;@JsonKey(name: 'APP_BUILD') String get appBuild;@JsonKey(name: 'APP_BUILD_NAME') String get appBuildName;@JsonKey(name: 'DEVICE') String get device;@JsonKey(name: 'USER_ID') String get userId;@JsonKey(name: 'USER_EMAIL') String? get userEmail;@JsonKey(name: 'USER_NAME') String? get userName;@JsonKey(name: 'TIMESTAMP') DateTime get timestamp;
/// Create a copy of LogDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogDTOCopyWith<LogDTO> get copyWith => _$LogDTOCopyWithImpl<LogDTO>(this as LogDTO, _$identity);

  /// Serializes this LogDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appBuild, appBuild) || other.appBuild == appBuild)&&(identical(other.appBuildName, appBuildName) || other.appBuildName == appBuildName)&&(identical(other.device, device) || other.device == device)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level,message,error,appId,appBuild,appBuildName,device,userId,userEmail,userName,timestamp);

@override
String toString() {
  return 'LogDTO(id: $id, level: $level, message: $message, error: $error, appId: $appId, appBuild: $appBuild, appBuildName: $appBuildName, device: $device, userId: $userId, userEmail: $userEmail, userName: $userName, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $LogDTOCopyWith<$Res>  {
  factory $LogDTOCopyWith(LogDTO value, $Res Function(LogDTO) _then) = _$LogDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ID') int? id,@JsonKey(name: 'LOG_LEVEL') String level,@JsonKey(name: 'LOG_MESSAGE') String message,@JsonKey(name: 'LOG_ERROR') String? error,@JsonKey(name: 'APP_ID') String appId,@JsonKey(name: 'APP_BUILD') String appBuild,@JsonKey(name: 'APP_BUILD_NAME') String appBuildName,@JsonKey(name: 'DEVICE') String device,@JsonKey(name: 'USER_ID') String userId,@JsonKey(name: 'USER_EMAIL') String? userEmail,@JsonKey(name: 'USER_NAME') String? userName,@JsonKey(name: 'TIMESTAMP') DateTime timestamp
});




}
/// @nodoc
class _$LogDTOCopyWithImpl<$Res>
    implements $LogDTOCopyWith<$Res> {
  _$LogDTOCopyWithImpl(this._self, this._then);

  final LogDTO _self;
  final $Res Function(LogDTO) _then;

/// Create a copy of LogDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? level = null,Object? message = null,Object? error = freezed,Object? appId = null,Object? appBuild = null,Object? appBuildName = null,Object? device = null,Object? userId = null,Object? userEmail = freezed,Object? userName = freezed,Object? timestamp = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,appBuild: null == appBuild ? _self.appBuild : appBuild // ignore: cast_nullable_to_non_nullable
as String,appBuildName: null == appBuildName ? _self.appBuildName : appBuildName // ignore: cast_nullable_to_non_nullable
as String,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [LogDTO].
extension LogDTOPatterns on LogDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogDTO value)  $default,){
final _that = this;
switch (_that) {
case _LogDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogDTO value)?  $default,){
final _that = this;
switch (_that) {
case _LogDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'LOG_LEVEL')  String level, @JsonKey(name: 'LOG_MESSAGE')  String message, @JsonKey(name: 'LOG_ERROR')  String? error, @JsonKey(name: 'APP_ID')  String appId, @JsonKey(name: 'APP_BUILD')  String appBuild, @JsonKey(name: 'APP_BUILD_NAME')  String appBuildName, @JsonKey(name: 'DEVICE')  String device, @JsonKey(name: 'USER_ID')  String userId, @JsonKey(name: 'USER_EMAIL')  String? userEmail, @JsonKey(name: 'USER_NAME')  String? userName, @JsonKey(name: 'TIMESTAMP')  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogDTO() when $default != null:
return $default(_that.id,_that.level,_that.message,_that.error,_that.appId,_that.appBuild,_that.appBuildName,_that.device,_that.userId,_that.userEmail,_that.userName,_that.timestamp);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'LOG_LEVEL')  String level, @JsonKey(name: 'LOG_MESSAGE')  String message, @JsonKey(name: 'LOG_ERROR')  String? error, @JsonKey(name: 'APP_ID')  String appId, @JsonKey(name: 'APP_BUILD')  String appBuild, @JsonKey(name: 'APP_BUILD_NAME')  String appBuildName, @JsonKey(name: 'DEVICE')  String device, @JsonKey(name: 'USER_ID')  String userId, @JsonKey(name: 'USER_EMAIL')  String? userEmail, @JsonKey(name: 'USER_NAME')  String? userName, @JsonKey(name: 'TIMESTAMP')  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _LogDTO():
return $default(_that.id,_that.level,_that.message,_that.error,_that.appId,_that.appBuild,_that.appBuildName,_that.device,_that.userId,_that.userEmail,_that.userName,_that.timestamp);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'LOG_LEVEL')  String level, @JsonKey(name: 'LOG_MESSAGE')  String message, @JsonKey(name: 'LOG_ERROR')  String? error, @JsonKey(name: 'APP_ID')  String appId, @JsonKey(name: 'APP_BUILD')  String appBuild, @JsonKey(name: 'APP_BUILD_NAME')  String appBuildName, @JsonKey(name: 'DEVICE')  String device, @JsonKey(name: 'USER_ID')  String userId, @JsonKey(name: 'USER_EMAIL')  String? userEmail, @JsonKey(name: 'USER_NAME')  String? userName, @JsonKey(name: 'TIMESTAMP')  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _LogDTO() when $default != null:
return $default(_that.id,_that.level,_that.message,_that.error,_that.appId,_that.appBuild,_that.appBuildName,_that.device,_that.userId,_that.userEmail,_that.userName,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LogDTO extends LogDTO {
  const _LogDTO({@JsonKey(name: 'ID') required this.id, @JsonKey(name: 'LOG_LEVEL') required this.level, @JsonKey(name: 'LOG_MESSAGE') required this.message, @JsonKey(name: 'LOG_ERROR') this.error, @JsonKey(name: 'APP_ID') required this.appId, @JsonKey(name: 'APP_BUILD') required this.appBuild, @JsonKey(name: 'APP_BUILD_NAME') required this.appBuildName, @JsonKey(name: 'DEVICE') required this.device, @JsonKey(name: 'USER_ID') required this.userId, @JsonKey(name: 'USER_EMAIL') this.userEmail, @JsonKey(name: 'USER_NAME') this.userName, @JsonKey(name: 'TIMESTAMP') required this.timestamp}): super._();
  factory _LogDTO.fromJson(Map<String, dynamic> json) => _$LogDTOFromJson(json);

@override@JsonKey(name: 'ID') final  int? id;
@override@JsonKey(name: 'LOG_LEVEL') final  String level;
@override@JsonKey(name: 'LOG_MESSAGE') final  String message;
@override@JsonKey(name: 'LOG_ERROR') final  String? error;
@override@JsonKey(name: 'APP_ID') final  String appId;
@override@JsonKey(name: 'APP_BUILD') final  String appBuild;
@override@JsonKey(name: 'APP_BUILD_NAME') final  String appBuildName;
@override@JsonKey(name: 'DEVICE') final  String device;
@override@JsonKey(name: 'USER_ID') final  String userId;
@override@JsonKey(name: 'USER_EMAIL') final  String? userEmail;
@override@JsonKey(name: 'USER_NAME') final  String? userName;
@override@JsonKey(name: 'TIMESTAMP') final  DateTime timestamp;

/// Create a copy of LogDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogDTOCopyWith<_LogDTO> get copyWith => __$LogDTOCopyWithImpl<_LogDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LogDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appBuild, appBuild) || other.appBuild == appBuild)&&(identical(other.appBuildName, appBuildName) || other.appBuildName == appBuildName)&&(identical(other.device, device) || other.device == device)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level,message,error,appId,appBuild,appBuildName,device,userId,userEmail,userName,timestamp);

@override
String toString() {
  return 'LogDTO(id: $id, level: $level, message: $message, error: $error, appId: $appId, appBuild: $appBuild, appBuildName: $appBuildName, device: $device, userId: $userId, userEmail: $userEmail, userName: $userName, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$LogDTOCopyWith<$Res> implements $LogDTOCopyWith<$Res> {
  factory _$LogDTOCopyWith(_LogDTO value, $Res Function(_LogDTO) _then) = __$LogDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ID') int? id,@JsonKey(name: 'LOG_LEVEL') String level,@JsonKey(name: 'LOG_MESSAGE') String message,@JsonKey(name: 'LOG_ERROR') String? error,@JsonKey(name: 'APP_ID') String appId,@JsonKey(name: 'APP_BUILD') String appBuild,@JsonKey(name: 'APP_BUILD_NAME') String appBuildName,@JsonKey(name: 'DEVICE') String device,@JsonKey(name: 'USER_ID') String userId,@JsonKey(name: 'USER_EMAIL') String? userEmail,@JsonKey(name: 'USER_NAME') String? userName,@JsonKey(name: 'TIMESTAMP') DateTime timestamp
});




}
/// @nodoc
class __$LogDTOCopyWithImpl<$Res>
    implements _$LogDTOCopyWith<$Res> {
  __$LogDTOCopyWithImpl(this._self, this._then);

  final _LogDTO _self;
  final $Res Function(_LogDTO) _then;

/// Create a copy of LogDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? level = null,Object? message = null,Object? error = freezed,Object? appId = null,Object? appBuild = null,Object? appBuildName = null,Object? device = null,Object? userId = null,Object? userEmail = freezed,Object? userName = freezed,Object? timestamp = null,}) {
  return _then(_LogDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,appBuild: null == appBuild ? _self.appBuild : appBuild // ignore: cast_nullable_to_non_nullable
as String,appBuildName: null == appBuildName ? _self.appBuildName : appBuildName // ignore: cast_nullable_to_non_nullable
as String,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
