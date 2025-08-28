// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_top.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticuloTop {

 String get articuloId; String get descripcion; Money get ventasTotal; Money get ventasCliente;
/// Create a copy of ArticuloTop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloTopCopyWith<ArticuloTop> get copyWith => _$ArticuloTopCopyWithImpl<ArticuloTop>(this as ArticuloTop, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloTop&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.ventasTotal, ventasTotal) || other.ventasTotal == ventasTotal)&&(identical(other.ventasCliente, ventasCliente) || other.ventasCliente == ventasCliente));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,descripcion,ventasTotal,ventasCliente);

@override
String toString() {
  return 'ArticuloTop(articuloId: $articuloId, descripcion: $descripcion, ventasTotal: $ventasTotal, ventasCliente: $ventasCliente)';
}


}

/// @nodoc
abstract mixin class $ArticuloTopCopyWith<$Res>  {
  factory $ArticuloTopCopyWith(ArticuloTop value, $Res Function(ArticuloTop) _then) = _$ArticuloTopCopyWithImpl;
@useResult
$Res call({
 String articuloId, String descripcion, Money ventasTotal, Money ventasCliente
});




}
/// @nodoc
class _$ArticuloTopCopyWithImpl<$Res>
    implements $ArticuloTopCopyWith<$Res> {
  _$ArticuloTopCopyWithImpl(this._self, this._then);

  final ArticuloTop _self;
  final $Res Function(ArticuloTop) _then;

/// Create a copy of ArticuloTop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? descripcion = null,Object? ventasTotal = null,Object? ventasCliente = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,ventasTotal: null == ventasTotal ? _self.ventasTotal : ventasTotal // ignore: cast_nullable_to_non_nullable
as Money,ventasCliente: null == ventasCliente ? _self.ventasCliente : ventasCliente // ignore: cast_nullable_to_non_nullable
as Money,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloTop].
extension ArticuloTopPatterns on ArticuloTop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloTop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloTop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloTop value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloTop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloTop value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloTop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String articuloId,  String descripcion,  Money ventasTotal,  Money ventasCliente)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloTop() when $default != null:
return $default(_that.articuloId,_that.descripcion,_that.ventasTotal,_that.ventasCliente);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String articuloId,  String descripcion,  Money ventasTotal,  Money ventasCliente)  $default,) {final _that = this;
switch (_that) {
case _ArticuloTop():
return $default(_that.articuloId,_that.descripcion,_that.ventasTotal,_that.ventasCliente);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String articuloId,  String descripcion,  Money ventasTotal,  Money ventasCliente)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloTop() when $default != null:
return $default(_that.articuloId,_that.descripcion,_that.ventasTotal,_that.ventasCliente);case _:
  return null;

}
}

}

/// @nodoc


class _ArticuloTop extends ArticuloTop {
  const _ArticuloTop({required this.articuloId, required this.descripcion, required this.ventasTotal, required this.ventasCliente}): super._();
  

@override final  String articuloId;
@override final  String descripcion;
@override final  Money ventasTotal;
@override final  Money ventasCliente;

/// Create a copy of ArticuloTop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloTopCopyWith<_ArticuloTop> get copyWith => __$ArticuloTopCopyWithImpl<_ArticuloTop>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloTop&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.ventasTotal, ventasTotal) || other.ventasTotal == ventasTotal)&&(identical(other.ventasCliente, ventasCliente) || other.ventasCliente == ventasCliente));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,descripcion,ventasTotal,ventasCliente);

@override
String toString() {
  return 'ArticuloTop(articuloId: $articuloId, descripcion: $descripcion, ventasTotal: $ventasTotal, ventasCliente: $ventasCliente)';
}


}

/// @nodoc
abstract mixin class _$ArticuloTopCopyWith<$Res> implements $ArticuloTopCopyWith<$Res> {
  factory _$ArticuloTopCopyWith(_ArticuloTop value, $Res Function(_ArticuloTop) _then) = __$ArticuloTopCopyWithImpl;
@override @useResult
$Res call({
 String articuloId, String descripcion, Money ventasTotal, Money ventasCliente
});




}
/// @nodoc
class __$ArticuloTopCopyWithImpl<$Res>
    implements _$ArticuloTopCopyWith<$Res> {
  __$ArticuloTopCopyWithImpl(this._self, this._then);

  final _ArticuloTop _self;
  final $Res Function(_ArticuloTop) _then;

/// Create a copy of ArticuloTop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? descripcion = null,Object? ventasTotal = null,Object? ventasCliente = null,}) {
  return _then(_ArticuloTop(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,ventasTotal: null == ventasTotal ? _self.ventasTotal : ventasTotal // ignore: cast_nullable_to_non_nullable
as Money,ventasCliente: null == ventasCliente ? _self.ventasCliente : ventasCliente // ignore: cast_nullable_to_non_nullable
as Money,
  ));
}


}

// dart format on
