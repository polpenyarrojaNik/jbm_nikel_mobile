// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_precio_neto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClientePrecioNeto {

 String get clienteId; String get articuloId; String get descripcion; int get cantidadDesde; Money get precio; int? get tipoPrecio; double? get dtoAdicional; DateTime get lastUpdated; bool get deleted;
/// Create a copy of ClientePrecioNeto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientePrecioNetoCopyWith<ClientePrecioNeto> get copyWith => _$ClientePrecioNetoCopyWithImpl<ClientePrecioNeto>(this as ClientePrecioNeto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientePrecioNeto&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.dtoAdicional, dtoAdicional) || other.dtoAdicional == dtoAdicional)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,descripcion,cantidadDesde,precio,tipoPrecio,dtoAdicional,lastUpdated,deleted);

@override
String toString() {
  return 'ClientePrecioNeto(clienteId: $clienteId, articuloId: $articuloId, descripcion: $descripcion, cantidadDesde: $cantidadDesde, precio: $precio, tipoPrecio: $tipoPrecio, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClientePrecioNetoCopyWith<$Res>  {
  factory $ClientePrecioNetoCopyWith(ClientePrecioNeto value, $Res Function(ClientePrecioNeto) _then) = _$ClientePrecioNetoCopyWithImpl;
@useResult
$Res call({
 String clienteId, String articuloId, String descripcion, int cantidadDesde, Money precio, int? tipoPrecio, double? dtoAdicional, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$ClientePrecioNetoCopyWithImpl<$Res>
    implements $ClientePrecioNetoCopyWith<$Res> {
  _$ClientePrecioNetoCopyWithImpl(this._self, this._then);

  final ClientePrecioNeto _self;
  final $Res Function(ClientePrecioNeto) _then;

/// Create a copy of ClientePrecioNeto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? articuloId = null,Object? descripcion = null,Object? cantidadDesde = null,Object? precio = null,Object? tipoPrecio = freezed,Object? dtoAdicional = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,tipoPrecio: freezed == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int?,dtoAdicional: freezed == dtoAdicional ? _self.dtoAdicional : dtoAdicional // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClientePrecioNeto].
extension ClientePrecioNetoPatterns on ClientePrecioNeto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClientePrecioNeto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientePrecioNeto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClientePrecioNeto value)  $default,){
final _that = this;
switch (_that) {
case _ClientePrecioNeto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClientePrecioNeto value)?  $default,){
final _that = this;
switch (_that) {
case _ClientePrecioNeto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String articuloId,  String descripcion,  int cantidadDesde,  Money precio,  int? tipoPrecio,  double? dtoAdicional,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientePrecioNeto() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.descripcion,_that.cantidadDesde,_that.precio,_that.tipoPrecio,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String articuloId,  String descripcion,  int cantidadDesde,  Money precio,  int? tipoPrecio,  double? dtoAdicional,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ClientePrecioNeto():
return $default(_that.clienteId,_that.articuloId,_that.descripcion,_that.cantidadDesde,_that.precio,_that.tipoPrecio,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String articuloId,  String descripcion,  int cantidadDesde,  Money precio,  int? tipoPrecio,  double? dtoAdicional,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClientePrecioNeto() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.descripcion,_that.cantidadDesde,_that.precio,_that.tipoPrecio,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ClientePrecioNeto extends ClientePrecioNeto {
  const _ClientePrecioNeto({required this.clienteId, required this.articuloId, required this.descripcion, required this.cantidadDesde, required this.precio, this.tipoPrecio, this.dtoAdicional, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String clienteId;
@override final  String articuloId;
@override final  String descripcion;
@override final  int cantidadDesde;
@override final  Money precio;
@override final  int? tipoPrecio;
@override final  double? dtoAdicional;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of ClientePrecioNeto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientePrecioNetoCopyWith<_ClientePrecioNeto> get copyWith => __$ClientePrecioNetoCopyWithImpl<_ClientePrecioNeto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientePrecioNeto&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.dtoAdicional, dtoAdicional) || other.dtoAdicional == dtoAdicional)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,descripcion,cantidadDesde,precio,tipoPrecio,dtoAdicional,lastUpdated,deleted);

@override
String toString() {
  return 'ClientePrecioNeto(clienteId: $clienteId, articuloId: $articuloId, descripcion: $descripcion, cantidadDesde: $cantidadDesde, precio: $precio, tipoPrecio: $tipoPrecio, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClientePrecioNetoCopyWith<$Res> implements $ClientePrecioNetoCopyWith<$Res> {
  factory _$ClientePrecioNetoCopyWith(_ClientePrecioNeto value, $Res Function(_ClientePrecioNeto) _then) = __$ClientePrecioNetoCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String articuloId, String descripcion, int cantidadDesde, Money precio, int? tipoPrecio, double? dtoAdicional, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$ClientePrecioNetoCopyWithImpl<$Res>
    implements _$ClientePrecioNetoCopyWith<$Res> {
  __$ClientePrecioNetoCopyWithImpl(this._self, this._then);

  final _ClientePrecioNeto _self;
  final $Res Function(_ClientePrecioNeto) _then;

/// Create a copy of ClientePrecioNeto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? articuloId = null,Object? descripcion = null,Object? cantidadDesde = null,Object? precio = null,Object? tipoPrecio = freezed,Object? dtoAdicional = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClientePrecioNeto(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as Money,tipoPrecio: freezed == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int?,dtoAdicional: freezed == dtoAdicional ? _self.dtoAdicional : dtoAdicional // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
