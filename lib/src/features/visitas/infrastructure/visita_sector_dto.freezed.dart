// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_sector_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VisitaSectorDTO {

@JsonKey(name: 'CODIGO') int get id;@JsonKey(name: 'DESCRIPCION_ES') String get descripcionES;@JsonKey(name: 'DESCRIPCION_EN') String? get descripcionEN;@JsonKey(name: 'DESCRIPCION_FR') String? get descripcionFR;@JsonKey(name: 'DESCRIPCION_DE') String? get descripcionDE;@JsonKey(name: 'DESCRIPCION_CA') String? get descripcionCA;@JsonKey(name: 'DESCRIPCION_GB') String? get descripcionGB;@JsonKey(name: 'DESCRIPCION_HU') String? get descripcionHU;@JsonKey(name: 'DESCRIPCION_IT') String? get descripcionIT;@JsonKey(name: 'DESCRIPCION_NL') String? get descripcionNL;@JsonKey(name: 'DESCRIPCION_PL') String? get descripcionPL;// @JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,
// @JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,
// @JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,
// @JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,
// @JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,
@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of VisitaSectorDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitaSectorDTOCopyWith<VisitaSectorDTO> get copyWith => _$VisitaSectorDTOCopyWithImpl<VisitaSectorDTO>(this as VisitaSectorDTO, _$identity);

  /// Serializes this VisitaSectorDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitaSectorDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcionES, descripcionES) || other.descripcionES == descripcionES)&&(identical(other.descripcionEN, descripcionEN) || other.descripcionEN == descripcionEN)&&(identical(other.descripcionFR, descripcionFR) || other.descripcionFR == descripcionFR)&&(identical(other.descripcionDE, descripcionDE) || other.descripcionDE == descripcionDE)&&(identical(other.descripcionCA, descripcionCA) || other.descripcionCA == descripcionCA)&&(identical(other.descripcionGB, descripcionGB) || other.descripcionGB == descripcionGB)&&(identical(other.descripcionHU, descripcionHU) || other.descripcionHU == descripcionHU)&&(identical(other.descripcionIT, descripcionIT) || other.descripcionIT == descripcionIT)&&(identical(other.descripcionNL, descripcionNL) || other.descripcionNL == descripcionNL)&&(identical(other.descripcionPL, descripcionPL) || other.descripcionPL == descripcionPL)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,descripcionES,descripcionEN,descripcionFR,descripcionDE,descripcionCA,descripcionGB,descripcionHU,descripcionIT,descripcionNL,descripcionPL,lastUpdated,deleted);

@override
String toString() {
  return 'VisitaSectorDTO(id: $id, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $VisitaSectorDTOCopyWith<$Res>  {
  factory $VisitaSectorDTOCopyWith(VisitaSectorDTO value, $Res Function(VisitaSectorDTO) _then) = _$VisitaSectorDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CODIGO') int id,@JsonKey(name: 'DESCRIPCION_ES') String descripcionES,@JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,@JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,@JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,@JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,@JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,@JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,@JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,@JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,@JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$VisitaSectorDTOCopyWithImpl<$Res>
    implements $VisitaSectorDTOCopyWith<$Res> {
  _$VisitaSectorDTOCopyWithImpl(this._self, this._then);

  final VisitaSectorDTO _self;
  final $Res Function(VisitaSectorDTO) _then;

/// Create a copy of VisitaSectorDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? descripcionES = null,Object? descripcionEN = freezed,Object? descripcionFR = freezed,Object? descripcionDE = freezed,Object? descripcionCA = freezed,Object? descripcionGB = freezed,Object? descripcionHU = freezed,Object? descripcionIT = freezed,Object? descripcionNL = freezed,Object? descripcionPL = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,descripcionES: null == descripcionES ? _self.descripcionES : descripcionES // ignore: cast_nullable_to_non_nullable
as String,descripcionEN: freezed == descripcionEN ? _self.descripcionEN : descripcionEN // ignore: cast_nullable_to_non_nullable
as String?,descripcionFR: freezed == descripcionFR ? _self.descripcionFR : descripcionFR // ignore: cast_nullable_to_non_nullable
as String?,descripcionDE: freezed == descripcionDE ? _self.descripcionDE : descripcionDE // ignore: cast_nullable_to_non_nullable
as String?,descripcionCA: freezed == descripcionCA ? _self.descripcionCA : descripcionCA // ignore: cast_nullable_to_non_nullable
as String?,descripcionGB: freezed == descripcionGB ? _self.descripcionGB : descripcionGB // ignore: cast_nullable_to_non_nullable
as String?,descripcionHU: freezed == descripcionHU ? _self.descripcionHU : descripcionHU // ignore: cast_nullable_to_non_nullable
as String?,descripcionIT: freezed == descripcionIT ? _self.descripcionIT : descripcionIT // ignore: cast_nullable_to_non_nullable
as String?,descripcionNL: freezed == descripcionNL ? _self.descripcionNL : descripcionNL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPL: freezed == descripcionPL ? _self.descripcionPL : descripcionPL // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VisitaSectorDTO].
extension VisitaSectorDTOPatterns on VisitaSectorDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitaSectorDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitaSectorDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitaSectorDTO value)  $default,){
final _that = this;
switch (_that) {
case _VisitaSectorDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitaSectorDTO value)?  $default,){
final _that = this;
switch (_that) {
case _VisitaSectorDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CODIGO')  int id, @JsonKey(name: 'DESCRIPCION_ES')  String descripcionES, @JsonKey(name: 'DESCRIPCION_EN')  String? descripcionEN, @JsonKey(name: 'DESCRIPCION_FR')  String? descripcionFR, @JsonKey(name: 'DESCRIPCION_DE')  String? descripcionDE, @JsonKey(name: 'DESCRIPCION_CA')  String? descripcionCA, @JsonKey(name: 'DESCRIPCION_GB')  String? descripcionGB, @JsonKey(name: 'DESCRIPCION_HU')  String? descripcionHU, @JsonKey(name: 'DESCRIPCION_IT')  String? descripcionIT, @JsonKey(name: 'DESCRIPCION_NL')  String? descripcionNL, @JsonKey(name: 'DESCRIPCION_PL')  String? descripcionPL, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitaSectorDTO() when $default != null:
return $default(_that.id,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CODIGO')  int id, @JsonKey(name: 'DESCRIPCION_ES')  String descripcionES, @JsonKey(name: 'DESCRIPCION_EN')  String? descripcionEN, @JsonKey(name: 'DESCRIPCION_FR')  String? descripcionFR, @JsonKey(name: 'DESCRIPCION_DE')  String? descripcionDE, @JsonKey(name: 'DESCRIPCION_CA')  String? descripcionCA, @JsonKey(name: 'DESCRIPCION_GB')  String? descripcionGB, @JsonKey(name: 'DESCRIPCION_HU')  String? descripcionHU, @JsonKey(name: 'DESCRIPCION_IT')  String? descripcionIT, @JsonKey(name: 'DESCRIPCION_NL')  String? descripcionNL, @JsonKey(name: 'DESCRIPCION_PL')  String? descripcionPL, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _VisitaSectorDTO():
return $default(_that.id,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CODIGO')  int id, @JsonKey(name: 'DESCRIPCION_ES')  String descripcionES, @JsonKey(name: 'DESCRIPCION_EN')  String? descripcionEN, @JsonKey(name: 'DESCRIPCION_FR')  String? descripcionFR, @JsonKey(name: 'DESCRIPCION_DE')  String? descripcionDE, @JsonKey(name: 'DESCRIPCION_CA')  String? descripcionCA, @JsonKey(name: 'DESCRIPCION_GB')  String? descripcionGB, @JsonKey(name: 'DESCRIPCION_HU')  String? descripcionHU, @JsonKey(name: 'DESCRIPCION_IT')  String? descripcionIT, @JsonKey(name: 'DESCRIPCION_NL')  String? descripcionNL, @JsonKey(name: 'DESCRIPCION_PL')  String? descripcionPL, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _VisitaSectorDTO() when $default != null:
return $default(_that.id,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisitaSectorDTO extends VisitaSectorDTO {
  const _VisitaSectorDTO({@JsonKey(name: 'CODIGO') required this.id, @JsonKey(name: 'DESCRIPCION_ES') required this.descripcionES, @JsonKey(name: 'DESCRIPCION_EN') this.descripcionEN, @JsonKey(name: 'DESCRIPCION_FR') this.descripcionFR, @JsonKey(name: 'DESCRIPCION_DE') this.descripcionDE, @JsonKey(name: 'DESCRIPCION_CA') this.descripcionCA, @JsonKey(name: 'DESCRIPCION_GB') this.descripcionGB, @JsonKey(name: 'DESCRIPCION_HU') this.descripcionHU, @JsonKey(name: 'DESCRIPCION_IT') this.descripcionIT, @JsonKey(name: 'DESCRIPCION_NL') this.descripcionNL, @JsonKey(name: 'DESCRIPCION_PL') this.descripcionPL, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _VisitaSectorDTO.fromJson(Map<String, dynamic> json) => _$VisitaSectorDTOFromJson(json);

@override@JsonKey(name: 'CODIGO') final  int id;
@override@JsonKey(name: 'DESCRIPCION_ES') final  String descripcionES;
@override@JsonKey(name: 'DESCRIPCION_EN') final  String? descripcionEN;
@override@JsonKey(name: 'DESCRIPCION_FR') final  String? descripcionFR;
@override@JsonKey(name: 'DESCRIPCION_DE') final  String? descripcionDE;
@override@JsonKey(name: 'DESCRIPCION_CA') final  String? descripcionCA;
@override@JsonKey(name: 'DESCRIPCION_GB') final  String? descripcionGB;
@override@JsonKey(name: 'DESCRIPCION_HU') final  String? descripcionHU;
@override@JsonKey(name: 'DESCRIPCION_IT') final  String? descripcionIT;
@override@JsonKey(name: 'DESCRIPCION_NL') final  String? descripcionNL;
@override@JsonKey(name: 'DESCRIPCION_PL') final  String? descripcionPL;
// @JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,
// @JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,
// @JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,
// @JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,
// @JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of VisitaSectorDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitaSectorDTOCopyWith<_VisitaSectorDTO> get copyWith => __$VisitaSectorDTOCopyWithImpl<_VisitaSectorDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisitaSectorDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitaSectorDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcionES, descripcionES) || other.descripcionES == descripcionES)&&(identical(other.descripcionEN, descripcionEN) || other.descripcionEN == descripcionEN)&&(identical(other.descripcionFR, descripcionFR) || other.descripcionFR == descripcionFR)&&(identical(other.descripcionDE, descripcionDE) || other.descripcionDE == descripcionDE)&&(identical(other.descripcionCA, descripcionCA) || other.descripcionCA == descripcionCA)&&(identical(other.descripcionGB, descripcionGB) || other.descripcionGB == descripcionGB)&&(identical(other.descripcionHU, descripcionHU) || other.descripcionHU == descripcionHU)&&(identical(other.descripcionIT, descripcionIT) || other.descripcionIT == descripcionIT)&&(identical(other.descripcionNL, descripcionNL) || other.descripcionNL == descripcionNL)&&(identical(other.descripcionPL, descripcionPL) || other.descripcionPL == descripcionPL)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,descripcionES,descripcionEN,descripcionFR,descripcionDE,descripcionCA,descripcionGB,descripcionHU,descripcionIT,descripcionNL,descripcionPL,lastUpdated,deleted);

@override
String toString() {
  return 'VisitaSectorDTO(id: $id, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$VisitaSectorDTOCopyWith<$Res> implements $VisitaSectorDTOCopyWith<$Res> {
  factory _$VisitaSectorDTOCopyWith(_VisitaSectorDTO value, $Res Function(_VisitaSectorDTO) _then) = __$VisitaSectorDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CODIGO') int id,@JsonKey(name: 'DESCRIPCION_ES') String descripcionES,@JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,@JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,@JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,@JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,@JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,@JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,@JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,@JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,@JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$VisitaSectorDTOCopyWithImpl<$Res>
    implements _$VisitaSectorDTOCopyWith<$Res> {
  __$VisitaSectorDTOCopyWithImpl(this._self, this._then);

  final _VisitaSectorDTO _self;
  final $Res Function(_VisitaSectorDTO) _then;

/// Create a copy of VisitaSectorDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? descripcionES = null,Object? descripcionEN = freezed,Object? descripcionFR = freezed,Object? descripcionDE = freezed,Object? descripcionCA = freezed,Object? descripcionGB = freezed,Object? descripcionHU = freezed,Object? descripcionIT = freezed,Object? descripcionNL = freezed,Object? descripcionPL = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_VisitaSectorDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,descripcionES: null == descripcionES ? _self.descripcionES : descripcionES // ignore: cast_nullable_to_non_nullable
as String,descripcionEN: freezed == descripcionEN ? _self.descripcionEN : descripcionEN // ignore: cast_nullable_to_non_nullable
as String?,descripcionFR: freezed == descripcionFR ? _self.descripcionFR : descripcionFR // ignore: cast_nullable_to_non_nullable
as String?,descripcionDE: freezed == descripcionDE ? _self.descripcionDE : descripcionDE // ignore: cast_nullable_to_non_nullable
as String?,descripcionCA: freezed == descripcionCA ? _self.descripcionCA : descripcionCA // ignore: cast_nullable_to_non_nullable
as String?,descripcionGB: freezed == descripcionGB ? _self.descripcionGB : descripcionGB // ignore: cast_nullable_to_non_nullable
as String?,descripcionHU: freezed == descripcionHU ? _self.descripcionHU : descripcionHU // ignore: cast_nullable_to_non_nullable
as String?,descripcionIT: freezed == descripcionIT ? _self.descripcionIT : descripcionIT // ignore: cast_nullable_to_non_nullable
as String?,descripcionNL: freezed == descripcionNL ? _self.descripcionNL : descripcionNL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPL: freezed == descripcionPL ? _self.descripcionPL : descripcionPL // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
