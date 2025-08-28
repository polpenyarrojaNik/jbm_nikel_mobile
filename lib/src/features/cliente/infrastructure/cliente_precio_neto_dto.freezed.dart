// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_precio_neto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClientePrecioNetoDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'CANTIDAD_DESDE') int get cantidadDesde;@JsonKey(name: 'PRECIO') double get precio;@JsonKey(name: 'TIPO_PRECIO') int? get tipoPrecio;@JsonKey(name: 'DTO_ADICIONAL') double? get dtoAdicional;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ClientePrecioNetoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientePrecioNetoDTOCopyWith<ClientePrecioNetoDTO> get copyWith => _$ClientePrecioNetoDTOCopyWithImpl<ClientePrecioNetoDTO>(this as ClientePrecioNetoDTO, _$identity);

  /// Serializes this ClientePrecioNetoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientePrecioNetoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.dtoAdicional, dtoAdicional) || other.dtoAdicional == dtoAdicional)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,cantidadDesde,precio,tipoPrecio,dtoAdicional,lastUpdated,deleted);

@override
String toString() {
  return 'ClientePrecioNetoDTO(clienteId: $clienteId, articuloId: $articuloId, cantidadDesde: $cantidadDesde, precio: $precio, tipoPrecio: $tipoPrecio, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClientePrecioNetoDTOCopyWith<$Res>  {
  factory $ClientePrecioNetoDTOCopyWith(ClientePrecioNetoDTO value, $Res Function(ClientePrecioNetoDTO) _then) = _$ClientePrecioNetoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'PRECIO') double precio,@JsonKey(name: 'TIPO_PRECIO') int? tipoPrecio,@JsonKey(name: 'DTO_ADICIONAL') double? dtoAdicional,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ClientePrecioNetoDTOCopyWithImpl<$Res>
    implements $ClientePrecioNetoDTOCopyWith<$Res> {
  _$ClientePrecioNetoDTOCopyWithImpl(this._self, this._then);

  final ClientePrecioNetoDTO _self;
  final $Res Function(ClientePrecioNetoDTO) _then;

/// Create a copy of ClientePrecioNetoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? articuloId = null,Object? cantidadDesde = null,Object? precio = null,Object? tipoPrecio = freezed,Object? dtoAdicional = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double,tipoPrecio: freezed == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int?,dtoAdicional: freezed == dtoAdicional ? _self.dtoAdicional : dtoAdicional // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClientePrecioNetoDTO].
extension ClientePrecioNetoDTOPatterns on ClientePrecioNetoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClientePrecioNetoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientePrecioNetoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClientePrecioNetoDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClientePrecioNetoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClientePrecioNetoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClientePrecioNetoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'TIPO_PRECIO')  int? tipoPrecio, @JsonKey(name: 'DTO_ADICIONAL')  double? dtoAdicional, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientePrecioNetoDTO() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.cantidadDesde,_that.precio,_that.tipoPrecio,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'TIPO_PRECIO')  int? tipoPrecio, @JsonKey(name: 'DTO_ADICIONAL')  double? dtoAdicional, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ClientePrecioNetoDTO():
return $default(_that.clienteId,_that.articuloId,_that.cantidadDesde,_that.precio,_that.tipoPrecio,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'TIPO_PRECIO')  int? tipoPrecio, @JsonKey(name: 'DTO_ADICIONAL')  double? dtoAdicional, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClientePrecioNetoDTO() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.cantidadDesde,_that.precio,_that.tipoPrecio,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClientePrecioNetoDTO extends ClientePrecioNetoDTO {
  const _ClientePrecioNetoDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde, @JsonKey(name: 'PRECIO') required this.precio, @JsonKey(name: 'TIPO_PRECIO') this.tipoPrecio, @JsonKey(name: 'DTO_ADICIONAL') this.dtoAdicional, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ClientePrecioNetoDTO.fromJson(Map<String, dynamic> json) => _$ClientePrecioNetoDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'CANTIDAD_DESDE') final  int cantidadDesde;
@override@JsonKey(name: 'PRECIO') final  double precio;
@override@JsonKey(name: 'TIPO_PRECIO') final  int? tipoPrecio;
@override@JsonKey(name: 'DTO_ADICIONAL') final  double? dtoAdicional;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ClientePrecioNetoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientePrecioNetoDTOCopyWith<_ClientePrecioNetoDTO> get copyWith => __$ClientePrecioNetoDTOCopyWithImpl<_ClientePrecioNetoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClientePrecioNetoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientePrecioNetoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.dtoAdicional, dtoAdicional) || other.dtoAdicional == dtoAdicional)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,cantidadDesde,precio,tipoPrecio,dtoAdicional,lastUpdated,deleted);

@override
String toString() {
  return 'ClientePrecioNetoDTO(clienteId: $clienteId, articuloId: $articuloId, cantidadDesde: $cantidadDesde, precio: $precio, tipoPrecio: $tipoPrecio, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClientePrecioNetoDTOCopyWith<$Res> implements $ClientePrecioNetoDTOCopyWith<$Res> {
  factory _$ClientePrecioNetoDTOCopyWith(_ClientePrecioNetoDTO value, $Res Function(_ClientePrecioNetoDTO) _then) = __$ClientePrecioNetoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'PRECIO') double precio,@JsonKey(name: 'TIPO_PRECIO') int? tipoPrecio,@JsonKey(name: 'DTO_ADICIONAL') double? dtoAdicional,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ClientePrecioNetoDTOCopyWithImpl<$Res>
    implements _$ClientePrecioNetoDTOCopyWith<$Res> {
  __$ClientePrecioNetoDTOCopyWithImpl(this._self, this._then);

  final _ClientePrecioNetoDTO _self;
  final $Res Function(_ClientePrecioNetoDTO) _then;

/// Create a copy of ClientePrecioNetoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? articuloId = null,Object? cantidadDesde = null,Object? precio = null,Object? tipoPrecio = freezed,Object? dtoAdicional = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClientePrecioNetoDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double,tipoPrecio: freezed == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int?,dtoAdicional: freezed == dtoAdicional ? _self.dtoAdicional : dtoAdicional // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
