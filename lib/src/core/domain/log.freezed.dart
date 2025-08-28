// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Log {

 int? get id; String get level; String get message; String? get error; String get appId; String get appBuild; String get appBuildName; String get userId; String get device; String? get userEmail; String? get userName; DateTime get timestamp;
/// Create a copy of Log
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogCopyWith<Log> get copyWith => _$LogCopyWithImpl<Log>(this as Log, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Log&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appBuild, appBuild) || other.appBuild == appBuild)&&(identical(other.appBuildName, appBuildName) || other.appBuildName == appBuildName)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.device, device) || other.device == device)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,id,level,message,error,appId,appBuild,appBuildName,userId,device,userEmail,userName,timestamp);

@override
String toString() {
  return 'Log(id: $id, level: $level, message: $message, error: $error, appId: $appId, appBuild: $appBuild, appBuildName: $appBuildName, userId: $userId, device: $device, userEmail: $userEmail, userName: $userName, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $LogCopyWith<$Res>  {
  factory $LogCopyWith(Log value, $Res Function(Log) _then) = _$LogCopyWithImpl;
@useResult
$Res call({
 int? id, String level, String message, String? error, String appId, String appBuild, String appBuildName, String userId, String device, String? userEmail, String? userName, DateTime timestamp
});




}
/// @nodoc
class _$LogCopyWithImpl<$Res>
    implements $LogCopyWith<$Res> {
  _$LogCopyWithImpl(this._self, this._then);

  final Log _self;
  final $Res Function(Log) _then;

/// Create a copy of Log
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? level = null,Object? message = null,Object? error = freezed,Object? appId = null,Object? appBuild = null,Object? appBuildName = null,Object? userId = null,Object? device = null,Object? userEmail = freezed,Object? userName = freezed,Object? timestamp = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,appBuild: null == appBuild ? _self.appBuild : appBuild // ignore: cast_nullable_to_non_nullable
as String,appBuildName: null == appBuildName ? _self.appBuildName : appBuildName // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as String,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Log].
extension LogPatterns on Log {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Log value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Log() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Log value)  $default,){
final _that = this;
switch (_that) {
case _Log():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Log value)?  $default,){
final _that = this;
switch (_that) {
case _Log() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String level,  String message,  String? error,  String appId,  String appBuild,  String appBuildName,  String userId,  String device,  String? userEmail,  String? userName,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Log() when $default != null:
return $default(_that.id,_that.level,_that.message,_that.error,_that.appId,_that.appBuild,_that.appBuildName,_that.userId,_that.device,_that.userEmail,_that.userName,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String level,  String message,  String? error,  String appId,  String appBuild,  String appBuildName,  String userId,  String device,  String? userEmail,  String? userName,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _Log():
return $default(_that.id,_that.level,_that.message,_that.error,_that.appId,_that.appBuild,_that.appBuildName,_that.userId,_that.device,_that.userEmail,_that.userName,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String level,  String message,  String? error,  String appId,  String appBuild,  String appBuildName,  String userId,  String device,  String? userEmail,  String? userName,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _Log() when $default != null:
return $default(_that.id,_that.level,_that.message,_that.error,_that.appId,_that.appBuild,_that.appBuildName,_that.userId,_that.device,_that.userEmail,_that.userName,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc


class _Log extends Log {
  const _Log({this.id, required this.level, required this.message, this.error, required this.appId, required this.appBuild, required this.appBuildName, required this.userId, required this.device, this.userEmail, this.userName, required this.timestamp}): super._();
  

@override final  int? id;
@override final  String level;
@override final  String message;
@override final  String? error;
@override final  String appId;
@override final  String appBuild;
@override final  String appBuildName;
@override final  String userId;
@override final  String device;
@override final  String? userEmail;
@override final  String? userName;
@override final  DateTime timestamp;

/// Create a copy of Log
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogCopyWith<_Log> get copyWith => __$LogCopyWithImpl<_Log>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Log&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appBuild, appBuild) || other.appBuild == appBuild)&&(identical(other.appBuildName, appBuildName) || other.appBuildName == appBuildName)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.device, device) || other.device == device)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,id,level,message,error,appId,appBuild,appBuildName,userId,device,userEmail,userName,timestamp);

@override
String toString() {
  return 'Log(id: $id, level: $level, message: $message, error: $error, appId: $appId, appBuild: $appBuild, appBuildName: $appBuildName, userId: $userId, device: $device, userEmail: $userEmail, userName: $userName, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$LogCopyWith<$Res> implements $LogCopyWith<$Res> {
  factory _$LogCopyWith(_Log value, $Res Function(_Log) _then) = __$LogCopyWithImpl;
@override @useResult
$Res call({
 int? id, String level, String message, String? error, String appId, String appBuild, String appBuildName, String userId, String device, String? userEmail, String? userName, DateTime timestamp
});




}
/// @nodoc
class __$LogCopyWithImpl<$Res>
    implements _$LogCopyWith<$Res> {
  __$LogCopyWithImpl(this._self, this._then);

  final _Log _self;
  final $Res Function(_Log) _then;

/// Create a copy of Log
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? level = null,Object? message = null,Object? error = freezed,Object? appId = null,Object? appBuild = null,Object? appBuildName = null,Object? userId = null,Object? device = null,Object? userEmail = freezed,Object? userName = freezed,Object? timestamp = null,}) {
  return _then(_Log(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,appBuild: null == appBuild ? _self.appBuild : appBuild // ignore: cast_nullable_to_non_nullable
as String,appBuildName: null == appBuildName ? _self.appBuildName : appBuildName // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as String,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
