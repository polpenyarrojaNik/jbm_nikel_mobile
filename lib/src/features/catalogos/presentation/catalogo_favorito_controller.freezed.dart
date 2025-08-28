// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalogo_favorito_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatalogoFavoritoControllerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogoFavoritoControllerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogoFavoritoControllerState()';
}


}

/// @nodoc
class $CatalogoFavoritoControllerStateCopyWith<$Res>  {
$CatalogoFavoritoControllerStateCopyWith(CatalogoFavoritoControllerState _, $Res Function(CatalogoFavoritoControllerState) __);
}


/// Adds pattern-matching-related methods to [CatalogoFavoritoControllerState].
extension CatalogoFavoritoControllerStatePatterns on CatalogoFavoritoControllerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _loading value)?  checking,TResult Function( _favorite value)?  favorite,TResult Function( _error value)?  error,TResult Function( _noFavorite value)?  noFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _loading() when checking != null:
return checking(_that);case _favorite() when favorite != null:
return favorite(_that);case _error() when error != null:
return error(_that);case _noFavorite() when noFavorite != null:
return noFavorite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _loading value)  checking,required TResult Function( _favorite value)  favorite,required TResult Function( _error value)  error,required TResult Function( _noFavorite value)  noFavorite,}){
final _that = this;
switch (_that) {
case _loading():
return checking(_that);case _favorite():
return favorite(_that);case _error():
return error(_that);case _noFavorite():
return noFavorite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _loading value)?  checking,TResult? Function( _favorite value)?  favorite,TResult? Function( _error value)?  error,TResult? Function( _noFavorite value)?  noFavorite,}){
final _that = this;
switch (_that) {
case _loading() when checking != null:
return checking(_that);case _favorite() when favorite != null:
return favorite(_that);case _error() when error != null:
return error(_that);case _noFavorite() when noFavorite != null:
return noFavorite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checking,TResult Function()?  favorite,TResult Function( Object error,  StackTrace? stackTrace)?  error,TResult Function()?  noFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _loading() when checking != null:
return checking();case _favorite() when favorite != null:
return favorite();case _error() when error != null:
return error(_that.error,_that.stackTrace);case _noFavorite() when noFavorite != null:
return noFavorite();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checking,required TResult Function()  favorite,required TResult Function( Object error,  StackTrace? stackTrace)  error,required TResult Function()  noFavorite,}) {final _that = this;
switch (_that) {
case _loading():
return checking();case _favorite():
return favorite();case _error():
return error(_that.error,_that.stackTrace);case _noFavorite():
return noFavorite();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checking,TResult? Function()?  favorite,TResult? Function( Object error,  StackTrace? stackTrace)?  error,TResult? Function()?  noFavorite,}) {final _that = this;
switch (_that) {
case _loading() when checking != null:
return checking();case _favorite() when favorite != null:
return favorite();case _error() when error != null:
return error(_that.error,_that.stackTrace);case _noFavorite() when noFavorite != null:
return noFavorite();case _:
  return null;

}
}

}

/// @nodoc


class _loading extends CatalogoFavoritoControllerState {
  const _loading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogoFavoritoControllerState.checking()';
}


}




/// @nodoc


class _favorite extends CatalogoFavoritoControllerState {
  const _favorite(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _favorite);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogoFavoritoControllerState.favorite()';
}


}




/// @nodoc


class _error extends CatalogoFavoritoControllerState {
  const _error(this.error, {this.stackTrace}): super._();
  

 final  Object error;
 final  StackTrace? stackTrace;

/// Create a copy of CatalogoFavoritoControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$errorCopyWith<_error> get copyWith => __$errorCopyWithImpl<_error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _error&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString() {
  return 'CatalogoFavoritoControllerState.error(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$errorCopyWith<$Res> implements $CatalogoFavoritoControllerStateCopyWith<$Res> {
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

/// Create a copy of CatalogoFavoritoControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = freezed,}) {
  return _then(_error(
null == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _noFavorite extends CatalogoFavoritoControllerState {
  const _noFavorite(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _noFavorite);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogoFavoritoControllerState.noFavorite()';
}


}




// dart format on
