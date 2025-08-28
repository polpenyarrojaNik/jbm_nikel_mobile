// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_descuento_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteDescuentoDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'FAMILIA_ID') String get familiaId;@JsonKey(name: 'SUBFAMILIA_ID') String get subfamiliaId;@JsonKey(name: 'CANTIDAD_DESDE') int get cantidadDesde;@JsonKey(name: 'DESCUENTO') double get descuento;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ClienteDescuentoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteDescuentoDTOCopyWith<ClienteDescuentoDTO> get copyWith => _$ClienteDescuentoDTOCopyWithImpl<ClienteDescuentoDTO>(this as ClienteDescuentoDTO, _$identity);

  /// Serializes this ClienteDescuentoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteDescuentoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.subfamiliaId, subfamiliaId) || other.subfamiliaId == subfamiliaId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.descuento, descuento) || other.descuento == descuento)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,familiaId,subfamiliaId,cantidadDesde,descuento,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteDescuentoDTO(clienteId: $clienteId, articuloId: $articuloId, familiaId: $familiaId, subfamiliaId: $subfamiliaId, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteDescuentoDTOCopyWith<$Res>  {
  factory $ClienteDescuentoDTOCopyWith(ClienteDescuentoDTO value, $Res Function(ClienteDescuentoDTO) _then) = _$ClienteDescuentoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'FAMILIA_ID') String familiaId,@JsonKey(name: 'SUBFAMILIA_ID') String subfamiliaId,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'DESCUENTO') double descuento,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ClienteDescuentoDTOCopyWithImpl<$Res>
    implements $ClienteDescuentoDTOCopyWith<$Res> {
  _$ClienteDescuentoDTOCopyWithImpl(this._self, this._then);

  final ClienteDescuentoDTO _self;
  final $Res Function(ClienteDescuentoDTO) _then;

/// Create a copy of ClienteDescuentoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? articuloId = null,Object? familiaId = null,Object? subfamiliaId = null,Object? cantidadDesde = null,Object? descuento = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,familiaId: null == familiaId ? _self.familiaId : familiaId // ignore: cast_nullable_to_non_nullable
as String,subfamiliaId: null == subfamiliaId ? _self.subfamiliaId : subfamiliaId // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,descuento: null == descuento ? _self.descuento : descuento // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteDescuentoDTO].
extension ClienteDescuentoDTOPatterns on ClienteDescuentoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteDescuentoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteDescuentoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteDescuentoDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteDescuentoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteDescuentoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteDescuentoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'FAMILIA_ID')  String familiaId, @JsonKey(name: 'SUBFAMILIA_ID')  String subfamiliaId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'DESCUENTO')  double descuento, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteDescuentoDTO() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.familiaId,_that.subfamiliaId,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'FAMILIA_ID')  String familiaId, @JsonKey(name: 'SUBFAMILIA_ID')  String subfamiliaId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'DESCUENTO')  double descuento, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteDescuentoDTO():
return $default(_that.clienteId,_that.articuloId,_that.familiaId,_that.subfamiliaId,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'FAMILIA_ID')  String familiaId, @JsonKey(name: 'SUBFAMILIA_ID')  String subfamiliaId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'DESCUENTO')  double descuento, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteDescuentoDTO() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.familiaId,_that.subfamiliaId,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteDescuentoDTO extends ClienteDescuentoDTO {
  const _ClienteDescuentoDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'FAMILIA_ID') required this.familiaId, @JsonKey(name: 'SUBFAMILIA_ID') required this.subfamiliaId, @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde, @JsonKey(name: 'DESCUENTO') required this.descuento, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ClienteDescuentoDTO.fromJson(Map<String, dynamic> json) => _$ClienteDescuentoDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'FAMILIA_ID') final  String familiaId;
@override@JsonKey(name: 'SUBFAMILIA_ID') final  String subfamiliaId;
@override@JsonKey(name: 'CANTIDAD_DESDE') final  int cantidadDesde;
@override@JsonKey(name: 'DESCUENTO') final  double descuento;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ClienteDescuentoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteDescuentoDTOCopyWith<_ClienteDescuentoDTO> get copyWith => __$ClienteDescuentoDTOCopyWithImpl<_ClienteDescuentoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteDescuentoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteDescuentoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.subfamiliaId, subfamiliaId) || other.subfamiliaId == subfamiliaId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.descuento, descuento) || other.descuento == descuento)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,familiaId,subfamiliaId,cantidadDesde,descuento,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteDescuentoDTO(clienteId: $clienteId, articuloId: $articuloId, familiaId: $familiaId, subfamiliaId: $subfamiliaId, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteDescuentoDTOCopyWith<$Res> implements $ClienteDescuentoDTOCopyWith<$Res> {
  factory _$ClienteDescuentoDTOCopyWith(_ClienteDescuentoDTO value, $Res Function(_ClienteDescuentoDTO) _then) = __$ClienteDescuentoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'FAMILIA_ID') String familiaId,@JsonKey(name: 'SUBFAMILIA_ID') String subfamiliaId,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'DESCUENTO') double descuento,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ClienteDescuentoDTOCopyWithImpl<$Res>
    implements _$ClienteDescuentoDTOCopyWith<$Res> {
  __$ClienteDescuentoDTOCopyWithImpl(this._self, this._then);

  final _ClienteDescuentoDTO _self;
  final $Res Function(_ClienteDescuentoDTO) _then;

/// Create a copy of ClienteDescuentoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? articuloId = null,Object? familiaId = null,Object? subfamiliaId = null,Object? cantidadDesde = null,Object? descuento = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteDescuentoDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,familiaId: null == familiaId ? _self.familiaId : familiaId // ignore: cast_nullable_to_non_nullable
as String,subfamiliaId: null == subfamiliaId ? _self.subfamiliaId : subfamiliaId // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,descuento: null == descuento ? _self.descuento : descuento // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
