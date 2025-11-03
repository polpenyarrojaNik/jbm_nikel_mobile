// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_precio_tarifa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticuloPrecioTarifa {

 String get articuloId; String get tarifaId; String? get tarifaDescripcion; int get cantidadDesde; Money get precio; String get divisaId; int get tipoPrecio; DateTime get lastUpdated; bool get deleted; bool get visibleSN;
/// Create a copy of ArticuloPrecioTarifa
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloPrecioTarifaCopyWith<ArticuloPrecioTarifa> get copyWith => _$ArticuloPrecioTarifaCopyWithImpl<ArticuloPrecioTarifa>(this as ArticuloPrecioTarifa, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloPrecioTarifa&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.tarifaDescripcion, tarifaDescripcion) || other.tarifaDescripcion == tarifaDescripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.visibleSN, visibleSN) || other.visibleSN == visibleSN));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,tarifaId,tarifaDescripcion,cantidadDesde,precio,divisaId,tipoPrecio,lastUpdated,deleted,visibleSN);

@override
String toString() {
  return 'ArticuloPrecioTarifa(articuloId: $articuloId, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, cantidadDesde: $cantidadDesde, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted, visibleSN: $visibleSN)';
}


}

/// @nodoc
abstract mixin class $ArticuloPrecioTarifaCopyWith<$Res>  {
  factory $ArticuloPrecioTarifaCopyWith(ArticuloPrecioTarifa value, $Res Function(ArticuloPrecioTarifa) _then) = _$ArticuloPrecioTarifaCopyWithImpl;
@useResult
$Res call({
 String articuloId, String tarifaId, String? tarifaDescripcion, int cantidadDesde, Money precio, String divisaId, int tipoPrecio, DateTime lastUpdated, bool deleted, bool visibleSN
});




}
/// @nodoc
class _$ArticuloPrecioTarifaCopyWithImpl<$Res>
    implements $ArticuloPrecioTarifaCopyWith<$Res> {
  _$ArticuloPrecioTarifaCopyWithImpl(this._self, this._then);

  final ArticuloPrecioTarifa _self;
  final $Res Function(ArticuloPrecioTarifa) _then;

/// Create a copy of ArticuloPrecioTarifa
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? tarifaId = null,Object? tarifaDescripcion = freezed,Object? cantidadDesde = null,Object? precio = null,Object? divisaId = null,Object? tipoPrecio = null,Object? lastUpdated = null,Object? deleted = null,Object? visibleSN = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,tarifaId: null == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String,tarifaDescripcion: freezed == tarifaDescripcion ? _self.tarifaDescripcion : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
as String?,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,visibleSN: null == visibleSN ? _self.visibleSN : visibleSN // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloPrecioTarifa].
extension ArticuloPrecioTarifaPatterns on ArticuloPrecioTarifa {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloPrecioTarifa value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloPrecioTarifa() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloPrecioTarifa value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloPrecioTarifa():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloPrecioTarifa value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloPrecioTarifa() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String articuloId,  String tarifaId,  String? tarifaDescripcion,  int cantidadDesde,  Money precio,  String divisaId,  int tipoPrecio,  DateTime lastUpdated,  bool deleted,  bool visibleSN)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloPrecioTarifa() when $default != null:
return $default(_that.articuloId,_that.tarifaId,_that.tarifaDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.lastUpdated,_that.deleted,_that.visibleSN);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String articuloId,  String tarifaId,  String? tarifaDescripcion,  int cantidadDesde,  Money precio,  String divisaId,  int tipoPrecio,  DateTime lastUpdated,  bool deleted,  bool visibleSN)  $default,) {final _that = this;
switch (_that) {
case _ArticuloPrecioTarifa():
return $default(_that.articuloId,_that.tarifaId,_that.tarifaDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.lastUpdated,_that.deleted,_that.visibleSN);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String articuloId,  String tarifaId,  String? tarifaDescripcion,  int cantidadDesde,  Money precio,  String divisaId,  int tipoPrecio,  DateTime lastUpdated,  bool deleted,  bool visibleSN)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloPrecioTarifa() when $default != null:
return $default(_that.articuloId,_that.tarifaId,_that.tarifaDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.lastUpdated,_that.deleted,_that.visibleSN);case _:
  return null;

}
}

}

/// @nodoc


class _ArticuloPrecioTarifa extends ArticuloPrecioTarifa {
  const _ArticuloPrecioTarifa({required this.articuloId, required this.tarifaId, this.tarifaDescripcion, required this.cantidadDesde, required this.precio, required this.divisaId, required this.tipoPrecio, required this.lastUpdated, required this.deleted, required this.visibleSN}): super._();
  

@override final  String articuloId;
@override final  String tarifaId;
@override final  String? tarifaDescripcion;
@override final  int cantidadDesde;
@override final  Money precio;
@override final  String divisaId;
@override final  int tipoPrecio;
@override final  DateTime lastUpdated;
@override final  bool deleted;
@override final  bool visibleSN;

/// Create a copy of ArticuloPrecioTarifa
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloPrecioTarifaCopyWith<_ArticuloPrecioTarifa> get copyWith => __$ArticuloPrecioTarifaCopyWithImpl<_ArticuloPrecioTarifa>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloPrecioTarifa&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.tarifaDescripcion, tarifaDescripcion) || other.tarifaDescripcion == tarifaDescripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.visibleSN, visibleSN) || other.visibleSN == visibleSN));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,tarifaId,tarifaDescripcion,cantidadDesde,precio,divisaId,tipoPrecio,lastUpdated,deleted,visibleSN);

@override
String toString() {
  return 'ArticuloPrecioTarifa(articuloId: $articuloId, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, cantidadDesde: $cantidadDesde, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted, visibleSN: $visibleSN)';
}


}

/// @nodoc
abstract mixin class _$ArticuloPrecioTarifaCopyWith<$Res> implements $ArticuloPrecioTarifaCopyWith<$Res> {
  factory _$ArticuloPrecioTarifaCopyWith(_ArticuloPrecioTarifa value, $Res Function(_ArticuloPrecioTarifa) _then) = __$ArticuloPrecioTarifaCopyWithImpl;
@override @useResult
$Res call({
 String articuloId, String tarifaId, String? tarifaDescripcion, int cantidadDesde, Money precio, String divisaId, int tipoPrecio, DateTime lastUpdated, bool deleted, bool visibleSN
});




}
/// @nodoc
class __$ArticuloPrecioTarifaCopyWithImpl<$Res>
    implements _$ArticuloPrecioTarifaCopyWith<$Res> {
  __$ArticuloPrecioTarifaCopyWithImpl(this._self, this._then);

  final _ArticuloPrecioTarifa _self;
  final $Res Function(_ArticuloPrecioTarifa) _then;

/// Create a copy of ArticuloPrecioTarifa
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? tarifaId = null,Object? tarifaDescripcion = freezed,Object? cantidadDesde = null,Object? precio = null,Object? divisaId = null,Object? tipoPrecio = null,Object? lastUpdated = null,Object? deleted = null,Object? visibleSN = null,}) {
  return _then(_ArticuloPrecioTarifa(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,tarifaId: null == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String,tarifaDescripcion: freezed == tarifaDescripcion ? _self.tarifaDescripcion : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
as String?,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,visibleSN: null == visibleSN ? _self.visibleSN : visibleSN // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
