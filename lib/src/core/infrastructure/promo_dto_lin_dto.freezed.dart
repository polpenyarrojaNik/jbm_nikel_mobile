// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_dto_lin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromoDtoLineaDTO {

@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'PROMO_DTO_ID') String get promoDtoId;@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'CANTIDAD_DESDE') int get cantidadDesde;@JsonKey(name: 'PRECIO') double get precio;@JsonKey(name: 'TIPO_PRECIO') int? get tipoPrecio;@JsonKey(name: 'DTO') double get dto;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of PromoDtoLineaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoDtoLineaDTOCopyWith<PromoDtoLineaDTO> get copyWith => _$PromoDtoLineaDTOCopyWithImpl<PromoDtoLineaDTO>(this as PromoDtoLineaDTO, _$identity);

  /// Serializes this PromoDtoLineaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoDtoLineaDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.promoDtoId, promoDtoId) || other.promoDtoId == promoDtoId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.dto, dto) || other.dto == dto)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,promoDtoId,articuloId,cantidadDesde,precio,tipoPrecio,dto,lastUpdated,deleted);

@override
String toString() {
  return 'PromoDtoLineaDTO(empresaId: $empresaId, promoDtoId: $promoDtoId, articuloId: $articuloId, cantidadDesde: $cantidadDesde, precio: $precio, tipoPrecio: $tipoPrecio, dto: $dto, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PromoDtoLineaDTOCopyWith<$Res>  {
  factory $PromoDtoLineaDTOCopyWith(PromoDtoLineaDTO value, $Res Function(PromoDtoLineaDTO) _then) = _$PromoDtoLineaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'PRECIO') double precio,@JsonKey(name: 'TIPO_PRECIO') int? tipoPrecio,@JsonKey(name: 'DTO') double dto,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$PromoDtoLineaDTOCopyWithImpl<$Res>
    implements $PromoDtoLineaDTOCopyWith<$Res> {
  _$PromoDtoLineaDTOCopyWithImpl(this._self, this._then);

  final PromoDtoLineaDTO _self;
  final $Res Function(PromoDtoLineaDTO) _then;

/// Create a copy of PromoDtoLineaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? promoDtoId = null,Object? articuloId = null,Object? cantidadDesde = null,Object? precio = null,Object? tipoPrecio = freezed,Object? dto = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,promoDtoId: null == promoDtoId ? _self.promoDtoId : promoDtoId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double,tipoPrecio: freezed == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int?,dto: null == dto ? _self.dto : dto // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoDtoLineaDTO].
extension PromoDtoLineaDTOPatterns on PromoDtoLineaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoDtoLineaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoDtoLineaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoDtoLineaDTO value)  $default,){
final _that = this;
switch (_that) {
case _PromoDtoLineaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoDtoLineaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PromoDtoLineaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PROMO_DTO_ID')  String promoDtoId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'TIPO_PRECIO')  int? tipoPrecio, @JsonKey(name: 'DTO')  double dto, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoDtoLineaDTO() when $default != null:
return $default(_that.empresaId,_that.promoDtoId,_that.articuloId,_that.cantidadDesde,_that.precio,_that.tipoPrecio,_that.dto,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PROMO_DTO_ID')  String promoDtoId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'TIPO_PRECIO')  int? tipoPrecio, @JsonKey(name: 'DTO')  double dto, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _PromoDtoLineaDTO():
return $default(_that.empresaId,_that.promoDtoId,_that.articuloId,_that.cantidadDesde,_that.precio,_that.tipoPrecio,_that.dto,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PROMO_DTO_ID')  String promoDtoId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'TIPO_PRECIO')  int? tipoPrecio, @JsonKey(name: 'DTO')  double dto, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _PromoDtoLineaDTO() when $default != null:
return $default(_that.empresaId,_that.promoDtoId,_that.articuloId,_that.cantidadDesde,_that.precio,_that.tipoPrecio,_that.dto,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromoDtoLineaDTO extends PromoDtoLineaDTO {
  const _PromoDtoLineaDTO({@JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'PROMO_DTO_ID') required this.promoDtoId, @JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde, @JsonKey(name: 'PRECIO') required this.precio, @JsonKey(name: 'TIPO_PRECIO') required this.tipoPrecio, @JsonKey(name: 'DTO') required this.dto, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _PromoDtoLineaDTO.fromJson(Map<String, dynamic> json) => _$PromoDtoLineaDTOFromJson(json);

@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'PROMO_DTO_ID') final  String promoDtoId;
@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'CANTIDAD_DESDE') final  int cantidadDesde;
@override@JsonKey(name: 'PRECIO') final  double precio;
@override@JsonKey(name: 'TIPO_PRECIO') final  int? tipoPrecio;
@override@JsonKey(name: 'DTO') final  double dto;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of PromoDtoLineaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoDtoLineaDTOCopyWith<_PromoDtoLineaDTO> get copyWith => __$PromoDtoLineaDTOCopyWithImpl<_PromoDtoLineaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoDtoLineaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoDtoLineaDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.promoDtoId, promoDtoId) || other.promoDtoId == promoDtoId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.dto, dto) || other.dto == dto)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,promoDtoId,articuloId,cantidadDesde,precio,tipoPrecio,dto,lastUpdated,deleted);

@override
String toString() {
  return 'PromoDtoLineaDTO(empresaId: $empresaId, promoDtoId: $promoDtoId, articuloId: $articuloId, cantidadDesde: $cantidadDesde, precio: $precio, tipoPrecio: $tipoPrecio, dto: $dto, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PromoDtoLineaDTOCopyWith<$Res> implements $PromoDtoLineaDTOCopyWith<$Res> {
  factory _$PromoDtoLineaDTOCopyWith(_PromoDtoLineaDTO value, $Res Function(_PromoDtoLineaDTO) _then) = __$PromoDtoLineaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'PRECIO') double precio,@JsonKey(name: 'TIPO_PRECIO') int? tipoPrecio,@JsonKey(name: 'DTO') double dto,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$PromoDtoLineaDTOCopyWithImpl<$Res>
    implements _$PromoDtoLineaDTOCopyWith<$Res> {
  __$PromoDtoLineaDTOCopyWithImpl(this._self, this._then);

  final _PromoDtoLineaDTO _self;
  final $Res Function(_PromoDtoLineaDTO) _then;

/// Create a copy of PromoDtoLineaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? promoDtoId = null,Object? articuloId = null,Object? cantidadDesde = null,Object? precio = null,Object? tipoPrecio = freezed,Object? dto = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_PromoDtoLineaDTO(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,promoDtoId: null == promoDtoId ? _self.promoDtoId : promoDtoId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double,tipoPrecio: freezed == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int?,dto: null == dto ? _self.dto : dto // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
