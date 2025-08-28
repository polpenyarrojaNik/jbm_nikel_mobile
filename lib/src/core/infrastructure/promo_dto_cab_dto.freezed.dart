// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_dto_cab_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromoDtoCabDTO {

@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'PROMO_DTO_ID') String get promoDtoId;@JsonKey(name: 'NOMBRE') String get nombre;@JsonKey(name: 'FECHA_DESDE') DateTime get fechaDesde;@JsonKey(name: 'FECHA_HASTA') DateTime? get fechaHasta;@JsonKey(name: 'DIVISA_ID') String get divisaId;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of PromoDtoCabDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoDtoCabDTOCopyWith<PromoDtoCabDTO> get copyWith => _$PromoDtoCabDTOCopyWithImpl<PromoDtoCabDTO>(this as PromoDtoCabDTO, _$identity);

  /// Serializes this PromoDtoCabDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoDtoCabDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.promoDtoId, promoDtoId) || other.promoDtoId == promoDtoId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.fechaDesde, fechaDesde) || other.fechaDesde == fechaDesde)&&(identical(other.fechaHasta, fechaHasta) || other.fechaHasta == fechaHasta)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,promoDtoId,nombre,fechaDesde,fechaHasta,divisaId,lastUpdated,deleted);

@override
String toString() {
  return 'PromoDtoCabDTO(empresaId: $empresaId, promoDtoId: $promoDtoId, nombre: $nombre, fechaDesde: $fechaDesde, fechaHasta: $fechaHasta, divisaId: $divisaId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PromoDtoCabDTOCopyWith<$Res>  {
  factory $PromoDtoCabDTOCopyWith(PromoDtoCabDTO value, $Res Function(PromoDtoCabDTO) _then) = _$PromoDtoCabDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,@JsonKey(name: 'NOMBRE') String nombre,@JsonKey(name: 'FECHA_DESDE') DateTime fechaDesde,@JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$PromoDtoCabDTOCopyWithImpl<$Res>
    implements $PromoDtoCabDTOCopyWith<$Res> {
  _$PromoDtoCabDTOCopyWithImpl(this._self, this._then);

  final PromoDtoCabDTO _self;
  final $Res Function(PromoDtoCabDTO) _then;

/// Create a copy of PromoDtoCabDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? promoDtoId = null,Object? nombre = null,Object? fechaDesde = null,Object? fechaHasta = freezed,Object? divisaId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,promoDtoId: null == promoDtoId ? _self.promoDtoId : promoDtoId // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,fechaDesde: null == fechaDesde ? _self.fechaDesde : fechaDesde // ignore: cast_nullable_to_non_nullable
as DateTime,fechaHasta: freezed == fechaHasta ? _self.fechaHasta : fechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoDtoCabDTO].
extension PromoDtoCabDTOPatterns on PromoDtoCabDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoDtoCabDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoDtoCabDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoDtoCabDTO value)  $default,){
final _that = this;
switch (_that) {
case _PromoDtoCabDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoDtoCabDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PromoDtoCabDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PROMO_DTO_ID')  String promoDtoId, @JsonKey(name: 'NOMBRE')  String nombre, @JsonKey(name: 'FECHA_DESDE')  DateTime fechaDesde, @JsonKey(name: 'FECHA_HASTA')  DateTime? fechaHasta, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoDtoCabDTO() when $default != null:
return $default(_that.empresaId,_that.promoDtoId,_that.nombre,_that.fechaDesde,_that.fechaHasta,_that.divisaId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PROMO_DTO_ID')  String promoDtoId, @JsonKey(name: 'NOMBRE')  String nombre, @JsonKey(name: 'FECHA_DESDE')  DateTime fechaDesde, @JsonKey(name: 'FECHA_HASTA')  DateTime? fechaHasta, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _PromoDtoCabDTO():
return $default(_that.empresaId,_that.promoDtoId,_that.nombre,_that.fechaDesde,_that.fechaHasta,_that.divisaId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PROMO_DTO_ID')  String promoDtoId, @JsonKey(name: 'NOMBRE')  String nombre, @JsonKey(name: 'FECHA_DESDE')  DateTime fechaDesde, @JsonKey(name: 'FECHA_HASTA')  DateTime? fechaHasta, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _PromoDtoCabDTO() when $default != null:
return $default(_that.empresaId,_that.promoDtoId,_that.nombre,_that.fechaDesde,_that.fechaHasta,_that.divisaId,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromoDtoCabDTO extends PromoDtoCabDTO {
  const _PromoDtoCabDTO({@JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'PROMO_DTO_ID') required this.promoDtoId, @JsonKey(name: 'NOMBRE') required this.nombre, @JsonKey(name: 'FECHA_DESDE') required this.fechaDesde, @JsonKey(name: 'FECHA_HASTA') this.fechaHasta, @JsonKey(name: 'DIVISA_ID') required this.divisaId, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _PromoDtoCabDTO.fromJson(Map<String, dynamic> json) => _$PromoDtoCabDTOFromJson(json);

@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'PROMO_DTO_ID') final  String promoDtoId;
@override@JsonKey(name: 'NOMBRE') final  String nombre;
@override@JsonKey(name: 'FECHA_DESDE') final  DateTime fechaDesde;
@override@JsonKey(name: 'FECHA_HASTA') final  DateTime? fechaHasta;
@override@JsonKey(name: 'DIVISA_ID') final  String divisaId;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of PromoDtoCabDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoDtoCabDTOCopyWith<_PromoDtoCabDTO> get copyWith => __$PromoDtoCabDTOCopyWithImpl<_PromoDtoCabDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoDtoCabDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoDtoCabDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.promoDtoId, promoDtoId) || other.promoDtoId == promoDtoId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.fechaDesde, fechaDesde) || other.fechaDesde == fechaDesde)&&(identical(other.fechaHasta, fechaHasta) || other.fechaHasta == fechaHasta)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,promoDtoId,nombre,fechaDesde,fechaHasta,divisaId,lastUpdated,deleted);

@override
String toString() {
  return 'PromoDtoCabDTO(empresaId: $empresaId, promoDtoId: $promoDtoId, nombre: $nombre, fechaDesde: $fechaDesde, fechaHasta: $fechaHasta, divisaId: $divisaId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PromoDtoCabDTOCopyWith<$Res> implements $PromoDtoCabDTOCopyWith<$Res> {
  factory _$PromoDtoCabDTOCopyWith(_PromoDtoCabDTO value, $Res Function(_PromoDtoCabDTO) _then) = __$PromoDtoCabDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,@JsonKey(name: 'NOMBRE') String nombre,@JsonKey(name: 'FECHA_DESDE') DateTime fechaDesde,@JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$PromoDtoCabDTOCopyWithImpl<$Res>
    implements _$PromoDtoCabDTOCopyWith<$Res> {
  __$PromoDtoCabDTOCopyWithImpl(this._self, this._then);

  final _PromoDtoCabDTO _self;
  final $Res Function(_PromoDtoCabDTO) _then;

/// Create a copy of PromoDtoCabDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? promoDtoId = null,Object? nombre = null,Object? fechaDesde = null,Object? fechaHasta = freezed,Object? divisaId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_PromoDtoCabDTO(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,promoDtoId: null == promoDtoId ? _self.promoDtoId : promoDtoId // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,fechaDesde: null == fechaDesde ? _self.fechaDesde : fechaDesde // ignore: cast_nullable_to_non_nullable
as DateTime,fechaHasta: freezed == fechaHasta ? _self.fechaHasta : fechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
