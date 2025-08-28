// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_linea_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PedidoVentaLineaDTO {

@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'PEDIDO_ID') String get pedidoId;@JsonKey(name: 'PEDIDO_LINEA_ID') String get pedidoVentaLineaId;@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'ARTICULO_DESCRIPCION') String get articuloDescription;@JsonKey(name: 'CANTIDAD') int get cantidad;@JsonKey(name: 'PRECIO_DIVISA') double get precioDivisa;@JsonKey(name: 'TIPO_PRECIO') int get tipoPrecio;@JsonKey(name: 'DESCUENTO1') double get descuento1;@JsonKey(name: 'DESCUENTO2') double get descuento2;@JsonKey(name: 'DESCUENTO3') double get descuento3;@JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') String? get pedidoLineaIdComponente;@JsonKey(name: 'TOTAL_LINEA') double? get importeLinea;@JsonKey(name: 'CANTIDAD_SERVIDA') int get cantidadServida;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of PedidoVentaLineaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoVentaLineaDTOCopyWith<PedidoVentaLineaDTO> get copyWith => _$PedidoVentaLineaDTOCopyWithImpl<PedidoVentaLineaDTO>(this as PedidoVentaLineaDTO, _$identity);

  /// Serializes this PedidoVentaLineaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoVentaLineaDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.pedidoVentaLineaId, pedidoVentaLineaId) || other.pedidoVentaLineaId == pedidoVentaLineaId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.pedidoLineaIdComponente, pedidoLineaIdComponente) || other.pedidoLineaIdComponente == pedidoLineaIdComponente)&&(identical(other.importeLinea, importeLinea) || other.importeLinea == importeLinea)&&(identical(other.cantidadServida, cantidadServida) || other.cantidadServida == cantidadServida)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,pedidoId,pedidoVentaLineaId,articuloId,articuloDescription,cantidad,precioDivisa,tipoPrecio,descuento1,descuento2,descuento3,pedidoLineaIdComponente,importeLinea,cantidadServida,lastUpdated,deleted);

@override
String toString() {
  return 'PedidoVentaLineaDTO(empresaId: $empresaId, pedidoId: $pedidoId, pedidoVentaLineaId: $pedidoVentaLineaId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, pedidoLineaIdComponente: $pedidoLineaIdComponente, importeLinea: $importeLinea, cantidadServida: $cantidadServida, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PedidoVentaLineaDTOCopyWith<$Res>  {
  factory $PedidoVentaLineaDTOCopyWith(PedidoVentaLineaDTO value, $Res Function(PedidoVentaLineaDTO) _then) = _$PedidoVentaLineaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PEDIDO_ID') String pedidoId,@JsonKey(name: 'PEDIDO_LINEA_ID') String pedidoVentaLineaId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'ARTICULO_DESCRIPCION') String articuloDescription,@JsonKey(name: 'CANTIDAD') int cantidad,@JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,@JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,@JsonKey(name: 'DESCUENTO1') double descuento1,@JsonKey(name: 'DESCUENTO2') double descuento2,@JsonKey(name: 'DESCUENTO3') double descuento3,@JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') String? pedidoLineaIdComponente,@JsonKey(name: 'TOTAL_LINEA') double? importeLinea,@JsonKey(name: 'CANTIDAD_SERVIDA') int cantidadServida,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$PedidoVentaLineaDTOCopyWithImpl<$Res>
    implements $PedidoVentaLineaDTOCopyWith<$Res> {
  _$PedidoVentaLineaDTOCopyWithImpl(this._self, this._then);

  final PedidoVentaLineaDTO _self;
  final $Res Function(PedidoVentaLineaDTO) _then;

/// Create a copy of PedidoVentaLineaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? pedidoId = null,Object? pedidoVentaLineaId = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidad = null,Object? precioDivisa = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? pedidoLineaIdComponente = freezed,Object? importeLinea = freezed,Object? cantidadServida = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoId: null == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaLineaId: null == pedidoVentaLineaId ? _self.pedidoVentaLineaId : pedidoVentaLineaId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as double,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,pedidoLineaIdComponente: freezed == pedidoLineaIdComponente ? _self.pedidoLineaIdComponente : pedidoLineaIdComponente // ignore: cast_nullable_to_non_nullable
as String?,importeLinea: freezed == importeLinea ? _self.importeLinea : importeLinea // ignore: cast_nullable_to_non_nullable
as double?,cantidadServida: null == cantidadServida ? _self.cantidadServida : cantidadServida // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoVentaLineaDTO].
extension PedidoVentaLineaDTOPatterns on PedidoVentaLineaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoVentaLineaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoVentaLineaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoVentaLineaDTO value)  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaLineaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoVentaLineaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaLineaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoId, @JsonKey(name: 'PEDIDO_LINEA_ID')  String pedidoVentaLineaId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'ARTICULO_DESCRIPCION')  String articuloDescription, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'PRECIO_DIVISA')  double precioDivisa, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'DESCUENTO1')  double descuento1, @JsonKey(name: 'DESCUENTO2')  double descuento2, @JsonKey(name: 'DESCUENTO3')  double descuento3, @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')  String? pedidoLineaIdComponente, @JsonKey(name: 'TOTAL_LINEA')  double? importeLinea, @JsonKey(name: 'CANTIDAD_SERVIDA')  int cantidadServida, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoVentaLineaDTO() when $default != null:
return $default(_that.empresaId,_that.pedidoId,_that.pedidoVentaLineaId,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.pedidoLineaIdComponente,_that.importeLinea,_that.cantidadServida,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoId, @JsonKey(name: 'PEDIDO_LINEA_ID')  String pedidoVentaLineaId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'ARTICULO_DESCRIPCION')  String articuloDescription, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'PRECIO_DIVISA')  double precioDivisa, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'DESCUENTO1')  double descuento1, @JsonKey(name: 'DESCUENTO2')  double descuento2, @JsonKey(name: 'DESCUENTO3')  double descuento3, @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')  String? pedidoLineaIdComponente, @JsonKey(name: 'TOTAL_LINEA')  double? importeLinea, @JsonKey(name: 'CANTIDAD_SERVIDA')  int cantidadServida, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaLineaDTO():
return $default(_that.empresaId,_that.pedidoId,_that.pedidoVentaLineaId,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.pedidoLineaIdComponente,_that.importeLinea,_that.cantidadServida,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoId, @JsonKey(name: 'PEDIDO_LINEA_ID')  String pedidoVentaLineaId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'ARTICULO_DESCRIPCION')  String articuloDescription, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'PRECIO_DIVISA')  double precioDivisa, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'DESCUENTO1')  double descuento1, @JsonKey(name: 'DESCUENTO2')  double descuento2, @JsonKey(name: 'DESCUENTO3')  double descuento3, @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')  String? pedidoLineaIdComponente, @JsonKey(name: 'TOTAL_LINEA')  double? importeLinea, @JsonKey(name: 'CANTIDAD_SERVIDA')  int cantidadServida, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaLineaDTO() when $default != null:
return $default(_that.empresaId,_that.pedidoId,_that.pedidoVentaLineaId,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.pedidoLineaIdComponente,_that.importeLinea,_that.cantidadServida,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PedidoVentaLineaDTO extends PedidoVentaLineaDTO {
  const _PedidoVentaLineaDTO({@JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'PEDIDO_ID') required this.pedidoId, @JsonKey(name: 'PEDIDO_LINEA_ID') required this.pedidoVentaLineaId, @JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'ARTICULO_DESCRIPCION') required this.articuloDescription, @JsonKey(name: 'CANTIDAD') required this.cantidad, @JsonKey(name: 'PRECIO_DIVISA') required this.precioDivisa, @JsonKey(name: 'TIPO_PRECIO') required this.tipoPrecio, @JsonKey(name: 'DESCUENTO1') required this.descuento1, @JsonKey(name: 'DESCUENTO2') required this.descuento2, @JsonKey(name: 'DESCUENTO3') required this.descuento3, @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') this.pedidoLineaIdComponente, @JsonKey(name: 'TOTAL_LINEA') this.importeLinea, @JsonKey(name: 'CANTIDAD_SERVIDA') required this.cantidadServida, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') required this.deleted}): super._();
  factory _PedidoVentaLineaDTO.fromJson(Map<String, dynamic> json) => _$PedidoVentaLineaDTOFromJson(json);

@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'PEDIDO_ID') final  String pedidoId;
@override@JsonKey(name: 'PEDIDO_LINEA_ID') final  String pedidoVentaLineaId;
@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'ARTICULO_DESCRIPCION') final  String articuloDescription;
@override@JsonKey(name: 'CANTIDAD') final  int cantidad;
@override@JsonKey(name: 'PRECIO_DIVISA') final  double precioDivisa;
@override@JsonKey(name: 'TIPO_PRECIO') final  int tipoPrecio;
@override@JsonKey(name: 'DESCUENTO1') final  double descuento1;
@override@JsonKey(name: 'DESCUENTO2') final  double descuento2;
@override@JsonKey(name: 'DESCUENTO3') final  double descuento3;
@override@JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') final  String? pedidoLineaIdComponente;
@override@JsonKey(name: 'TOTAL_LINEA') final  double? importeLinea;
@override@JsonKey(name: 'CANTIDAD_SERVIDA') final  int cantidadServida;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of PedidoVentaLineaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoVentaLineaDTOCopyWith<_PedidoVentaLineaDTO> get copyWith => __$PedidoVentaLineaDTOCopyWithImpl<_PedidoVentaLineaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PedidoVentaLineaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoVentaLineaDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.pedidoVentaLineaId, pedidoVentaLineaId) || other.pedidoVentaLineaId == pedidoVentaLineaId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.pedidoLineaIdComponente, pedidoLineaIdComponente) || other.pedidoLineaIdComponente == pedidoLineaIdComponente)&&(identical(other.importeLinea, importeLinea) || other.importeLinea == importeLinea)&&(identical(other.cantidadServida, cantidadServida) || other.cantidadServida == cantidadServida)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,pedidoId,pedidoVentaLineaId,articuloId,articuloDescription,cantidad,precioDivisa,tipoPrecio,descuento1,descuento2,descuento3,pedidoLineaIdComponente,importeLinea,cantidadServida,lastUpdated,deleted);

@override
String toString() {
  return 'PedidoVentaLineaDTO(empresaId: $empresaId, pedidoId: $pedidoId, pedidoVentaLineaId: $pedidoVentaLineaId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, pedidoLineaIdComponente: $pedidoLineaIdComponente, importeLinea: $importeLinea, cantidadServida: $cantidadServida, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PedidoVentaLineaDTOCopyWith<$Res> implements $PedidoVentaLineaDTOCopyWith<$Res> {
  factory _$PedidoVentaLineaDTOCopyWith(_PedidoVentaLineaDTO value, $Res Function(_PedidoVentaLineaDTO) _then) = __$PedidoVentaLineaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PEDIDO_ID') String pedidoId,@JsonKey(name: 'PEDIDO_LINEA_ID') String pedidoVentaLineaId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'ARTICULO_DESCRIPCION') String articuloDescription,@JsonKey(name: 'CANTIDAD') int cantidad,@JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,@JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,@JsonKey(name: 'DESCUENTO1') double descuento1,@JsonKey(name: 'DESCUENTO2') double descuento2,@JsonKey(name: 'DESCUENTO3') double descuento3,@JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') String? pedidoLineaIdComponente,@JsonKey(name: 'TOTAL_LINEA') double? importeLinea,@JsonKey(name: 'CANTIDAD_SERVIDA') int cantidadServida,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$PedidoVentaLineaDTOCopyWithImpl<$Res>
    implements _$PedidoVentaLineaDTOCopyWith<$Res> {
  __$PedidoVentaLineaDTOCopyWithImpl(this._self, this._then);

  final _PedidoVentaLineaDTO _self;
  final $Res Function(_PedidoVentaLineaDTO) _then;

/// Create a copy of PedidoVentaLineaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? pedidoId = null,Object? pedidoVentaLineaId = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidad = null,Object? precioDivisa = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? pedidoLineaIdComponente = freezed,Object? importeLinea = freezed,Object? cantidadServida = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_PedidoVentaLineaDTO(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoId: null == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaLineaId: null == pedidoVentaLineaId ? _self.pedidoVentaLineaId : pedidoVentaLineaId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as double,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,pedidoLineaIdComponente: freezed == pedidoLineaIdComponente ? _self.pedidoLineaIdComponente : pedidoLineaIdComponente // ignore: cast_nullable_to_non_nullable
as String?,importeLinea: freezed == importeLinea ? _self.importeLinea : importeLinea // ignore: cast_nullable_to_non_nullable
as double?,cantidadServida: null == cantidadServida ? _self.cantidadServida : cantidadServida // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
