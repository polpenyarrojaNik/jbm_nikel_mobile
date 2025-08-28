// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tipo_catalogo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TipoCatalogo {

 String get tipoCatalogoId; String get descripcion;
/// Create a copy of TipoCatalogo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TipoCatalogoCopyWith<TipoCatalogo> get copyWith => _$TipoCatalogoCopyWithImpl<TipoCatalogo>(this as TipoCatalogo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TipoCatalogo&&(identical(other.tipoCatalogoId, tipoCatalogoId) || other.tipoCatalogoId == tipoCatalogoId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion));
}


@override
int get hashCode => Object.hash(runtimeType,tipoCatalogoId,descripcion);

@override
String toString() {
  return 'TipoCatalogo(tipoCatalogoId: $tipoCatalogoId, descripcion: $descripcion)';
}


}

/// @nodoc
abstract mixin class $TipoCatalogoCopyWith<$Res>  {
  factory $TipoCatalogoCopyWith(TipoCatalogo value, $Res Function(TipoCatalogo) _then) = _$TipoCatalogoCopyWithImpl;
@useResult
$Res call({
 String tipoCatalogoId, String descripcion
});




}
/// @nodoc
class _$TipoCatalogoCopyWithImpl<$Res>
    implements $TipoCatalogoCopyWith<$Res> {
  _$TipoCatalogoCopyWithImpl(this._self, this._then);

  final TipoCatalogo _self;
  final $Res Function(TipoCatalogo) _then;

/// Create a copy of TipoCatalogo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tipoCatalogoId = null,Object? descripcion = null,}) {
  return _then(_self.copyWith(
tipoCatalogoId: null == tipoCatalogoId ? _self.tipoCatalogoId : tipoCatalogoId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TipoCatalogo].
extension TipoCatalogoPatterns on TipoCatalogo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TipoCatalogo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TipoCatalogo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TipoCatalogo value)  $default,){
final _that = this;
switch (_that) {
case _TipoCatalogo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TipoCatalogo value)?  $default,){
final _that = this;
switch (_that) {
case _TipoCatalogo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tipoCatalogoId,  String descripcion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TipoCatalogo() when $default != null:
return $default(_that.tipoCatalogoId,_that.descripcion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tipoCatalogoId,  String descripcion)  $default,) {final _that = this;
switch (_that) {
case _TipoCatalogo():
return $default(_that.tipoCatalogoId,_that.descripcion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tipoCatalogoId,  String descripcion)?  $default,) {final _that = this;
switch (_that) {
case _TipoCatalogo() when $default != null:
return $default(_that.tipoCatalogoId,_that.descripcion);case _:
  return null;

}
}

}

/// @nodoc


class _TipoCatalogo extends TipoCatalogo {
  const _TipoCatalogo({required this.tipoCatalogoId, required this.descripcion}): super._();
  

@override final  String tipoCatalogoId;
@override final  String descripcion;

/// Create a copy of TipoCatalogo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TipoCatalogoCopyWith<_TipoCatalogo> get copyWith => __$TipoCatalogoCopyWithImpl<_TipoCatalogo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TipoCatalogo&&(identical(other.tipoCatalogoId, tipoCatalogoId) || other.tipoCatalogoId == tipoCatalogoId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion));
}


@override
int get hashCode => Object.hash(runtimeType,tipoCatalogoId,descripcion);

@override
String toString() {
  return 'TipoCatalogo(tipoCatalogoId: $tipoCatalogoId, descripcion: $descripcion)';
}


}

/// @nodoc
abstract mixin class _$TipoCatalogoCopyWith<$Res> implements $TipoCatalogoCopyWith<$Res> {
  factory _$TipoCatalogoCopyWith(_TipoCatalogo value, $Res Function(_TipoCatalogo) _then) = __$TipoCatalogoCopyWithImpl;
@override @useResult
$Res call({
 String tipoCatalogoId, String descripcion
});




}
/// @nodoc
class __$TipoCatalogoCopyWithImpl<$Res>
    implements _$TipoCatalogoCopyWith<$Res> {
  __$TipoCatalogoCopyWithImpl(this._self, this._then);

  final _TipoCatalogo _self;
  final $Res Function(_TipoCatalogo) _then;

/// Create a copy of TipoCatalogo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tipoCatalogoId = null,Object? descripcion = null,}) {
  return _then(_TipoCatalogo(
tipoCatalogoId: null == tipoCatalogoId ? _self.tipoCatalogoId : tipoCatalogoId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
