// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seleccionar_cantidad_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SeleccionarCantidadParam {

 PedidoLocalParam get pedidoVentaParam; String get clienteId; String get articuloId; int? get cantidad; double? get precio; double? get descuento1; double? get descuento2; bool? get createdFromCliente; int get posicionLinea; bool get addNewLineaDesdeArticulo;
/// Create a copy of SeleccionarCantidadParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeleccionarCantidadParamCopyWith<SeleccionarCantidadParam> get copyWith => _$SeleccionarCantidadParamCopyWithImpl<SeleccionarCantidadParam>(this as SeleccionarCantidadParam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeleccionarCantidadParam&&(identical(other.pedidoVentaParam, pedidoVentaParam) || other.pedidoVentaParam == pedidoVentaParam)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.createdFromCliente, createdFromCliente) || other.createdFromCliente == createdFromCliente)&&(identical(other.posicionLinea, posicionLinea) || other.posicionLinea == posicionLinea)&&(identical(other.addNewLineaDesdeArticulo, addNewLineaDesdeArticulo) || other.addNewLineaDesdeArticulo == addNewLineaDesdeArticulo));
}


@override
int get hashCode => Object.hash(runtimeType,pedidoVentaParam,clienteId,articuloId,cantidad,precio,descuento1,descuento2,createdFromCliente,posicionLinea,addNewLineaDesdeArticulo);

@override
String toString() {
  return 'SeleccionarCantidadParam(pedidoVentaParam: $pedidoVentaParam, clienteId: $clienteId, articuloId: $articuloId, cantidad: $cantidad, precio: $precio, descuento1: $descuento1, descuento2: $descuento2, createdFromCliente: $createdFromCliente, posicionLinea: $posicionLinea, addNewLineaDesdeArticulo: $addNewLineaDesdeArticulo)';
}


}

/// @nodoc
abstract mixin class $SeleccionarCantidadParamCopyWith<$Res>  {
  factory $SeleccionarCantidadParamCopyWith(SeleccionarCantidadParam value, $Res Function(SeleccionarCantidadParam) _then) = _$SeleccionarCantidadParamCopyWithImpl;
@useResult
$Res call({
 PedidoLocalParam pedidoVentaParam, String clienteId, String articuloId, int? cantidad, double? precio, double? descuento1, double? descuento2, bool? createdFromCliente, int posicionLinea, bool addNewLineaDesdeArticulo
});


$PedidoLocalParamCopyWith<$Res> get pedidoVentaParam;

}
/// @nodoc
class _$SeleccionarCantidadParamCopyWithImpl<$Res>
    implements $SeleccionarCantidadParamCopyWith<$Res> {
  _$SeleccionarCantidadParamCopyWithImpl(this._self, this._then);

  final SeleccionarCantidadParam _self;
  final $Res Function(SeleccionarCantidadParam) _then;

/// Create a copy of SeleccionarCantidadParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pedidoVentaParam = null,Object? clienteId = null,Object? articuloId = null,Object? cantidad = freezed,Object? precio = freezed,Object? descuento1 = freezed,Object? descuento2 = freezed,Object? createdFromCliente = freezed,Object? posicionLinea = null,Object? addNewLineaDesdeArticulo = null,}) {
  return _then(_self.copyWith(
pedidoVentaParam: null == pedidoVentaParam ? _self.pedidoVentaParam : pedidoVentaParam // ignore: cast_nullable_to_non_nullable
as PedidoLocalParam,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,cantidad: freezed == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int?,precio: freezed == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double?,descuento1: freezed == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double?,descuento2: freezed == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double?,createdFromCliente: freezed == createdFromCliente ? _self.createdFromCliente : createdFromCliente // ignore: cast_nullable_to_non_nullable
as bool?,posicionLinea: null == posicionLinea ? _self.posicionLinea : posicionLinea // ignore: cast_nullable_to_non_nullable
as int,addNewLineaDesdeArticulo: null == addNewLineaDesdeArticulo ? _self.addNewLineaDesdeArticulo : addNewLineaDesdeArticulo // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SeleccionarCantidadParam
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PedidoLocalParamCopyWith<$Res> get pedidoVentaParam {
  
  return $PedidoLocalParamCopyWith<$Res>(_self.pedidoVentaParam, (value) {
    return _then(_self.copyWith(pedidoVentaParam: value));
  });
}
}


/// Adds pattern-matching-related methods to [SeleccionarCantidadParam].
extension SeleccionarCantidadParamPatterns on SeleccionarCantidadParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeleccionarCantidadParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeleccionarCantidadParam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeleccionarCantidadParam value)  $default,){
final _that = this;
switch (_that) {
case _SeleccionarCantidadParam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeleccionarCantidadParam value)?  $default,){
final _that = this;
switch (_that) {
case _SeleccionarCantidadParam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PedidoLocalParam pedidoVentaParam,  String clienteId,  String articuloId,  int? cantidad,  double? precio,  double? descuento1,  double? descuento2,  bool? createdFromCliente,  int posicionLinea,  bool addNewLineaDesdeArticulo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeleccionarCantidadParam() when $default != null:
return $default(_that.pedidoVentaParam,_that.clienteId,_that.articuloId,_that.cantidad,_that.precio,_that.descuento1,_that.descuento2,_that.createdFromCliente,_that.posicionLinea,_that.addNewLineaDesdeArticulo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PedidoLocalParam pedidoVentaParam,  String clienteId,  String articuloId,  int? cantidad,  double? precio,  double? descuento1,  double? descuento2,  bool? createdFromCliente,  int posicionLinea,  bool addNewLineaDesdeArticulo)  $default,) {final _that = this;
switch (_that) {
case _SeleccionarCantidadParam():
return $default(_that.pedidoVentaParam,_that.clienteId,_that.articuloId,_that.cantidad,_that.precio,_that.descuento1,_that.descuento2,_that.createdFromCliente,_that.posicionLinea,_that.addNewLineaDesdeArticulo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PedidoLocalParam pedidoVentaParam,  String clienteId,  String articuloId,  int? cantidad,  double? precio,  double? descuento1,  double? descuento2,  bool? createdFromCliente,  int posicionLinea,  bool addNewLineaDesdeArticulo)?  $default,) {final _that = this;
switch (_that) {
case _SeleccionarCantidadParam() when $default != null:
return $default(_that.pedidoVentaParam,_that.clienteId,_that.articuloId,_that.cantidad,_that.precio,_that.descuento1,_that.descuento2,_that.createdFromCliente,_that.posicionLinea,_that.addNewLineaDesdeArticulo);case _:
  return null;

}
}

}

/// @nodoc


class _SeleccionarCantidadParam extends SeleccionarCantidadParam {
  const _SeleccionarCantidadParam({required this.pedidoVentaParam, required this.clienteId, required this.articuloId, this.cantidad, this.precio, this.descuento1, this.descuento2, this.createdFromCliente, required this.posicionLinea, required this.addNewLineaDesdeArticulo}): super._();
  

@override final  PedidoLocalParam pedidoVentaParam;
@override final  String clienteId;
@override final  String articuloId;
@override final  int? cantidad;
@override final  double? precio;
@override final  double? descuento1;
@override final  double? descuento2;
@override final  bool? createdFromCliente;
@override final  int posicionLinea;
@override final  bool addNewLineaDesdeArticulo;

/// Create a copy of SeleccionarCantidadParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeleccionarCantidadParamCopyWith<_SeleccionarCantidadParam> get copyWith => __$SeleccionarCantidadParamCopyWithImpl<_SeleccionarCantidadParam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeleccionarCantidadParam&&(identical(other.pedidoVentaParam, pedidoVentaParam) || other.pedidoVentaParam == pedidoVentaParam)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.createdFromCliente, createdFromCliente) || other.createdFromCliente == createdFromCliente)&&(identical(other.posicionLinea, posicionLinea) || other.posicionLinea == posicionLinea)&&(identical(other.addNewLineaDesdeArticulo, addNewLineaDesdeArticulo) || other.addNewLineaDesdeArticulo == addNewLineaDesdeArticulo));
}


@override
int get hashCode => Object.hash(runtimeType,pedidoVentaParam,clienteId,articuloId,cantidad,precio,descuento1,descuento2,createdFromCliente,posicionLinea,addNewLineaDesdeArticulo);

@override
String toString() {
  return 'SeleccionarCantidadParam(pedidoVentaParam: $pedidoVentaParam, clienteId: $clienteId, articuloId: $articuloId, cantidad: $cantidad, precio: $precio, descuento1: $descuento1, descuento2: $descuento2, createdFromCliente: $createdFromCliente, posicionLinea: $posicionLinea, addNewLineaDesdeArticulo: $addNewLineaDesdeArticulo)';
}


}

/// @nodoc
abstract mixin class _$SeleccionarCantidadParamCopyWith<$Res> implements $SeleccionarCantidadParamCopyWith<$Res> {
  factory _$SeleccionarCantidadParamCopyWith(_SeleccionarCantidadParam value, $Res Function(_SeleccionarCantidadParam) _then) = __$SeleccionarCantidadParamCopyWithImpl;
@override @useResult
$Res call({
 PedidoLocalParam pedidoVentaParam, String clienteId, String articuloId, int? cantidad, double? precio, double? descuento1, double? descuento2, bool? createdFromCliente, int posicionLinea, bool addNewLineaDesdeArticulo
});


@override $PedidoLocalParamCopyWith<$Res> get pedidoVentaParam;

}
/// @nodoc
class __$SeleccionarCantidadParamCopyWithImpl<$Res>
    implements _$SeleccionarCantidadParamCopyWith<$Res> {
  __$SeleccionarCantidadParamCopyWithImpl(this._self, this._then);

  final _SeleccionarCantidadParam _self;
  final $Res Function(_SeleccionarCantidadParam) _then;

/// Create a copy of SeleccionarCantidadParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pedidoVentaParam = null,Object? clienteId = null,Object? articuloId = null,Object? cantidad = freezed,Object? precio = freezed,Object? descuento1 = freezed,Object? descuento2 = freezed,Object? createdFromCliente = freezed,Object? posicionLinea = null,Object? addNewLineaDesdeArticulo = null,}) {
  return _then(_SeleccionarCantidadParam(
pedidoVentaParam: null == pedidoVentaParam ? _self.pedidoVentaParam : pedidoVentaParam // ignore: cast_nullable_to_non_nullable
as PedidoLocalParam,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,cantidad: freezed == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int?,precio: freezed == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double?,descuento1: freezed == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double?,descuento2: freezed == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double?,createdFromCliente: freezed == createdFromCliente ? _self.createdFromCliente : createdFromCliente // ignore: cast_nullable_to_non_nullable
as bool?,posicionLinea: null == posicionLinea ? _self.posicionLinea : posicionLinea // ignore: cast_nullable_to_non_nullable
as int,addNewLineaDesdeArticulo: null == addNewLineaDesdeArticulo ? _self.addNewLineaDesdeArticulo : addNewLineaDesdeArticulo // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SeleccionarCantidadParam
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PedidoLocalParamCopyWith<$Res> get pedidoVentaParam {
  
  return $PedidoLocalParamCopyWith<$Res>(_self.pedidoVentaParam, (value) {
    return _then(_self.copyWith(pedidoVentaParam: value));
  });
}
}

// dart format on
