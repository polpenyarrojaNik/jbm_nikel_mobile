// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estadisticas_ultimos_precios.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EstadisticasUltimosPrecios {

 String get clienteId; String? get nombreCliente; String get articuloId; String? get descripcion; int get linea; int get cantidad; DateTime get fecha; Money get precioDivisa; String get divisaId; int get tipoPrecio; double get descuento1; double get descuento2; double get descuento3; DateTime get lastUpdated; bool get deleted;
/// Create a copy of EstadisticasUltimosPrecios
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EstadisticasUltimosPreciosCopyWith<EstadisticasUltimosPrecios> get copyWith => _$EstadisticasUltimosPreciosCopyWithImpl<EstadisticasUltimosPrecios>(this as EstadisticasUltimosPrecios, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EstadisticasUltimosPrecios&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.linea, linea) || other.linea == linea)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,nombreCliente,articuloId,descripcion,linea,cantidad,fecha,precioDivisa,divisaId,tipoPrecio,descuento1,descuento2,descuento3,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisticasUltimosPrecios(clienteId: $clienteId, nombreCliente: $nombreCliente, articuloId: $articuloId, descripcion: $descripcion, linea: $linea, cantidad: $cantidad, fecha: $fecha, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $EstadisticasUltimosPreciosCopyWith<$Res>  {
  factory $EstadisticasUltimosPreciosCopyWith(EstadisticasUltimosPrecios value, $Res Function(EstadisticasUltimosPrecios) _then) = _$EstadisticasUltimosPreciosCopyWithImpl;
@useResult
$Res call({
 String clienteId, String? nombreCliente, String articuloId, String? descripcion, int linea, int cantidad, DateTime fecha, Money precioDivisa, String divisaId, int tipoPrecio, double descuento1, double descuento2, double descuento3, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$EstadisticasUltimosPreciosCopyWithImpl<$Res>
    implements $EstadisticasUltimosPreciosCopyWith<$Res> {
  _$EstadisticasUltimosPreciosCopyWithImpl(this._self, this._then);

  final EstadisticasUltimosPrecios _self;
  final $Res Function(EstadisticasUltimosPrecios) _then;

/// Create a copy of EstadisticasUltimosPrecios
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? nombreCliente = freezed,Object? articuloId = null,Object? descripcion = freezed,Object? linea = null,Object? cantidad = null,Object? fecha = null,Object? precioDivisa = null,Object? divisaId = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: freezed == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String?,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,linea: null == linea ? _self.linea : linea // ignore: cast_nullable_to_non_nullable
as int,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EstadisticasUltimosPrecios].
extension EstadisticasUltimosPreciosPatterns on EstadisticasUltimosPrecios {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EstadisticasUltimosPrecios value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EstadisticasUltimosPrecios() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EstadisticasUltimosPrecios value)  $default,){
final _that = this;
switch (_that) {
case _EstadisticasUltimosPrecios():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EstadisticasUltimosPrecios value)?  $default,){
final _that = this;
switch (_that) {
case _EstadisticasUltimosPrecios() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String? nombreCliente,  String articuloId,  String? descripcion,  int linea,  int cantidad,  DateTime fecha,  Money precioDivisa,  String divisaId,  int tipoPrecio,  double descuento1,  double descuento2,  double descuento3,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EstadisticasUltimosPrecios() when $default != null:
return $default(_that.clienteId,_that.nombreCliente,_that.articuloId,_that.descripcion,_that.linea,_that.cantidad,_that.fecha,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String? nombreCliente,  String articuloId,  String? descripcion,  int linea,  int cantidad,  DateTime fecha,  Money precioDivisa,  String divisaId,  int tipoPrecio,  double descuento1,  double descuento2,  double descuento3,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _EstadisticasUltimosPrecios():
return $default(_that.clienteId,_that.nombreCliente,_that.articuloId,_that.descripcion,_that.linea,_that.cantidad,_that.fecha,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String? nombreCliente,  String articuloId,  String? descripcion,  int linea,  int cantidad,  DateTime fecha,  Money precioDivisa,  String divisaId,  int tipoPrecio,  double descuento1,  double descuento2,  double descuento3,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _EstadisticasUltimosPrecios() when $default != null:
return $default(_that.clienteId,_that.nombreCliente,_that.articuloId,_that.descripcion,_that.linea,_that.cantidad,_that.fecha,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _EstadisticasUltimosPrecios extends EstadisticasUltimosPrecios {
  const _EstadisticasUltimosPrecios({required this.clienteId, this.nombreCliente, required this.articuloId, this.descripcion, required this.linea, required this.cantidad, required this.fecha, required this.precioDivisa, required this.divisaId, required this.tipoPrecio, required this.descuento1, required this.descuento2, required this.descuento3, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String clienteId;
@override final  String? nombreCliente;
@override final  String articuloId;
@override final  String? descripcion;
@override final  int linea;
@override final  int cantidad;
@override final  DateTime fecha;
@override final  Money precioDivisa;
@override final  String divisaId;
@override final  int tipoPrecio;
@override final  double descuento1;
@override final  double descuento2;
@override final  double descuento3;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of EstadisticasUltimosPrecios
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EstadisticasUltimosPreciosCopyWith<_EstadisticasUltimosPrecios> get copyWith => __$EstadisticasUltimosPreciosCopyWithImpl<_EstadisticasUltimosPrecios>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EstadisticasUltimosPrecios&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.linea, linea) || other.linea == linea)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,nombreCliente,articuloId,descripcion,linea,cantidad,fecha,precioDivisa,divisaId,tipoPrecio,descuento1,descuento2,descuento3,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisticasUltimosPrecios(clienteId: $clienteId, nombreCliente: $nombreCliente, articuloId: $articuloId, descripcion: $descripcion, linea: $linea, cantidad: $cantidad, fecha: $fecha, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$EstadisticasUltimosPreciosCopyWith<$Res> implements $EstadisticasUltimosPreciosCopyWith<$Res> {
  factory _$EstadisticasUltimosPreciosCopyWith(_EstadisticasUltimosPrecios value, $Res Function(_EstadisticasUltimosPrecios) _then) = __$EstadisticasUltimosPreciosCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String? nombreCliente, String articuloId, String? descripcion, int linea, int cantidad, DateTime fecha, Money precioDivisa, String divisaId, int tipoPrecio, double descuento1, double descuento2, double descuento3, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$EstadisticasUltimosPreciosCopyWithImpl<$Res>
    implements _$EstadisticasUltimosPreciosCopyWith<$Res> {
  __$EstadisticasUltimosPreciosCopyWithImpl(this._self, this._then);

  final _EstadisticasUltimosPrecios _self;
  final $Res Function(_EstadisticasUltimosPrecios) _then;

/// Create a copy of EstadisticasUltimosPrecios
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? nombreCliente = freezed,Object? articuloId = null,Object? descripcion = freezed,Object? linea = null,Object? cantidad = null,Object? fecha = null,Object? precioDivisa = null,Object? divisaId = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_EstadisticasUltimosPrecios(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: freezed == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String?,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,linea: null == linea ? _self.linea : linea // ignore: cast_nullable_to_non_nullable
as int,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
