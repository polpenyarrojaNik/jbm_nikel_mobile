// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'precio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Precio {

 Money get precio; int get tipoPrecio;
/// Create a copy of Precio
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrecioCopyWith<Precio> get copyWith => _$PrecioCopyWithImpl<Precio>(this as Precio, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Precio&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio));
}


@override
int get hashCode => Object.hash(runtimeType,precio,tipoPrecio);

@override
String toString() {
  return 'Precio(precio: $precio, tipoPrecio: $tipoPrecio)';
}


}

/// @nodoc
abstract mixin class $PrecioCopyWith<$Res>  {
  factory $PrecioCopyWith(Precio value, $Res Function(Precio) _then) = _$PrecioCopyWithImpl;
@useResult
$Res call({
 Money precio, int tipoPrecio
});




}
/// @nodoc
class _$PrecioCopyWithImpl<$Res>
    implements $PrecioCopyWith<$Res> {
  _$PrecioCopyWithImpl(this._self, this._then);

  final Precio _self;
  final $Res Function(Precio) _then;

/// Create a copy of Precio
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? precio = null,Object? tipoPrecio = null,}) {
  return _then(_self.copyWith(
precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Precio].
extension PrecioPatterns on Precio {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Precio value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Precio() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Precio value)  $default,){
final _that = this;
switch (_that) {
case _Precio():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Precio value)?  $default,){
final _that = this;
switch (_that) {
case _Precio() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Money precio,  int tipoPrecio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Precio() when $default != null:
return $default(_that.precio,_that.tipoPrecio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Money precio,  int tipoPrecio)  $default,) {final _that = this;
switch (_that) {
case _Precio():
return $default(_that.precio,_that.tipoPrecio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Money precio,  int tipoPrecio)?  $default,) {final _that = this;
switch (_that) {
case _Precio() when $default != null:
return $default(_that.precio,_that.tipoPrecio);case _:
  return null;

}
}

}

/// @nodoc


class _Precio extends Precio {
  const _Precio({required this.precio, required this.tipoPrecio}): super._();
  

@override final  Money precio;
@override final  int tipoPrecio;

/// Create a copy of Precio
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrecioCopyWith<_Precio> get copyWith => __$PrecioCopyWithImpl<_Precio>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Precio&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio));
}


@override
int get hashCode => Object.hash(runtimeType,precio,tipoPrecio);

@override
String toString() {
  return 'Precio(precio: $precio, tipoPrecio: $tipoPrecio)';
}


}

/// @nodoc
abstract mixin class _$PrecioCopyWith<$Res> implements $PrecioCopyWith<$Res> {
  factory _$PrecioCopyWith(_Precio value, $Res Function(_Precio) _then) = __$PrecioCopyWithImpl;
@override @useResult
$Res call({
 Money precio, int tipoPrecio
});




}
/// @nodoc
class __$PrecioCopyWithImpl<$Res>
    implements _$PrecioCopyWith<$Res> {
  __$PrecioCopyWithImpl(this._self, this._then);

  final _Precio _self;
  final $Res Function(_Precio) _then;

/// Create a copy of Precio
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? precio = null,Object? tipoPrecio = null,}) {
  return _then(_Precio(
precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
