// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_linea_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PedidoVentaLineaLocalDTO {

@JsonKey(name: 'PEDIDO_APP_ID') String get pedidoVentaAppId;@JsonKey(name: 'EMPRESA_ID') String? get empresaId;@JsonKey(name: 'PEDIDO_ID') String? get pedidoId;@JsonKey(name: 'LIN_APP_ID') String get pedidoVentaLineaAppId;@JsonKey(name: 'PRODUCTO_ID') String get articuloId;@JsonKey(name: 'DENOMINACION') String get articuloDescription;@JsonKey(name: 'CANTIDAD') int get cantidad;@JsonKey(name: 'PRECIO_DIVISA') double get precioDivisa;@JsonKey(name: 'TPRECIO') int get tipoPrecio;@JsonKey(name: 'DTO1') double get descuento1;@JsonKey(name: 'DTO2') double get descuento2;@JsonKey(name: 'DTO3') double get descuento3;@JsonKey(name: 'DTO_PP') double get descuentoProntoPago;@JsonKey(name: 'STOCK_DISPONIBLE_SN') String get stockDisponibleSN;@JsonKey(name: 'F_DISPONIBLE') DateTime? get fechaDisponible;@JsonKey(name: 'IVA') double get iva;@JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') String? get pedidoLineaComponenteId;
/// Create a copy of PedidoVentaLineaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoVentaLineaLocalDTOCopyWith<PedidoVentaLineaLocalDTO> get copyWith => _$PedidoVentaLineaLocalDTOCopyWithImpl<PedidoVentaLineaLocalDTO>(this as PedidoVentaLineaLocalDTO, _$identity);

  /// Serializes this PedidoVentaLineaLocalDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoVentaLineaLocalDTO&&(identical(other.pedidoVentaAppId, pedidoVentaAppId) || other.pedidoVentaAppId == pedidoVentaAppId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.pedidoVentaLineaAppId, pedidoVentaLineaAppId) || other.pedidoVentaLineaAppId == pedidoVentaLineaAppId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.descuentoProntoPago, descuentoProntoPago) || other.descuentoProntoPago == descuentoProntoPago)&&(identical(other.stockDisponibleSN, stockDisponibleSN) || other.stockDisponibleSN == stockDisponibleSN)&&(identical(other.fechaDisponible, fechaDisponible) || other.fechaDisponible == fechaDisponible)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.pedidoLineaComponenteId, pedidoLineaComponenteId) || other.pedidoLineaComponenteId == pedidoLineaComponenteId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pedidoVentaAppId,empresaId,pedidoId,pedidoVentaLineaAppId,articuloId,articuloDescription,cantidad,precioDivisa,tipoPrecio,descuento1,descuento2,descuento3,descuentoProntoPago,stockDisponibleSN,fechaDisponible,iva,pedidoLineaComponenteId);

@override
String toString() {
  return 'PedidoVentaLineaLocalDTO(pedidoVentaAppId: $pedidoVentaAppId, empresaId: $empresaId, pedidoId: $pedidoId, pedidoVentaLineaAppId: $pedidoVentaLineaAppId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, descuentoProntoPago: $descuentoProntoPago, stockDisponibleSN: $stockDisponibleSN, fechaDisponible: $fechaDisponible, iva: $iva, pedidoLineaComponenteId: $pedidoLineaComponenteId)';
}


}

/// @nodoc
abstract mixin class $PedidoVentaLineaLocalDTOCopyWith<$Res>  {
  factory $PedidoVentaLineaLocalDTOCopyWith(PedidoVentaLineaLocalDTO value, $Res Function(PedidoVentaLineaLocalDTO) _then) = _$PedidoVentaLineaLocalDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,@JsonKey(name: 'EMPRESA_ID') String? empresaId,@JsonKey(name: 'PEDIDO_ID') String? pedidoId,@JsonKey(name: 'LIN_APP_ID') String pedidoVentaLineaAppId,@JsonKey(name: 'PRODUCTO_ID') String articuloId,@JsonKey(name: 'DENOMINACION') String articuloDescription,@JsonKey(name: 'CANTIDAD') int cantidad,@JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,@JsonKey(name: 'TPRECIO') int tipoPrecio,@JsonKey(name: 'DTO1') double descuento1,@JsonKey(name: 'DTO2') double descuento2,@JsonKey(name: 'DTO3') double descuento3,@JsonKey(name: 'DTO_PP') double descuentoProntoPago,@JsonKey(name: 'STOCK_DISPONIBLE_SN') String stockDisponibleSN,@JsonKey(name: 'F_DISPONIBLE') DateTime? fechaDisponible,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') String? pedidoLineaComponenteId
});




}
/// @nodoc
class _$PedidoVentaLineaLocalDTOCopyWithImpl<$Res>
    implements $PedidoVentaLineaLocalDTOCopyWith<$Res> {
  _$PedidoVentaLineaLocalDTOCopyWithImpl(this._self, this._then);

  final PedidoVentaLineaLocalDTO _self;
  final $Res Function(PedidoVentaLineaLocalDTO) _then;

/// Create a copy of PedidoVentaLineaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pedidoVentaAppId = null,Object? empresaId = freezed,Object? pedidoId = freezed,Object? pedidoVentaLineaAppId = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidad = null,Object? precioDivisa = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? descuentoProntoPago = null,Object? stockDisponibleSN = null,Object? fechaDisponible = freezed,Object? iva = null,Object? pedidoLineaComponenteId = freezed,}) {
  return _then(_self.copyWith(
pedidoVentaAppId: null == pedidoVentaAppId ? _self.pedidoVentaAppId : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
as String,empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoId: freezed == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaLineaAppId: null == pedidoVentaLineaAppId ? _self.pedidoVentaLineaAppId : pedidoVentaLineaAppId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as double,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,descuentoProntoPago: null == descuentoProntoPago ? _self.descuentoProntoPago : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
as double,stockDisponibleSN: null == stockDisponibleSN ? _self.stockDisponibleSN : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
as String,fechaDisponible: freezed == fechaDisponible ? _self.fechaDisponible : fechaDisponible // ignore: cast_nullable_to_non_nullable
as DateTime?,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,pedidoLineaComponenteId: freezed == pedidoLineaComponenteId ? _self.pedidoLineaComponenteId : pedidoLineaComponenteId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoVentaLineaLocalDTO].
extension PedidoVentaLineaLocalDTOPatterns on PedidoVentaLineaLocalDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoVentaLineaLocalDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoVentaLineaLocalDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoVentaLineaLocalDTO value)  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaLineaLocalDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoVentaLineaLocalDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaLineaLocalDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'PEDIDO_APP_ID')  String pedidoVentaAppId, @JsonKey(name: 'EMPRESA_ID')  String? empresaId, @JsonKey(name: 'PEDIDO_ID')  String? pedidoId, @JsonKey(name: 'LIN_APP_ID')  String pedidoVentaLineaAppId, @JsonKey(name: 'PRODUCTO_ID')  String articuloId, @JsonKey(name: 'DENOMINACION')  String articuloDescription, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'PRECIO_DIVISA')  double precioDivisa, @JsonKey(name: 'TPRECIO')  int tipoPrecio, @JsonKey(name: 'DTO1')  double descuento1, @JsonKey(name: 'DTO2')  double descuento2, @JsonKey(name: 'DTO3')  double descuento3, @JsonKey(name: 'DTO_PP')  double descuentoProntoPago, @JsonKey(name: 'STOCK_DISPONIBLE_SN')  String stockDisponibleSN, @JsonKey(name: 'F_DISPONIBLE')  DateTime? fechaDisponible, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')  String? pedidoLineaComponenteId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoVentaLineaLocalDTO() when $default != null:
return $default(_that.pedidoVentaAppId,_that.empresaId,_that.pedidoId,_that.pedidoVentaLineaAppId,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.descuentoProntoPago,_that.stockDisponibleSN,_that.fechaDisponible,_that.iva,_that.pedidoLineaComponenteId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'PEDIDO_APP_ID')  String pedidoVentaAppId, @JsonKey(name: 'EMPRESA_ID')  String? empresaId, @JsonKey(name: 'PEDIDO_ID')  String? pedidoId, @JsonKey(name: 'LIN_APP_ID')  String pedidoVentaLineaAppId, @JsonKey(name: 'PRODUCTO_ID')  String articuloId, @JsonKey(name: 'DENOMINACION')  String articuloDescription, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'PRECIO_DIVISA')  double precioDivisa, @JsonKey(name: 'TPRECIO')  int tipoPrecio, @JsonKey(name: 'DTO1')  double descuento1, @JsonKey(name: 'DTO2')  double descuento2, @JsonKey(name: 'DTO3')  double descuento3, @JsonKey(name: 'DTO_PP')  double descuentoProntoPago, @JsonKey(name: 'STOCK_DISPONIBLE_SN')  String stockDisponibleSN, @JsonKey(name: 'F_DISPONIBLE')  DateTime? fechaDisponible, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')  String? pedidoLineaComponenteId)  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaLineaLocalDTO():
return $default(_that.pedidoVentaAppId,_that.empresaId,_that.pedidoId,_that.pedidoVentaLineaAppId,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.descuentoProntoPago,_that.stockDisponibleSN,_that.fechaDisponible,_that.iva,_that.pedidoLineaComponenteId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'PEDIDO_APP_ID')  String pedidoVentaAppId, @JsonKey(name: 'EMPRESA_ID')  String? empresaId, @JsonKey(name: 'PEDIDO_ID')  String? pedidoId, @JsonKey(name: 'LIN_APP_ID')  String pedidoVentaLineaAppId, @JsonKey(name: 'PRODUCTO_ID')  String articuloId, @JsonKey(name: 'DENOMINACION')  String articuloDescription, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'PRECIO_DIVISA')  double precioDivisa, @JsonKey(name: 'TPRECIO')  int tipoPrecio, @JsonKey(name: 'DTO1')  double descuento1, @JsonKey(name: 'DTO2')  double descuento2, @JsonKey(name: 'DTO3')  double descuento3, @JsonKey(name: 'DTO_PP')  double descuentoProntoPago, @JsonKey(name: 'STOCK_DISPONIBLE_SN')  String stockDisponibleSN, @JsonKey(name: 'F_DISPONIBLE')  DateTime? fechaDisponible, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')  String? pedidoLineaComponenteId)?  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaLineaLocalDTO() when $default != null:
return $default(_that.pedidoVentaAppId,_that.empresaId,_that.pedidoId,_that.pedidoVentaLineaAppId,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.descuentoProntoPago,_that.stockDisponibleSN,_that.fechaDisponible,_that.iva,_that.pedidoLineaComponenteId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PedidoVentaLineaLocalDTO extends PedidoVentaLineaLocalDTO {
  const _PedidoVentaLineaLocalDTO({@JsonKey(name: 'PEDIDO_APP_ID') required this.pedidoVentaAppId, @JsonKey(name: 'EMPRESA_ID') this.empresaId, @JsonKey(name: 'PEDIDO_ID') this.pedidoId, @JsonKey(name: 'LIN_APP_ID') required this.pedidoVentaLineaAppId, @JsonKey(name: 'PRODUCTO_ID') required this.articuloId, @JsonKey(name: 'DENOMINACION') required this.articuloDescription, @JsonKey(name: 'CANTIDAD') required this.cantidad, @JsonKey(name: 'PRECIO_DIVISA') required this.precioDivisa, @JsonKey(name: 'TPRECIO') required this.tipoPrecio, @JsonKey(name: 'DTO1') required this.descuento1, @JsonKey(name: 'DTO2') required this.descuento2, @JsonKey(name: 'DTO3') required this.descuento3, @JsonKey(name: 'DTO_PP') required this.descuentoProntoPago, @JsonKey(name: 'STOCK_DISPONIBLE_SN') required this.stockDisponibleSN, @JsonKey(name: 'F_DISPONIBLE') this.fechaDisponible, @JsonKey(name: 'IVA') required this.iva, @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') this.pedidoLineaComponenteId}): super._();
  factory _PedidoVentaLineaLocalDTO.fromJson(Map<String, dynamic> json) => _$PedidoVentaLineaLocalDTOFromJson(json);

@override@JsonKey(name: 'PEDIDO_APP_ID') final  String pedidoVentaAppId;
@override@JsonKey(name: 'EMPRESA_ID') final  String? empresaId;
@override@JsonKey(name: 'PEDIDO_ID') final  String? pedidoId;
@override@JsonKey(name: 'LIN_APP_ID') final  String pedidoVentaLineaAppId;
@override@JsonKey(name: 'PRODUCTO_ID') final  String articuloId;
@override@JsonKey(name: 'DENOMINACION') final  String articuloDescription;
@override@JsonKey(name: 'CANTIDAD') final  int cantidad;
@override@JsonKey(name: 'PRECIO_DIVISA') final  double precioDivisa;
@override@JsonKey(name: 'TPRECIO') final  int tipoPrecio;
@override@JsonKey(name: 'DTO1') final  double descuento1;
@override@JsonKey(name: 'DTO2') final  double descuento2;
@override@JsonKey(name: 'DTO3') final  double descuento3;
@override@JsonKey(name: 'DTO_PP') final  double descuentoProntoPago;
@override@JsonKey(name: 'STOCK_DISPONIBLE_SN') final  String stockDisponibleSN;
@override@JsonKey(name: 'F_DISPONIBLE') final  DateTime? fechaDisponible;
@override@JsonKey(name: 'IVA') final  double iva;
@override@JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') final  String? pedidoLineaComponenteId;

/// Create a copy of PedidoVentaLineaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoVentaLineaLocalDTOCopyWith<_PedidoVentaLineaLocalDTO> get copyWith => __$PedidoVentaLineaLocalDTOCopyWithImpl<_PedidoVentaLineaLocalDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PedidoVentaLineaLocalDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoVentaLineaLocalDTO&&(identical(other.pedidoVentaAppId, pedidoVentaAppId) || other.pedidoVentaAppId == pedidoVentaAppId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.pedidoVentaLineaAppId, pedidoVentaLineaAppId) || other.pedidoVentaLineaAppId == pedidoVentaLineaAppId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.descuentoProntoPago, descuentoProntoPago) || other.descuentoProntoPago == descuentoProntoPago)&&(identical(other.stockDisponibleSN, stockDisponibleSN) || other.stockDisponibleSN == stockDisponibleSN)&&(identical(other.fechaDisponible, fechaDisponible) || other.fechaDisponible == fechaDisponible)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.pedidoLineaComponenteId, pedidoLineaComponenteId) || other.pedidoLineaComponenteId == pedidoLineaComponenteId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pedidoVentaAppId,empresaId,pedidoId,pedidoVentaLineaAppId,articuloId,articuloDescription,cantidad,precioDivisa,tipoPrecio,descuento1,descuento2,descuento3,descuentoProntoPago,stockDisponibleSN,fechaDisponible,iva,pedidoLineaComponenteId);

@override
String toString() {
  return 'PedidoVentaLineaLocalDTO(pedidoVentaAppId: $pedidoVentaAppId, empresaId: $empresaId, pedidoId: $pedidoId, pedidoVentaLineaAppId: $pedidoVentaLineaAppId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, descuentoProntoPago: $descuentoProntoPago, stockDisponibleSN: $stockDisponibleSN, fechaDisponible: $fechaDisponible, iva: $iva, pedidoLineaComponenteId: $pedidoLineaComponenteId)';
}


}

/// @nodoc
abstract mixin class _$PedidoVentaLineaLocalDTOCopyWith<$Res> implements $PedidoVentaLineaLocalDTOCopyWith<$Res> {
  factory _$PedidoVentaLineaLocalDTOCopyWith(_PedidoVentaLineaLocalDTO value, $Res Function(_PedidoVentaLineaLocalDTO) _then) = __$PedidoVentaLineaLocalDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,@JsonKey(name: 'EMPRESA_ID') String? empresaId,@JsonKey(name: 'PEDIDO_ID') String? pedidoId,@JsonKey(name: 'LIN_APP_ID') String pedidoVentaLineaAppId,@JsonKey(name: 'PRODUCTO_ID') String articuloId,@JsonKey(name: 'DENOMINACION') String articuloDescription,@JsonKey(name: 'CANTIDAD') int cantidad,@JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,@JsonKey(name: 'TPRECIO') int tipoPrecio,@JsonKey(name: 'DTO1') double descuento1,@JsonKey(name: 'DTO2') double descuento2,@JsonKey(name: 'DTO3') double descuento3,@JsonKey(name: 'DTO_PP') double descuentoProntoPago,@JsonKey(name: 'STOCK_DISPONIBLE_SN') String stockDisponibleSN,@JsonKey(name: 'F_DISPONIBLE') DateTime? fechaDisponible,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') String? pedidoLineaComponenteId
});




}
/// @nodoc
class __$PedidoVentaLineaLocalDTOCopyWithImpl<$Res>
    implements _$PedidoVentaLineaLocalDTOCopyWith<$Res> {
  __$PedidoVentaLineaLocalDTOCopyWithImpl(this._self, this._then);

  final _PedidoVentaLineaLocalDTO _self;
  final $Res Function(_PedidoVentaLineaLocalDTO) _then;

/// Create a copy of PedidoVentaLineaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pedidoVentaAppId = null,Object? empresaId = freezed,Object? pedidoId = freezed,Object? pedidoVentaLineaAppId = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidad = null,Object? precioDivisa = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? descuentoProntoPago = null,Object? stockDisponibleSN = null,Object? fechaDisponible = freezed,Object? iva = null,Object? pedidoLineaComponenteId = freezed,}) {
  return _then(_PedidoVentaLineaLocalDTO(
pedidoVentaAppId: null == pedidoVentaAppId ? _self.pedidoVentaAppId : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
as String,empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoId: freezed == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaLineaAppId: null == pedidoVentaLineaAppId ? _self.pedidoVentaLineaAppId : pedidoVentaLineaAppId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as double,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,descuentoProntoPago: null == descuentoProntoPago ? _self.descuentoProntoPago : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
as double,stockDisponibleSN: null == stockDisponibleSN ? _self.stockDisponibleSN : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
as String,fechaDisponible: freezed == fechaDisponible ? _self.fechaDisponible : fechaDisponible // ignore: cast_nullable_to_non_nullable
as DateTime?,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,pedidoLineaComponenteId: freezed == pedidoLineaComponenteId ? _self.pedidoLineaComponenteId : pedidoLineaComponenteId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
