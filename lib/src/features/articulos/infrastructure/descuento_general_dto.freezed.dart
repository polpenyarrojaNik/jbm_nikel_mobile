// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'descuento_general_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DescuentoGeneralDTO {

@JsonKey(name: 'DESCUENTO_GENERAL_ID') String get descuentoGeneralId;@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'FAMILIA_ID') String get familiaId;@JsonKey(name: 'SUBFAMILIA_ID') String get subfamiliaId;@JsonKey(name: 'CANTIDAD_DESDE') int get cantidadDesde;@JsonKey(name: 'DESCUENTO') double get descuento;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of DescuentoGeneralDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescuentoGeneralDTOCopyWith<DescuentoGeneralDTO> get copyWith => _$DescuentoGeneralDTOCopyWithImpl<DescuentoGeneralDTO>(this as DescuentoGeneralDTO, _$identity);

  /// Serializes this DescuentoGeneralDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DescuentoGeneralDTO&&(identical(other.descuentoGeneralId, descuentoGeneralId) || other.descuentoGeneralId == descuentoGeneralId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.subfamiliaId, subfamiliaId) || other.subfamiliaId == subfamiliaId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.descuento, descuento) || other.descuento == descuento)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,descuentoGeneralId,articuloId,familiaId,subfamiliaId,cantidadDesde,descuento,lastUpdated,deleted);

@override
String toString() {
  return 'DescuentoGeneralDTO(descuentoGeneralId: $descuentoGeneralId, articuloId: $articuloId, familiaId: $familiaId, subfamiliaId: $subfamiliaId, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $DescuentoGeneralDTOCopyWith<$Res>  {
  factory $DescuentoGeneralDTOCopyWith(DescuentoGeneralDTO value, $Res Function(DescuentoGeneralDTO) _then) = _$DescuentoGeneralDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'DESCUENTO_GENERAL_ID') String descuentoGeneralId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'FAMILIA_ID') String familiaId,@JsonKey(name: 'SUBFAMILIA_ID') String subfamiliaId,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'DESCUENTO') double descuento,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$DescuentoGeneralDTOCopyWithImpl<$Res>
    implements $DescuentoGeneralDTOCopyWith<$Res> {
  _$DescuentoGeneralDTOCopyWithImpl(this._self, this._then);

  final DescuentoGeneralDTO _self;
  final $Res Function(DescuentoGeneralDTO) _then;

/// Create a copy of DescuentoGeneralDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? descuentoGeneralId = null,Object? articuloId = null,Object? familiaId = null,Object? subfamiliaId = null,Object? cantidadDesde = null,Object? descuento = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
descuentoGeneralId: null == descuentoGeneralId ? _self.descuentoGeneralId : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [DescuentoGeneralDTO].
extension DescuentoGeneralDTOPatterns on DescuentoGeneralDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DescuentoGeneralDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DescuentoGeneralDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DescuentoGeneralDTO value)  $default,){
final _that = this;
switch (_that) {
case _DescuentoGeneralDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DescuentoGeneralDTO value)?  $default,){
final _that = this;
switch (_that) {
case _DescuentoGeneralDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'DESCUENTO_GENERAL_ID')  String descuentoGeneralId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'FAMILIA_ID')  String familiaId, @JsonKey(name: 'SUBFAMILIA_ID')  String subfamiliaId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'DESCUENTO')  double descuento, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DescuentoGeneralDTO() when $default != null:
return $default(_that.descuentoGeneralId,_that.articuloId,_that.familiaId,_that.subfamiliaId,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'DESCUENTO_GENERAL_ID')  String descuentoGeneralId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'FAMILIA_ID')  String familiaId, @JsonKey(name: 'SUBFAMILIA_ID')  String subfamiliaId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'DESCUENTO')  double descuento, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _DescuentoGeneralDTO():
return $default(_that.descuentoGeneralId,_that.articuloId,_that.familiaId,_that.subfamiliaId,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'DESCUENTO_GENERAL_ID')  String descuentoGeneralId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'FAMILIA_ID')  String familiaId, @JsonKey(name: 'SUBFAMILIA_ID')  String subfamiliaId, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'DESCUENTO')  double descuento, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _DescuentoGeneralDTO() when $default != null:
return $default(_that.descuentoGeneralId,_that.articuloId,_that.familiaId,_that.subfamiliaId,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DescuentoGeneralDTO extends DescuentoGeneralDTO {
  const _DescuentoGeneralDTO({@JsonKey(name: 'DESCUENTO_GENERAL_ID') required this.descuentoGeneralId, @JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'FAMILIA_ID') required this.familiaId, @JsonKey(name: 'SUBFAMILIA_ID') required this.subfamiliaId, @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde, @JsonKey(name: 'DESCUENTO') required this.descuento, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _DescuentoGeneralDTO.fromJson(Map<String, dynamic> json) => _$DescuentoGeneralDTOFromJson(json);

@override@JsonKey(name: 'DESCUENTO_GENERAL_ID') final  String descuentoGeneralId;
@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'FAMILIA_ID') final  String familiaId;
@override@JsonKey(name: 'SUBFAMILIA_ID') final  String subfamiliaId;
@override@JsonKey(name: 'CANTIDAD_DESDE') final  int cantidadDesde;
@override@JsonKey(name: 'DESCUENTO') final  double descuento;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of DescuentoGeneralDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DescuentoGeneralDTOCopyWith<_DescuentoGeneralDTO> get copyWith => __$DescuentoGeneralDTOCopyWithImpl<_DescuentoGeneralDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DescuentoGeneralDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DescuentoGeneralDTO&&(identical(other.descuentoGeneralId, descuentoGeneralId) || other.descuentoGeneralId == descuentoGeneralId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.subfamiliaId, subfamiliaId) || other.subfamiliaId == subfamiliaId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.descuento, descuento) || other.descuento == descuento)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,descuentoGeneralId,articuloId,familiaId,subfamiliaId,cantidadDesde,descuento,lastUpdated,deleted);

@override
String toString() {
  return 'DescuentoGeneralDTO(descuentoGeneralId: $descuentoGeneralId, articuloId: $articuloId, familiaId: $familiaId, subfamiliaId: $subfamiliaId, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$DescuentoGeneralDTOCopyWith<$Res> implements $DescuentoGeneralDTOCopyWith<$Res> {
  factory _$DescuentoGeneralDTOCopyWith(_DescuentoGeneralDTO value, $Res Function(_DescuentoGeneralDTO) _then) = __$DescuentoGeneralDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'DESCUENTO_GENERAL_ID') String descuentoGeneralId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'FAMILIA_ID') String familiaId,@JsonKey(name: 'SUBFAMILIA_ID') String subfamiliaId,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'DESCUENTO') double descuento,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$DescuentoGeneralDTOCopyWithImpl<$Res>
    implements _$DescuentoGeneralDTOCopyWith<$Res> {
  __$DescuentoGeneralDTOCopyWithImpl(this._self, this._then);

  final _DescuentoGeneralDTO _self;
  final $Res Function(_DescuentoGeneralDTO) _then;

/// Create a copy of DescuentoGeneralDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? descuentoGeneralId = null,Object? articuloId = null,Object? familiaId = null,Object? subfamiliaId = null,Object? cantidadDesde = null,Object? descuento = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_DescuentoGeneralDTO(
descuentoGeneralId: null == descuentoGeneralId ? _self.descuentoGeneralId : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
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
