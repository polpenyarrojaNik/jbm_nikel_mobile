// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashControllerState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashControllerState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashControllerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashControllerState()';
}


}

/// @nodoc
class $SplashControllerStateCopyWith<$Res>  {
$SplashControllerStateCopyWith(SplashControllerState _, $Res Function(SplashControllerState) __);
}


/// Adds pattern-matching-related methods to [SplashControllerState].
extension SplashControllerStatePatterns on SplashControllerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _downloadDatabase value)?  downloadDatabase,TResult Function( _loading value)?  loading,TResult Function( _initial value)?  initial,TResult Function( _notDownloaded value)?  notDownloaded,TResult Function( _error value)?  error,TResult Function( _data value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _downloadDatabase() when downloadDatabase != null:
return downloadDatabase(_that);case _loading() when loading != null:
return loading(_that);case _initial() when initial != null:
return initial(_that);case _notDownloaded() when notDownloaded != null:
return notDownloaded(_that);case _error() when error != null:
return error(_that);case _data() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _downloadDatabase value)  downloadDatabase,required TResult Function( _loading value)  loading,required TResult Function( _initial value)  initial,required TResult Function( _notDownloaded value)  notDownloaded,required TResult Function( _error value)  error,required TResult Function( _data value)  data,}){
final _that = this;
switch (_that) {
case _downloadDatabase():
return downloadDatabase(_that);case _loading():
return loading(_that);case _initial():
return initial(_that);case _notDownloaded():
return notDownloaded(_that);case _error():
return error(_that);case _data():
return data(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _downloadDatabase value)?  downloadDatabase,TResult? Function( _loading value)?  loading,TResult? Function( _initial value)?  initial,TResult? Function( _notDownloaded value)?  notDownloaded,TResult? Function( _error value)?  error,TResult? Function( _data value)?  data,}){
final _that = this;
switch (_that) {
case _downloadDatabase() when downloadDatabase != null:
return downloadDatabase(_that);case _loading() when loading != null:
return loading(_that);case _initial() when initial != null:
return initial(_that);case _notDownloaded() when notDownloaded != null:
return notDownloaded(_that);case _error() when error != null:
return error(_that);case _data() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int lastScehmaVersion,  int newScehmaVersion)?  downloadDatabase,TResult Function()?  loading,TResult Function()?  initial,TResult Function()?  notDownloaded,TResult Function( Object error,  StackTrace? stackTrace)?  error,TResult Function()?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _downloadDatabase() when downloadDatabase != null:
return downloadDatabase(_that.lastScehmaVersion,_that.newScehmaVersion);case _loading() when loading != null:
return loading();case _initial() when initial != null:
return initial();case _notDownloaded() when notDownloaded != null:
return notDownloaded();case _error() when error != null:
return error(_that.error,_that.stackTrace);case _data() when data != null:
return data();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int lastScehmaVersion,  int newScehmaVersion)  downloadDatabase,required TResult Function()  loading,required TResult Function()  initial,required TResult Function()  notDownloaded,required TResult Function( Object error,  StackTrace? stackTrace)  error,required TResult Function()  data,}) {final _that = this;
switch (_that) {
case _downloadDatabase():
return downloadDatabase(_that.lastScehmaVersion,_that.newScehmaVersion);case _loading():
return loading();case _initial():
return initial();case _notDownloaded():
return notDownloaded();case _error():
return error(_that.error,_that.stackTrace);case _data():
return data();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int lastScehmaVersion,  int newScehmaVersion)?  downloadDatabase,TResult? Function()?  loading,TResult? Function()?  initial,TResult? Function()?  notDownloaded,TResult? Function( Object error,  StackTrace? stackTrace)?  error,TResult? Function()?  data,}) {final _that = this;
switch (_that) {
case _downloadDatabase() when downloadDatabase != null:
return downloadDatabase(_that.lastScehmaVersion,_that.newScehmaVersion);case _loading() when loading != null:
return loading();case _initial() when initial != null:
return initial();case _notDownloaded() when notDownloaded != null:
return notDownloaded();case _error() when error != null:
return error(_that.error,_that.stackTrace);case _data() when data != null:
return data();case _:
  return null;

}
}

}

/// @nodoc


class _downloadDatabase extends SplashControllerState with DiagnosticableTreeMixin {
  const _downloadDatabase(this.lastScehmaVersion, this.newScehmaVersion): super._();
  

 final  int lastScehmaVersion;
 final  int newScehmaVersion;

/// Create a copy of SplashControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$downloadDatabaseCopyWith<_downloadDatabase> get copyWith => __$downloadDatabaseCopyWithImpl<_downloadDatabase>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashControllerState.downloadDatabase'))
    ..add(DiagnosticsProperty('lastScehmaVersion', lastScehmaVersion))..add(DiagnosticsProperty('newScehmaVersion', newScehmaVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _downloadDatabase&&(identical(other.lastScehmaVersion, lastScehmaVersion) || other.lastScehmaVersion == lastScehmaVersion)&&(identical(other.newScehmaVersion, newScehmaVersion) || other.newScehmaVersion == newScehmaVersion));
}


@override
int get hashCode => Object.hash(runtimeType,lastScehmaVersion,newScehmaVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashControllerState.downloadDatabase(lastScehmaVersion: $lastScehmaVersion, newScehmaVersion: $newScehmaVersion)';
}


}

/// @nodoc
abstract mixin class _$downloadDatabaseCopyWith<$Res> implements $SplashControllerStateCopyWith<$Res> {
  factory _$downloadDatabaseCopyWith(_downloadDatabase value, $Res Function(_downloadDatabase) _then) = __$downloadDatabaseCopyWithImpl;
@useResult
$Res call({
 int lastScehmaVersion, int newScehmaVersion
});




}
/// @nodoc
class __$downloadDatabaseCopyWithImpl<$Res>
    implements _$downloadDatabaseCopyWith<$Res> {
  __$downloadDatabaseCopyWithImpl(this._self, this._then);

  final _downloadDatabase _self;
  final $Res Function(_downloadDatabase) _then;

/// Create a copy of SplashControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lastScehmaVersion = null,Object? newScehmaVersion = null,}) {
  return _then(_downloadDatabase(
null == lastScehmaVersion ? _self.lastScehmaVersion : lastScehmaVersion // ignore: cast_nullable_to_non_nullable
as int,null == newScehmaVersion ? _self.newScehmaVersion : newScehmaVersion // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _loading extends SplashControllerState with DiagnosticableTreeMixin {
  const _loading(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashControllerState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashControllerState.loading()';
}


}




/// @nodoc


class _initial extends SplashControllerState with DiagnosticableTreeMixin {
  const _initial(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashControllerState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashControllerState.initial()';
}


}




/// @nodoc


class _notDownloaded extends SplashControllerState with DiagnosticableTreeMixin {
  const _notDownloaded(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashControllerState.notDownloaded'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _notDownloaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashControllerState.notDownloaded()';
}


}




/// @nodoc


class _error extends SplashControllerState with DiagnosticableTreeMixin {
  const _error(this.error, {this.stackTrace}): super._();
  

 final  Object error;
 final  StackTrace? stackTrace;

/// Create a copy of SplashControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$errorCopyWith<_error> get copyWith => __$errorCopyWithImpl<_error>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashControllerState.error'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _error&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashControllerState.error(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$errorCopyWith<$Res> implements $SplashControllerStateCopyWith<$Res> {
  factory _$errorCopyWith(_error value, $Res Function(_error) _then) = __$errorCopyWithImpl;
@useResult
$Res call({
 Object error, StackTrace? stackTrace
});




}
/// @nodoc
class __$errorCopyWithImpl<$Res>
    implements _$errorCopyWith<$Res> {
  __$errorCopyWithImpl(this._self, this._then);

  final _error _self;
  final $Res Function(_error) _then;

/// Create a copy of SplashControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = freezed,}) {
  return _then(_error(
null == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _data extends SplashControllerState with DiagnosticableTreeMixin {
  const _data(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashControllerState.data'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _data);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashControllerState.data()';
}


}




// dart format on
