// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_grupo_neto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticuloGrupoNeto {

 String get articuloId; String get grupoNetoId; String get grupoNetoDescripcion; int get cantidadDesde; Money get precio; String get divisaId; int get tipoPrecio; DateTime get lastUpdated; bool get deleted;
/// Create a copy of ArticuloGrupoNeto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloGrupoNetoCopyWith<ArticuloGrupoNeto> get copyWith => _$ArticuloGrupoNetoCopyWithImpl<ArticuloGrupoNeto>(this as ArticuloGrupoNeto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloGrupoNeto&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.grupoNetoId, grupoNetoId) || other.grupoNetoId == grupoNetoId)&&(identical(other.grupoNetoDescripcion, grupoNetoDescripcion) || other.grupoNetoDescripcion == grupoNetoDescripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,grupoNetoId,grupoNetoDescripcion,cantidadDesde,precio,divisaId,tipoPrecio,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloGrupoNeto(articuloId: $articuloId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, cantidadDesde: $cantidadDesde, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ArticuloGrupoNetoCopyWith<$Res>  {
  factory $ArticuloGrupoNetoCopyWith(ArticuloGrupoNeto value, $Res Function(ArticuloGrupoNeto) _then) = _$ArticuloGrupoNetoCopyWithImpl;
@useResult
$Res call({
 String articuloId, String grupoNetoId, String grupoNetoDescripcion, int cantidadDesde, Money precio, String divisaId, int tipoPrecio, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$ArticuloGrupoNetoCopyWithImpl<$Res>
    implements $ArticuloGrupoNetoCopyWith<$Res> {
  _$ArticuloGrupoNetoCopyWithImpl(this._self, this._then);

  final ArticuloGrupoNeto _self;
  final $Res Function(ArticuloGrupoNeto) _then;

/// Create a copy of ArticuloGrupoNeto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? grupoNetoId = null,Object? grupoNetoDescripcion = null,Object? cantidadDesde = null,Object? precio = null,Object? divisaId = null,Object? tipoPrecio = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoId: null == grupoNetoId ? _self.grupoNetoId : grupoNetoId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoDescripcion: null == grupoNetoDescripcion ? _self.grupoNetoDescripcion : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloGrupoNeto].
extension ArticuloGrupoNetoPatterns on ArticuloGrupoNeto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloGrupoNeto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloGrupoNeto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloGrupoNeto value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloGrupoNeto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloGrupoNeto value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloGrupoNeto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String articuloId,  String grupoNetoId,  String grupoNetoDescripcion,  int cantidadDesde,  Money precio,  String divisaId,  int tipoPrecio,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloGrupoNeto() when $default != null:
return $default(_that.articuloId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String articuloId,  String grupoNetoId,  String grupoNetoDescripcion,  int cantidadDesde,  Money precio,  String divisaId,  int tipoPrecio,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ArticuloGrupoNeto():
return $default(_that.articuloId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String articuloId,  String grupoNetoId,  String grupoNetoDescripcion,  int cantidadDesde,  Money precio,  String divisaId,  int tipoPrecio,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloGrupoNeto() when $default != null:
return $default(_that.articuloId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ArticuloGrupoNeto extends ArticuloGrupoNeto {
  const _ArticuloGrupoNeto({required this.articuloId, required this.grupoNetoId, required this.grupoNetoDescripcion, required this.cantidadDesde, required this.precio, required this.divisaId, required this.tipoPrecio, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String articuloId;
@override final  String grupoNetoId;
@override final  String grupoNetoDescripcion;
@override final  int cantidadDesde;
@override final  Money precio;
@override final  String divisaId;
@override final  int tipoPrecio;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of ArticuloGrupoNeto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloGrupoNetoCopyWith<_ArticuloGrupoNeto> get copyWith => __$ArticuloGrupoNetoCopyWithImpl<_ArticuloGrupoNeto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloGrupoNeto&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.grupoNetoId, grupoNetoId) || other.grupoNetoId == grupoNetoId)&&(identical(other.grupoNetoDescripcion, grupoNetoDescripcion) || other.grupoNetoDescripcion == grupoNetoDescripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,grupoNetoId,grupoNetoDescripcion,cantidadDesde,precio,divisaId,tipoPrecio,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloGrupoNeto(articuloId: $articuloId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, cantidadDesde: $cantidadDesde, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ArticuloGrupoNetoCopyWith<$Res> implements $ArticuloGrupoNetoCopyWith<$Res> {
  factory _$ArticuloGrupoNetoCopyWith(_ArticuloGrupoNeto value, $Res Function(_ArticuloGrupoNeto) _then) = __$ArticuloGrupoNetoCopyWithImpl;
@override @useResult
$Res call({
 String articuloId, String grupoNetoId, String grupoNetoDescripcion, int cantidadDesde, Money precio, String divisaId, int tipoPrecio, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$ArticuloGrupoNetoCopyWithImpl<$Res>
    implements _$ArticuloGrupoNetoCopyWith<$Res> {
  __$ArticuloGrupoNetoCopyWithImpl(this._self, this._then);

  final _ArticuloGrupoNeto _self;
  final $Res Function(_ArticuloGrupoNeto) _then;

/// Create a copy of ArticuloGrupoNeto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? grupoNetoId = null,Object? grupoNetoDescripcion = null,Object? cantidadDesde = null,Object? precio = null,Object? divisaId = null,Object? tipoPrecio = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ArticuloGrupoNeto(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoId: null == grupoNetoId ? _self.grupoNetoId : grupoNetoId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoDescripcion: null == grupoNetoDescripcion ? _self.grupoNetoDescripcion : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
