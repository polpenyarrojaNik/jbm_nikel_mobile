// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estadisticas_ultimos_precios_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EstadisticasUltimosPreciosDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'LINEA') int get linea;@JsonKey(name: 'CANTIDAD') int get cantidad;@JsonKey(name: 'FECHA') DateTime get fecha;@JsonKey(name: 'PRECIO_DIVISA') double get precioDivisa;@JsonKey(name: 'DIVISA_ID') String get divisaId;@JsonKey(name: 'TIPO_PRECIO') int get tipoPrecio;@JsonKey(name: 'DESCUENTO1') double get descuento1;@JsonKey(name: 'DESCUENTO2') double get descuento2;@JsonKey(name: 'DESCUENTO3') double get descuento3;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of EstadisticasUltimosPreciosDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EstadisticasUltimosPreciosDTOCopyWith<EstadisticasUltimosPreciosDTO> get copyWith => _$EstadisticasUltimosPreciosDTOCopyWithImpl<EstadisticasUltimosPreciosDTO>(this as EstadisticasUltimosPreciosDTO, _$identity);

  /// Serializes this EstadisticasUltimosPreciosDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EstadisticasUltimosPreciosDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.linea, linea) || other.linea == linea)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,linea,cantidad,fecha,precioDivisa,divisaId,tipoPrecio,descuento1,descuento2,descuento3,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisticasUltimosPreciosDTO(clienteId: $clienteId, articuloId: $articuloId, linea: $linea, cantidad: $cantidad, fecha: $fecha, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $EstadisticasUltimosPreciosDTOCopyWith<$Res>  {
  factory $EstadisticasUltimosPreciosDTOCopyWith(EstadisticasUltimosPreciosDTO value, $Res Function(EstadisticasUltimosPreciosDTO) _then) = _$EstadisticasUltimosPreciosDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'LINEA') int linea,@JsonKey(name: 'CANTIDAD') int cantidad,@JsonKey(name: 'FECHA') DateTime fecha,@JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,@JsonKey(name: 'DESCUENTO1') double descuento1,@JsonKey(name: 'DESCUENTO2') double descuento2,@JsonKey(name: 'DESCUENTO3') double descuento3,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$EstadisticasUltimosPreciosDTOCopyWithImpl<$Res>
    implements $EstadisticasUltimosPreciosDTOCopyWith<$Res> {
  _$EstadisticasUltimosPreciosDTOCopyWithImpl(this._self, this._then);

  final EstadisticasUltimosPreciosDTO _self;
  final $Res Function(EstadisticasUltimosPreciosDTO) _then;

/// Create a copy of EstadisticasUltimosPreciosDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? articuloId = null,Object? linea = null,Object? cantidad = null,Object? fecha = null,Object? precioDivisa = null,Object? divisaId = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,linea: null == linea ? _self.linea : linea // ignore: cast_nullable_to_non_nullable
as int,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as double,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EstadisticasUltimosPreciosDTO].
extension EstadisticasUltimosPreciosDTOPatterns on EstadisticasUltimosPreciosDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EstadisticasUltimosPreciosDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EstadisticasUltimosPreciosDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EstadisticasUltimosPreciosDTO value)  $default,){
final _that = this;
switch (_that) {
case _EstadisticasUltimosPreciosDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EstadisticasUltimosPreciosDTO value)?  $default,){
final _that = this;
switch (_that) {
case _EstadisticasUltimosPreciosDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'LINEA')  int linea, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'PRECIO_DIVISA')  double precioDivisa, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'DESCUENTO1')  double descuento1, @JsonKey(name: 'DESCUENTO2')  double descuento2, @JsonKey(name: 'DESCUENTO3')  double descuento3, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EstadisticasUltimosPreciosDTO() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.linea,_that.cantidad,_that.fecha,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'LINEA')  int linea, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'PRECIO_DIVISA')  double precioDivisa, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'DESCUENTO1')  double descuento1, @JsonKey(name: 'DESCUENTO2')  double descuento2, @JsonKey(name: 'DESCUENTO3')  double descuento3, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _EstadisticasUltimosPreciosDTO():
return $default(_that.clienteId,_that.articuloId,_that.linea,_that.cantidad,_that.fecha,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'LINEA')  int linea, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'PRECIO_DIVISA')  double precioDivisa, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'DESCUENTO1')  double descuento1, @JsonKey(name: 'DESCUENTO2')  double descuento2, @JsonKey(name: 'DESCUENTO3')  double descuento3, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _EstadisticasUltimosPreciosDTO() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.linea,_that.cantidad,_that.fecha,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EstadisticasUltimosPreciosDTO extends EstadisticasUltimosPreciosDTO {
  const _EstadisticasUltimosPreciosDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'LINEA') required this.linea, @JsonKey(name: 'CANTIDAD') required this.cantidad, @JsonKey(name: 'FECHA') required this.fecha, @JsonKey(name: 'PRECIO_DIVISA') required this.precioDivisa, @JsonKey(name: 'DIVISA_ID') required this.divisaId, @JsonKey(name: 'TIPO_PRECIO') required this.tipoPrecio, @JsonKey(name: 'DESCUENTO1') required this.descuento1, @JsonKey(name: 'DESCUENTO2') required this.descuento2, @JsonKey(name: 'DESCUENTO3') required this.descuento3, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _EstadisticasUltimosPreciosDTO.fromJson(Map<String, dynamic> json) => _$EstadisticasUltimosPreciosDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'LINEA') final  int linea;
@override@JsonKey(name: 'CANTIDAD') final  int cantidad;
@override@JsonKey(name: 'FECHA') final  DateTime fecha;
@override@JsonKey(name: 'PRECIO_DIVISA') final  double precioDivisa;
@override@JsonKey(name: 'DIVISA_ID') final  String divisaId;
@override@JsonKey(name: 'TIPO_PRECIO') final  int tipoPrecio;
@override@JsonKey(name: 'DESCUENTO1') final  double descuento1;
@override@JsonKey(name: 'DESCUENTO2') final  double descuento2;
@override@JsonKey(name: 'DESCUENTO3') final  double descuento3;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of EstadisticasUltimosPreciosDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EstadisticasUltimosPreciosDTOCopyWith<_EstadisticasUltimosPreciosDTO> get copyWith => __$EstadisticasUltimosPreciosDTOCopyWithImpl<_EstadisticasUltimosPreciosDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EstadisticasUltimosPreciosDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EstadisticasUltimosPreciosDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.linea, linea) || other.linea == linea)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,linea,cantidad,fecha,precioDivisa,divisaId,tipoPrecio,descuento1,descuento2,descuento3,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisticasUltimosPreciosDTO(clienteId: $clienteId, articuloId: $articuloId, linea: $linea, cantidad: $cantidad, fecha: $fecha, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$EstadisticasUltimosPreciosDTOCopyWith<$Res> implements $EstadisticasUltimosPreciosDTOCopyWith<$Res> {
  factory _$EstadisticasUltimosPreciosDTOCopyWith(_EstadisticasUltimosPreciosDTO value, $Res Function(_EstadisticasUltimosPreciosDTO) _then) = __$EstadisticasUltimosPreciosDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'LINEA') int linea,@JsonKey(name: 'CANTIDAD') int cantidad,@JsonKey(name: 'FECHA') DateTime fecha,@JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,@JsonKey(name: 'DESCUENTO1') double descuento1,@JsonKey(name: 'DESCUENTO2') double descuento2,@JsonKey(name: 'DESCUENTO3') double descuento3,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$EstadisticasUltimosPreciosDTOCopyWithImpl<$Res>
    implements _$EstadisticasUltimosPreciosDTOCopyWith<$Res> {
  __$EstadisticasUltimosPreciosDTOCopyWithImpl(this._self, this._then);

  final _EstadisticasUltimosPreciosDTO _self;
  final $Res Function(_EstadisticasUltimosPreciosDTO) _then;

/// Create a copy of EstadisticasUltimosPreciosDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? articuloId = null,Object? linea = null,Object? cantidad = null,Object? fecha = null,Object? precioDivisa = null,Object? divisaId = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_EstadisticasUltimosPreciosDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,linea: null == linea ? _self.linea : linea // ignore: cast_nullable_to_non_nullable
as int,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as double,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
