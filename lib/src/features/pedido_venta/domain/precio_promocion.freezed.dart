// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'precio_promocion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrecioPromocion {

 Money get precio; int get tipoPrecio; double get dto;
/// Create a copy of PrecioPromocion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrecioPromocionCopyWith<PrecioPromocion> get copyWith => _$PrecioPromocionCopyWithImpl<PrecioPromocion>(this as PrecioPromocion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrecioPromocion&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.dto, dto) || other.dto == dto));
}


@override
int get hashCode => Object.hash(runtimeType,precio,tipoPrecio,dto);

@override
String toString() {
  return 'PrecioPromocion(precio: $precio, tipoPrecio: $tipoPrecio, dto: $dto)';
}


}

/// @nodoc
abstract mixin class $PrecioPromocionCopyWith<$Res>  {
  factory $PrecioPromocionCopyWith(PrecioPromocion value, $Res Function(PrecioPromocion) _then) = _$PrecioPromocionCopyWithImpl;
@useResult
$Res call({
 Money precio, int tipoPrecio, double dto
});




}
/// @nodoc
class _$PrecioPromocionCopyWithImpl<$Res>
    implements $PrecioPromocionCopyWith<$Res> {
  _$PrecioPromocionCopyWithImpl(this._self, this._then);

  final PrecioPromocion _self;
  final $Res Function(PrecioPromocion) _then;

/// Create a copy of PrecioPromocion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? precio = null,Object? tipoPrecio = null,Object? dto = null,}) {
  return _then(_self.copyWith(
precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,dto: null == dto ? _self.dto : dto // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PrecioPromocion].
extension PrecioPromocionPatterns on PrecioPromocion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrecioPromocion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrecioPromocion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrecioPromocion value)  $default,){
final _that = this;
switch (_that) {
case _PrecioPromocion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrecioPromocion value)?  $default,){
final _that = this;
switch (_that) {
case _PrecioPromocion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Money precio,  int tipoPrecio,  double dto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrecioPromocion() when $default != null:
return $default(_that.precio,_that.tipoPrecio,_that.dto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Money precio,  int tipoPrecio,  double dto)  $default,) {final _that = this;
switch (_that) {
case _PrecioPromocion():
return $default(_that.precio,_that.tipoPrecio,_that.dto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Money precio,  int tipoPrecio,  double dto)?  $default,) {final _that = this;
switch (_that) {
case _PrecioPromocion() when $default != null:
return $default(_that.precio,_that.tipoPrecio,_that.dto);case _:
  return null;

}
}

}

/// @nodoc


class _PrecioPromocion extends PrecioPromocion {
  const _PrecioPromocion({required this.precio, required this.tipoPrecio, required this.dto}): super._();
  

@override final  Money precio;
@override final  int tipoPrecio;
@override final  double dto;

/// Create a copy of PrecioPromocion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrecioPromocionCopyWith<_PrecioPromocion> get copyWith => __$PrecioPromocionCopyWithImpl<_PrecioPromocion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrecioPromocion&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.dto, dto) || other.dto == dto));
}


@override
int get hashCode => Object.hash(runtimeType,precio,tipoPrecio,dto);

@override
String toString() {
  return 'PrecioPromocion(precio: $precio, tipoPrecio: $tipoPrecio, dto: $dto)';
}


}

/// @nodoc
abstract mixin class _$PrecioPromocionCopyWith<$Res> implements $PrecioPromocionCopyWith<$Res> {
  factory _$PrecioPromocionCopyWith(_PrecioPromocion value, $Res Function(_PrecioPromocion) _then) = __$PrecioPromocionCopyWithImpl;
@override @useResult
$Res call({
 Money precio, int tipoPrecio, double dto
});




}
/// @nodoc
class __$PrecioPromocionCopyWithImpl<$Res>
    implements _$PrecioPromocionCopyWith<$Res> {
  __$PrecioPromocionCopyWithImpl(this._self, this._then);

  final _PrecioPromocion _self;
  final $Res Function(_PrecioPromocion) _then;

/// Create a copy of PrecioPromocion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? precio = null,Object? tipoPrecio = null,Object? dto = null,}) {
  return _then(_PrecioPromocion(
precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,dto: null == dto ? _self.dto : dto // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
