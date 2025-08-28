// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_linea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PedidoVentaLinea {

 String? get empresaId; String? get pedidoId; String? get pedidoVentaLineaId; String? get pedidoVentaAppId;// String? pedidoVentaLineaAppId,
 String get articuloId; String get articuloDescription; int get cantidad; Money get precioDivisa; String get divisaId; int get tipoPrecio; double get descuento1; double get descuento2; double get descuento3; double? get descuentoProntoPago; String? get pedidoLineaIdComponente; Money? get importeLinea; bool? get stockDisponibleSN; int? get stockDisponible; DateTime? get fechaDisponible; double? get iva; int get cantidadPendiente; DateTime get lastUpdated; bool get deleted;
/// Create a copy of PedidoVentaLinea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoVentaLineaCopyWith<PedidoVentaLinea> get copyWith => _$PedidoVentaLineaCopyWithImpl<PedidoVentaLinea>(this as PedidoVentaLinea, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoVentaLinea&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.pedidoVentaLineaId, pedidoVentaLineaId) || other.pedidoVentaLineaId == pedidoVentaLineaId)&&(identical(other.pedidoVentaAppId, pedidoVentaAppId) || other.pedidoVentaAppId == pedidoVentaAppId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.descuentoProntoPago, descuentoProntoPago) || other.descuentoProntoPago == descuentoProntoPago)&&(identical(other.pedidoLineaIdComponente, pedidoLineaIdComponente) || other.pedidoLineaIdComponente == pedidoLineaIdComponente)&&(identical(other.importeLinea, importeLinea) || other.importeLinea == importeLinea)&&(identical(other.stockDisponibleSN, stockDisponibleSN) || other.stockDisponibleSN == stockDisponibleSN)&&(identical(other.stockDisponible, stockDisponible) || other.stockDisponible == stockDisponible)&&(identical(other.fechaDisponible, fechaDisponible) || other.fechaDisponible == fechaDisponible)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.cantidadPendiente, cantidadPendiente) || other.cantidadPendiente == cantidadPendiente)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hashAll([runtimeType,empresaId,pedidoId,pedidoVentaLineaId,pedidoVentaAppId,articuloId,articuloDescription,cantidad,precioDivisa,divisaId,tipoPrecio,descuento1,descuento2,descuento3,descuentoProntoPago,pedidoLineaIdComponente,importeLinea,stockDisponibleSN,stockDisponible,fechaDisponible,iva,cantidadPendiente,lastUpdated,deleted]);

@override
String toString() {
  return 'PedidoVentaLinea(empresaId: $empresaId, pedidoId: $pedidoId, pedidoVentaLineaId: $pedidoVentaLineaId, pedidoVentaAppId: $pedidoVentaAppId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, descuentoProntoPago: $descuentoProntoPago, pedidoLineaIdComponente: $pedidoLineaIdComponente, importeLinea: $importeLinea, stockDisponibleSN: $stockDisponibleSN, stockDisponible: $stockDisponible, fechaDisponible: $fechaDisponible, iva: $iva, cantidadPendiente: $cantidadPendiente, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PedidoVentaLineaCopyWith<$Res>  {
  factory $PedidoVentaLineaCopyWith(PedidoVentaLinea value, $Res Function(PedidoVentaLinea) _then) = _$PedidoVentaLineaCopyWithImpl;
@useResult
$Res call({
 String? empresaId, String? pedidoId, String? pedidoVentaLineaId, String? pedidoVentaAppId, String articuloId, String articuloDescription, int cantidad, Money precioDivisa, String divisaId, int tipoPrecio, double descuento1, double descuento2, double descuento3, double? descuentoProntoPago, String? pedidoLineaIdComponente, Money? importeLinea, bool? stockDisponibleSN, int? stockDisponible, DateTime? fechaDisponible, double? iva, int cantidadPendiente, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$PedidoVentaLineaCopyWithImpl<$Res>
    implements $PedidoVentaLineaCopyWith<$Res> {
  _$PedidoVentaLineaCopyWithImpl(this._self, this._then);

  final PedidoVentaLinea _self;
  final $Res Function(PedidoVentaLinea) _then;

/// Create a copy of PedidoVentaLinea
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = freezed,Object? pedidoId = freezed,Object? pedidoVentaLineaId = freezed,Object? pedidoVentaAppId = freezed,Object? articuloId = null,Object? articuloDescription = null,Object? cantidad = null,Object? precioDivisa = null,Object? divisaId = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? descuentoProntoPago = freezed,Object? pedidoLineaIdComponente = freezed,Object? importeLinea = freezed,Object? stockDisponibleSN = freezed,Object? stockDisponible = freezed,Object? fechaDisponible = freezed,Object? iva = freezed,Object? cantidadPendiente = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoId: freezed == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaLineaId: freezed == pedidoVentaLineaId ? _self.pedidoVentaLineaId : pedidoVentaLineaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaAppId: freezed == pedidoVentaAppId ? _self.pedidoVentaAppId : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
as String?,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,descuentoProntoPago: freezed == descuentoProntoPago ? _self.descuentoProntoPago : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
as double?,pedidoLineaIdComponente: freezed == pedidoLineaIdComponente ? _self.pedidoLineaIdComponente : pedidoLineaIdComponente // ignore: cast_nullable_to_non_nullable
as String?,importeLinea: freezed == importeLinea ? _self.importeLinea : importeLinea // ignore: cast_nullable_to_non_nullable
as Money?,stockDisponibleSN: freezed == stockDisponibleSN ? _self.stockDisponibleSN : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
as bool?,stockDisponible: freezed == stockDisponible ? _self.stockDisponible : stockDisponible // ignore: cast_nullable_to_non_nullable
as int?,fechaDisponible: freezed == fechaDisponible ? _self.fechaDisponible : fechaDisponible // ignore: cast_nullable_to_non_nullable
as DateTime?,iva: freezed == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double?,cantidadPendiente: null == cantidadPendiente ? _self.cantidadPendiente : cantidadPendiente // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoVentaLinea].
extension PedidoVentaLineaPatterns on PedidoVentaLinea {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoVentaLinea value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoVentaLinea() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoVentaLinea value)  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaLinea():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoVentaLinea value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaLinea() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? empresaId,  String? pedidoId,  String? pedidoVentaLineaId,  String? pedidoVentaAppId,  String articuloId,  String articuloDescription,  int cantidad,  Money precioDivisa,  String divisaId,  int tipoPrecio,  double descuento1,  double descuento2,  double descuento3,  double? descuentoProntoPago,  String? pedidoLineaIdComponente,  Money? importeLinea,  bool? stockDisponibleSN,  int? stockDisponible,  DateTime? fechaDisponible,  double? iva,  int cantidadPendiente,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoVentaLinea() when $default != null:
return $default(_that.empresaId,_that.pedidoId,_that.pedidoVentaLineaId,_that.pedidoVentaAppId,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.descuentoProntoPago,_that.pedidoLineaIdComponente,_that.importeLinea,_that.stockDisponibleSN,_that.stockDisponible,_that.fechaDisponible,_that.iva,_that.cantidadPendiente,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? empresaId,  String? pedidoId,  String? pedidoVentaLineaId,  String? pedidoVentaAppId,  String articuloId,  String articuloDescription,  int cantidad,  Money precioDivisa,  String divisaId,  int tipoPrecio,  double descuento1,  double descuento2,  double descuento3,  double? descuentoProntoPago,  String? pedidoLineaIdComponente,  Money? importeLinea,  bool? stockDisponibleSN,  int? stockDisponible,  DateTime? fechaDisponible,  double? iva,  int cantidadPendiente,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaLinea():
return $default(_that.empresaId,_that.pedidoId,_that.pedidoVentaLineaId,_that.pedidoVentaAppId,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.descuentoProntoPago,_that.pedidoLineaIdComponente,_that.importeLinea,_that.stockDisponibleSN,_that.stockDisponible,_that.fechaDisponible,_that.iva,_that.cantidadPendiente,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? empresaId,  String? pedidoId,  String? pedidoVentaLineaId,  String? pedidoVentaAppId,  String articuloId,  String articuloDescription,  int cantidad,  Money precioDivisa,  String divisaId,  int tipoPrecio,  double descuento1,  double descuento2,  double descuento3,  double? descuentoProntoPago,  String? pedidoLineaIdComponente,  Money? importeLinea,  bool? stockDisponibleSN,  int? stockDisponible,  DateTime? fechaDisponible,  double? iva,  int cantidadPendiente,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaLinea() when $default != null:
return $default(_that.empresaId,_that.pedidoId,_that.pedidoVentaLineaId,_that.pedidoVentaAppId,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.descuentoProntoPago,_that.pedidoLineaIdComponente,_that.importeLinea,_that.stockDisponibleSN,_that.stockDisponible,_that.fechaDisponible,_that.iva,_that.cantidadPendiente,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _PedidoVentaLinea extends PedidoVentaLinea {
  const _PedidoVentaLinea({this.empresaId, this.pedidoId, this.pedidoVentaLineaId, this.pedidoVentaAppId, required this.articuloId, required this.articuloDescription, required this.cantidad, required this.precioDivisa, required this.divisaId, required this.tipoPrecio, required this.descuento1, required this.descuento2, required this.descuento3, this.descuentoProntoPago, this.pedidoLineaIdComponente, this.importeLinea, this.stockDisponibleSN, this.stockDisponible, this.fechaDisponible, this.iva, required this.cantidadPendiente, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String? empresaId;
@override final  String? pedidoId;
@override final  String? pedidoVentaLineaId;
@override final  String? pedidoVentaAppId;
// String? pedidoVentaLineaAppId,
@override final  String articuloId;
@override final  String articuloDescription;
@override final  int cantidad;
@override final  Money precioDivisa;
@override final  String divisaId;
@override final  int tipoPrecio;
@override final  double descuento1;
@override final  double descuento2;
@override final  double descuento3;
@override final  double? descuentoProntoPago;
@override final  String? pedidoLineaIdComponente;
@override final  Money? importeLinea;
@override final  bool? stockDisponibleSN;
@override final  int? stockDisponible;
@override final  DateTime? fechaDisponible;
@override final  double? iva;
@override final  int cantidadPendiente;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of PedidoVentaLinea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoVentaLineaCopyWith<_PedidoVentaLinea> get copyWith => __$PedidoVentaLineaCopyWithImpl<_PedidoVentaLinea>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoVentaLinea&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.pedidoVentaLineaId, pedidoVentaLineaId) || other.pedidoVentaLineaId == pedidoVentaLineaId)&&(identical(other.pedidoVentaAppId, pedidoVentaAppId) || other.pedidoVentaAppId == pedidoVentaAppId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.descuentoProntoPago, descuentoProntoPago) || other.descuentoProntoPago == descuentoProntoPago)&&(identical(other.pedidoLineaIdComponente, pedidoLineaIdComponente) || other.pedidoLineaIdComponente == pedidoLineaIdComponente)&&(identical(other.importeLinea, importeLinea) || other.importeLinea == importeLinea)&&(identical(other.stockDisponibleSN, stockDisponibleSN) || other.stockDisponibleSN == stockDisponibleSN)&&(identical(other.stockDisponible, stockDisponible) || other.stockDisponible == stockDisponible)&&(identical(other.fechaDisponible, fechaDisponible) || other.fechaDisponible == fechaDisponible)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.cantidadPendiente, cantidadPendiente) || other.cantidadPendiente == cantidadPendiente)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hashAll([runtimeType,empresaId,pedidoId,pedidoVentaLineaId,pedidoVentaAppId,articuloId,articuloDescription,cantidad,precioDivisa,divisaId,tipoPrecio,descuento1,descuento2,descuento3,descuentoProntoPago,pedidoLineaIdComponente,importeLinea,stockDisponibleSN,stockDisponible,fechaDisponible,iva,cantidadPendiente,lastUpdated,deleted]);

@override
String toString() {
  return 'PedidoVentaLinea(empresaId: $empresaId, pedidoId: $pedidoId, pedidoVentaLineaId: $pedidoVentaLineaId, pedidoVentaAppId: $pedidoVentaAppId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, descuentoProntoPago: $descuentoProntoPago, pedidoLineaIdComponente: $pedidoLineaIdComponente, importeLinea: $importeLinea, stockDisponibleSN: $stockDisponibleSN, stockDisponible: $stockDisponible, fechaDisponible: $fechaDisponible, iva: $iva, cantidadPendiente: $cantidadPendiente, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PedidoVentaLineaCopyWith<$Res> implements $PedidoVentaLineaCopyWith<$Res> {
  factory _$PedidoVentaLineaCopyWith(_PedidoVentaLinea value, $Res Function(_PedidoVentaLinea) _then) = __$PedidoVentaLineaCopyWithImpl;
@override @useResult
$Res call({
 String? empresaId, String? pedidoId, String? pedidoVentaLineaId, String? pedidoVentaAppId, String articuloId, String articuloDescription, int cantidad, Money precioDivisa, String divisaId, int tipoPrecio, double descuento1, double descuento2, double descuento3, double? descuentoProntoPago, String? pedidoLineaIdComponente, Money? importeLinea, bool? stockDisponibleSN, int? stockDisponible, DateTime? fechaDisponible, double? iva, int cantidadPendiente, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$PedidoVentaLineaCopyWithImpl<$Res>
    implements _$PedidoVentaLineaCopyWith<$Res> {
  __$PedidoVentaLineaCopyWithImpl(this._self, this._then);

  final _PedidoVentaLinea _self;
  final $Res Function(_PedidoVentaLinea) _then;

/// Create a copy of PedidoVentaLinea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = freezed,Object? pedidoId = freezed,Object? pedidoVentaLineaId = freezed,Object? pedidoVentaAppId = freezed,Object? articuloId = null,Object? articuloDescription = null,Object? cantidad = null,Object? precioDivisa = null,Object? divisaId = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? descuentoProntoPago = freezed,Object? pedidoLineaIdComponente = freezed,Object? importeLinea = freezed,Object? stockDisponibleSN = freezed,Object? stockDisponible = freezed,Object? fechaDisponible = freezed,Object? iva = freezed,Object? cantidadPendiente = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_PedidoVentaLinea(
empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoId: freezed == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaLineaId: freezed == pedidoVentaLineaId ? _self.pedidoVentaLineaId : pedidoVentaLineaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaAppId: freezed == pedidoVentaAppId ? _self.pedidoVentaAppId : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
as String?,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,descuentoProntoPago: freezed == descuentoProntoPago ? _self.descuentoProntoPago : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
as double?,pedidoLineaIdComponente: freezed == pedidoLineaIdComponente ? _self.pedidoLineaIdComponente : pedidoLineaIdComponente // ignore: cast_nullable_to_non_nullable
as String?,importeLinea: freezed == importeLinea ? _self.importeLinea : importeLinea // ignore: cast_nullable_to_non_nullable
as Money?,stockDisponibleSN: freezed == stockDisponibleSN ? _self.stockDisponibleSN : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
as bool?,stockDisponible: freezed == stockDisponible ? _self.stockDisponible : stockDisponible // ignore: cast_nullable_to_non_nullable
as int?,fechaDisponible: freezed == fechaDisponible ? _self.fechaDisponible : fechaDisponible // ignore: cast_nullable_to_non_nullable
as DateTime?,iva: freezed == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double?,cantidadPendiente: null == cantidadPendiente ? _self.cantidadPendiente : cantidadPendiente // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
