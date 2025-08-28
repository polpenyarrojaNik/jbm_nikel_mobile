// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_notifier_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SyncControllerState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SyncControllerState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncControllerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SyncControllerState()';
}


}

/// @nodoc
class $SyncControllerStateCopyWith<$Res>  {
$SyncControllerStateCopyWith(SyncControllerState _, $Res Function(SyncControllerState) __);
}


/// Adds pattern-matching-related methods to [SyncControllerState].
extension SyncControllerStatePatterns on SyncControllerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _initial value)?  initial,TResult Function( _shinchronizing value)?  synchronizing,TResult Function( _synchronized value)?  synchronized,TResult Function( _error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _initial() when initial != null:
return initial(_that);case _shinchronizing() when synchronizing != null:
return synchronizing(_that);case _synchronized() when synchronized != null:
return synchronized(_that);case _error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _initial value)  initial,required TResult Function( _shinchronizing value)  synchronizing,required TResult Function( _synchronized value)  synchronized,required TResult Function( _error value)  error,}){
final _that = this;
switch (_that) {
case _initial():
return initial(_that);case _shinchronizing():
return synchronizing(_that);case _synchronized():
return synchronized(_that);case _error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _initial value)?  initial,TResult? Function( _shinchronizing value)?  synchronizing,TResult? Function( _synchronized value)?  synchronized,TResult? Function( _error value)?  error,}){
final _that = this;
switch (_that) {
case _initial() when initial != null:
return initial(_that);case _shinchronizing() when synchronizing != null:
return synchronizing(_that);case _synchronized() when synchronized != null:
return synchronized(_that);case _error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  synchronizing,TResult Function()?  synchronized,TResult Function( Object error,  StackTrace? stackTrace)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _initial() when initial != null:
return initial();case _shinchronizing() when synchronizing != null:
return synchronizing();case _synchronized() when synchronized != null:
return synchronized();case _error() when error != null:
return error(_that.error,_that.stackTrace);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  synchronizing,required TResult Function()  synchronized,required TResult Function( Object error,  StackTrace? stackTrace)  error,}) {final _that = this;
switch (_that) {
case _initial():
return initial();case _shinchronizing():
return synchronizing();case _synchronized():
return synchronized();case _error():
return error(_that.error,_that.stackTrace);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  synchronizing,TResult? Function()?  synchronized,TResult? Function( Object error,  StackTrace? stackTrace)?  error,}) {final _that = this;
switch (_that) {
case _initial() when initial != null:
return initial();case _shinchronizing() when synchronizing != null:
return synchronizing();case _synchronized() when synchronized != null:
return synchronized();case _error() when error != null:
return error(_that.error,_that.stackTrace);case _:
  return null;

}
}

}

/// @nodoc


class _initial extends SyncControllerState with DiagnosticableTreeMixin {
  const _initial(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SyncControllerState.initial'))
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
  return 'SyncControllerState.initial()';
}


}




/// @nodoc


class _shinchronizing extends SyncControllerState with DiagnosticableTreeMixin {
  const _shinchronizing(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SyncControllerState.synchronizing'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _shinchronizing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SyncControllerState.synchronizing()';
}


}




/// @nodoc


class _synchronized extends SyncControllerState with DiagnosticableTreeMixin {
  const _synchronized(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SyncControllerState.synchronized'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _synchronized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SyncControllerState.synchronized()';
}


}




/// @nodoc


class _error extends SyncControllerState with DiagnosticableTreeMixin {
  const _error(this.error, {this.stackTrace}): super._();
  

 final  Object error;
 final  StackTrace? stackTrace;

/// Create a copy of SyncControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$errorCopyWith<_error> get copyWith => __$errorCopyWithImpl<_error>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SyncControllerState.error'))
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
  return 'SyncControllerState.error(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$errorCopyWith<$Res> implements $SyncControllerStateCopyWith<$Res> {
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

/// Create a copy of SyncControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = freezed,}) {
  return _then(_error(
null == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
