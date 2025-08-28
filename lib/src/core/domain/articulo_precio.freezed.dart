// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_precio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticuloPrecio {

 Precio get precio; String get divisaId; double get descuento1; double get descuento2; double get descuento3; double get iva;
/// Create a copy of ArticuloPrecio
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloPrecioCopyWith<ArticuloPrecio> get copyWith => _$ArticuloPrecioCopyWithImpl<ArticuloPrecio>(this as ArticuloPrecio, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloPrecio&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.iva, iva) || other.iva == iva));
}


@override
int get hashCode => Object.hash(runtimeType,precio,divisaId,descuento1,descuento2,descuento3,iva);

@override
String toString() {
  return 'ArticuloPrecio(precio: $precio, divisaId: $divisaId, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, iva: $iva)';
}


}

/// @nodoc
abstract mixin class $ArticuloPrecioCopyWith<$Res>  {
  factory $ArticuloPrecioCopyWith(ArticuloPrecio value, $Res Function(ArticuloPrecio) _then) = _$ArticuloPrecioCopyWithImpl;
@useResult
$Res call({
 Precio precio, String divisaId, double descuento1, double descuento2, double descuento3, double iva
});


$PrecioCopyWith<$Res> get precio;

}
/// @nodoc
class _$ArticuloPrecioCopyWithImpl<$Res>
    implements $ArticuloPrecioCopyWith<$Res> {
  _$ArticuloPrecioCopyWithImpl(this._self, this._then);

  final ArticuloPrecio _self;
  final $Res Function(ArticuloPrecio) _then;

/// Create a copy of ArticuloPrecio
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? precio = null,Object? divisaId = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? iva = null,}) {
  return _then(_self.copyWith(
precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Precio,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of ArticuloPrecio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrecioCopyWith<$Res> get precio {
  
  return $PrecioCopyWith<$Res>(_self.precio, (value) {
    return _then(_self.copyWith(precio: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArticuloPrecio].
extension ArticuloPrecioPatterns on ArticuloPrecio {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloPrecio value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloPrecio() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloPrecio value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloPrecio():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloPrecio value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloPrecio() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Precio precio,  String divisaId,  double descuento1,  double descuento2,  double descuento3,  double iva)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloPrecio() when $default != null:
return $default(_that.precio,_that.divisaId,_that.descuento1,_that.descuento2,_that.descuento3,_that.iva);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Precio precio,  String divisaId,  double descuento1,  double descuento2,  double descuento3,  double iva)  $default,) {final _that = this;
switch (_that) {
case _ArticuloPrecio():
return $default(_that.precio,_that.divisaId,_that.descuento1,_that.descuento2,_that.descuento3,_that.iva);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Precio precio,  String divisaId,  double descuento1,  double descuento2,  double descuento3,  double iva)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloPrecio() when $default != null:
return $default(_that.precio,_that.divisaId,_that.descuento1,_that.descuento2,_that.descuento3,_that.iva);case _:
  return null;

}
}

}

/// @nodoc


class _ArticuloPrecio extends ArticuloPrecio {
  const _ArticuloPrecio({required this.precio, required this.divisaId, required this.descuento1, required this.descuento2, required this.descuento3, required this.iva}): super._();
  

@override final  Precio precio;
@override final  String divisaId;
@override final  double descuento1;
@override final  double descuento2;
@override final  double descuento3;
@override final  double iva;

/// Create a copy of ArticuloPrecio
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloPrecioCopyWith<_ArticuloPrecio> get copyWith => __$ArticuloPrecioCopyWithImpl<_ArticuloPrecio>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloPrecio&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.iva, iva) || other.iva == iva));
}


@override
int get hashCode => Object.hash(runtimeType,precio,divisaId,descuento1,descuento2,descuento3,iva);

@override
String toString() {
  return 'ArticuloPrecio(precio: $precio, divisaId: $divisaId, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, iva: $iva)';
}


}

/// @nodoc
abstract mixin class _$ArticuloPrecioCopyWith<$Res> implements $ArticuloPrecioCopyWith<$Res> {
  factory _$ArticuloPrecioCopyWith(_ArticuloPrecio value, $Res Function(_ArticuloPrecio) _then) = __$ArticuloPrecioCopyWithImpl;
@override @useResult
$Res call({
 Precio precio, String divisaId, double descuento1, double descuento2, double descuento3, double iva
});


@override $PrecioCopyWith<$Res> get precio;

}
/// @nodoc
class __$ArticuloPrecioCopyWithImpl<$Res>
    implements _$ArticuloPrecioCopyWith<$Res> {
  __$ArticuloPrecioCopyWithImpl(this._self, this._then);

  final _ArticuloPrecio _self;
  final $Res Function(_ArticuloPrecio) _then;

/// Create a copy of ArticuloPrecio
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? precio = null,Object? divisaId = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? iva = null,}) {
  return _then(_ArticuloPrecio(
precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Precio,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of ArticuloPrecio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrecioCopyWith<$Res> get precio {
  
  return $PrecioCopyWith<$Res>(_self.precio, (value) {
    return _then(_self.copyWith(precio: value));
  });
}
}

// dart format on
