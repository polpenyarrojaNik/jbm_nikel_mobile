// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tipo_precio_catalogo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TipoPrecioCatalogo {

 String get tipoPrecioCatalogoId; String get descripcion;
/// Create a copy of TipoPrecioCatalogo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TipoPrecioCatalogoCopyWith<TipoPrecioCatalogo> get copyWith => _$TipoPrecioCatalogoCopyWithImpl<TipoPrecioCatalogo>(this as TipoPrecioCatalogo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TipoPrecioCatalogo&&(identical(other.tipoPrecioCatalogoId, tipoPrecioCatalogoId) || other.tipoPrecioCatalogoId == tipoPrecioCatalogoId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion));
}


@override
int get hashCode => Object.hash(runtimeType,tipoPrecioCatalogoId,descripcion);

@override
String toString() {
  return 'TipoPrecioCatalogo(tipoPrecioCatalogoId: $tipoPrecioCatalogoId, descripcion: $descripcion)';
}


}

/// @nodoc
abstract mixin class $TipoPrecioCatalogoCopyWith<$Res>  {
  factory $TipoPrecioCatalogoCopyWith(TipoPrecioCatalogo value, $Res Function(TipoPrecioCatalogo) _then) = _$TipoPrecioCatalogoCopyWithImpl;
@useResult
$Res call({
 String tipoPrecioCatalogoId, String descripcion
});




}
/// @nodoc
class _$TipoPrecioCatalogoCopyWithImpl<$Res>
    implements $TipoPrecioCatalogoCopyWith<$Res> {
  _$TipoPrecioCatalogoCopyWithImpl(this._self, this._then);

  final TipoPrecioCatalogo _self;
  final $Res Function(TipoPrecioCatalogo) _then;

/// Create a copy of TipoPrecioCatalogo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tipoPrecioCatalogoId = null,Object? descripcion = null,}) {
  return _then(_self.copyWith(
tipoPrecioCatalogoId: null == tipoPrecioCatalogoId ? _self.tipoPrecioCatalogoId : tipoPrecioCatalogoId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TipoPrecioCatalogo].
extension TipoPrecioCatalogoPatterns on TipoPrecioCatalogo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TipoPrecioCatalogo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TipoPrecioCatalogo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TipoPrecioCatalogo value)  $default,){
final _that = this;
switch (_that) {
case _TipoPrecioCatalogo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TipoPrecioCatalogo value)?  $default,){
final _that = this;
switch (_that) {
case _TipoPrecioCatalogo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tipoPrecioCatalogoId,  String descripcion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TipoPrecioCatalogo() when $default != null:
return $default(_that.tipoPrecioCatalogoId,_that.descripcion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tipoPrecioCatalogoId,  String descripcion)  $default,) {final _that = this;
switch (_that) {
case _TipoPrecioCatalogo():
return $default(_that.tipoPrecioCatalogoId,_that.descripcion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tipoPrecioCatalogoId,  String descripcion)?  $default,) {final _that = this;
switch (_that) {
case _TipoPrecioCatalogo() when $default != null:
return $default(_that.tipoPrecioCatalogoId,_that.descripcion);case _:
  return null;

}
}

}

/// @nodoc


class _TipoPrecioCatalogo extends TipoPrecioCatalogo {
  const _TipoPrecioCatalogo({required this.tipoPrecioCatalogoId, required this.descripcion}): super._();
  

@override final  String tipoPrecioCatalogoId;
@override final  String descripcion;

/// Create a copy of TipoPrecioCatalogo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TipoPrecioCatalogoCopyWith<_TipoPrecioCatalogo> get copyWith => __$TipoPrecioCatalogoCopyWithImpl<_TipoPrecioCatalogo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TipoPrecioCatalogo&&(identical(other.tipoPrecioCatalogoId, tipoPrecioCatalogoId) || other.tipoPrecioCatalogoId == tipoPrecioCatalogoId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion));
}


@override
int get hashCode => Object.hash(runtimeType,tipoPrecioCatalogoId,descripcion);

@override
String toString() {
  return 'TipoPrecioCatalogo(tipoPrecioCatalogoId: $tipoPrecioCatalogoId, descripcion: $descripcion)';
}


}

/// @nodoc
abstract mixin class _$TipoPrecioCatalogoCopyWith<$Res> implements $TipoPrecioCatalogoCopyWith<$Res> {
  factory _$TipoPrecioCatalogoCopyWith(_TipoPrecioCatalogo value, $Res Function(_TipoPrecioCatalogo) _then) = __$TipoPrecioCatalogoCopyWithImpl;
@override @useResult
$Res call({
 String tipoPrecioCatalogoId, String descripcion
});




}
/// @nodoc
class __$TipoPrecioCatalogoCopyWithImpl<$Res>
    implements _$TipoPrecioCatalogoCopyWith<$Res> {
  __$TipoPrecioCatalogoCopyWithImpl(this._self, this._then);

  final _TipoPrecioCatalogo _self;
  final $Res Function(_TipoPrecioCatalogo) _then;

/// Create a copy of TipoPrecioCatalogo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tipoPrecioCatalogoId = null,Object? descripcion = null,}) {
  return _then(_TipoPrecioCatalogo(
tipoPrecioCatalogoId: null == tipoPrecioCatalogoId ? _self.tipoPrecioCatalogoId : tipoPrecioCatalogoId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
