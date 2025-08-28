// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subfamilia_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubfamiliaDTO {

@JsonKey(name: 'SUBFAMILIA_ID') String get id;@JsonKey(name: 'FAMILIA_ID') String get familiaId;@JsonKey(name: 'DESCRIPCION_ES') String get descripcionES;@JsonKey(name: 'DESCRIPCION_EN') String? get descripcionEN;@JsonKey(name: 'DESCRIPCION_FR') String? get descripcionFR;@JsonKey(name: 'DESCRIPCION_DE') String? get descripcionDE;@JsonKey(name: 'DESCRIPCION_CA') String? get descripcionCA;@JsonKey(name: 'DESCRIPCION_GB') String? get descripcionGB;@JsonKey(name: 'DESCRIPCION_HU') String? get descripcionHU;@JsonKey(name: 'DESCRIPCION_IT') String? get descripcionIT;@JsonKey(name: 'DESCRIPCION_NL') String? get descripcionNL;@JsonKey(name: 'DESCRIPCION_PL') String? get descripcionPL;@JsonKey(name: 'DESCRIPCION_PT') String? get descripcionPT;@JsonKey(name: 'DESCRIPCION_RO') String? get descripcionRO;@JsonKey(name: 'DESCRIPCION_RU') String? get descripcionRU;@JsonKey(name: 'DESCRIPCION_CN') String? get descripcionCN;@JsonKey(name: 'DESCRIPCION_EL') String? get descripcionEL;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of SubfamiliaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubfamiliaDTOCopyWith<SubfamiliaDTO> get copyWith => _$SubfamiliaDTOCopyWithImpl<SubfamiliaDTO>(this as SubfamiliaDTO, _$identity);

  /// Serializes this SubfamiliaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubfamiliaDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.descripcionES, descripcionES) || other.descripcionES == descripcionES)&&(identical(other.descripcionEN, descripcionEN) || other.descripcionEN == descripcionEN)&&(identical(other.descripcionFR, descripcionFR) || other.descripcionFR == descripcionFR)&&(identical(other.descripcionDE, descripcionDE) || other.descripcionDE == descripcionDE)&&(identical(other.descripcionCA, descripcionCA) || other.descripcionCA == descripcionCA)&&(identical(other.descripcionGB, descripcionGB) || other.descripcionGB == descripcionGB)&&(identical(other.descripcionHU, descripcionHU) || other.descripcionHU == descripcionHU)&&(identical(other.descripcionIT, descripcionIT) || other.descripcionIT == descripcionIT)&&(identical(other.descripcionNL, descripcionNL) || other.descripcionNL == descripcionNL)&&(identical(other.descripcionPL, descripcionPL) || other.descripcionPL == descripcionPL)&&(identical(other.descripcionPT, descripcionPT) || other.descripcionPT == descripcionPT)&&(identical(other.descripcionRO, descripcionRO) || other.descripcionRO == descripcionRO)&&(identical(other.descripcionRU, descripcionRU) || other.descripcionRU == descripcionRU)&&(identical(other.descripcionCN, descripcionCN) || other.descripcionCN == descripcionCN)&&(identical(other.descripcionEL, descripcionEL) || other.descripcionEL == descripcionEL)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,familiaId,descripcionES,descripcionEN,descripcionFR,descripcionDE,descripcionCA,descripcionGB,descripcionHU,descripcionIT,descripcionNL,descripcionPL,descripcionPT,descripcionRO,descripcionRU,descripcionCN,descripcionEL,lastUpdated,deleted]);

@override
String toString() {
  return 'SubfamiliaDTO(id: $id, familiaId: $familiaId, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, descripcionPT: $descripcionPT, descripcionRO: $descripcionRO, descripcionRU: $descripcionRU, descripcionCN: $descripcionCN, descripcionEL: $descripcionEL, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $SubfamiliaDTOCopyWith<$Res>  {
  factory $SubfamiliaDTOCopyWith(SubfamiliaDTO value, $Res Function(SubfamiliaDTO) _then) = _$SubfamiliaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'SUBFAMILIA_ID') String id,@JsonKey(name: 'FAMILIA_ID') String familiaId,@JsonKey(name: 'DESCRIPCION_ES') String descripcionES,@JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,@JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,@JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,@JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,@JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,@JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,@JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,@JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,@JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,@JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,@JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,@JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,@JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,@JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$SubfamiliaDTOCopyWithImpl<$Res>
    implements $SubfamiliaDTOCopyWith<$Res> {
  _$SubfamiliaDTOCopyWithImpl(this._self, this._then);

  final SubfamiliaDTO _self;
  final $Res Function(SubfamiliaDTO) _then;

/// Create a copy of SubfamiliaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? familiaId = null,Object? descripcionES = null,Object? descripcionEN = freezed,Object? descripcionFR = freezed,Object? descripcionDE = freezed,Object? descripcionCA = freezed,Object? descripcionGB = freezed,Object? descripcionHU = freezed,Object? descripcionIT = freezed,Object? descripcionNL = freezed,Object? descripcionPL = freezed,Object? descripcionPT = freezed,Object? descripcionRO = freezed,Object? descripcionRU = freezed,Object? descripcionCN = freezed,Object? descripcionEL = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,familiaId: null == familiaId ? _self.familiaId : familiaId // ignore: cast_nullable_to_non_nullable
as String,descripcionES: null == descripcionES ? _self.descripcionES : descripcionES // ignore: cast_nullable_to_non_nullable
as String,descripcionEN: freezed == descripcionEN ? _self.descripcionEN : descripcionEN // ignore: cast_nullable_to_non_nullable
as String?,descripcionFR: freezed == descripcionFR ? _self.descripcionFR : descripcionFR // ignore: cast_nullable_to_non_nullable
as String?,descripcionDE: freezed == descripcionDE ? _self.descripcionDE : descripcionDE // ignore: cast_nullable_to_non_nullable
as String?,descripcionCA: freezed == descripcionCA ? _self.descripcionCA : descripcionCA // ignore: cast_nullable_to_non_nullable
as String?,descripcionGB: freezed == descripcionGB ? _self.descripcionGB : descripcionGB // ignore: cast_nullable_to_non_nullable
as String?,descripcionHU: freezed == descripcionHU ? _self.descripcionHU : descripcionHU // ignore: cast_nullable_to_non_nullable
as String?,descripcionIT: freezed == descripcionIT ? _self.descripcionIT : descripcionIT // ignore: cast_nullable_to_non_nullable
as String?,descripcionNL: freezed == descripcionNL ? _self.descripcionNL : descripcionNL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPL: freezed == descripcionPL ? _self.descripcionPL : descripcionPL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPT: freezed == descripcionPT ? _self.descripcionPT : descripcionPT // ignore: cast_nullable_to_non_nullable
as String?,descripcionRO: freezed == descripcionRO ? _self.descripcionRO : descripcionRO // ignore: cast_nullable_to_non_nullable
as String?,descripcionRU: freezed == descripcionRU ? _self.descripcionRU : descripcionRU // ignore: cast_nullable_to_non_nullable
as String?,descripcionCN: freezed == descripcionCN ? _self.descripcionCN : descripcionCN // ignore: cast_nullable_to_non_nullable
as String?,descripcionEL: freezed == descripcionEL ? _self.descripcionEL : descripcionEL // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubfamiliaDTO].
extension SubfamiliaDTOPatterns on SubfamiliaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubfamiliaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubfamiliaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubfamiliaDTO value)  $default,){
final _that = this;
switch (_that) {
case _SubfamiliaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubfamiliaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SubfamiliaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'SUBFAMILIA_ID')  String id, @JsonKey(name: 'FAMILIA_ID')  String familiaId, @JsonKey(name: 'DESCRIPCION_ES')  String descripcionES, @JsonKey(name: 'DESCRIPCION_EN')  String? descripcionEN, @JsonKey(name: 'DESCRIPCION_FR')  String? descripcionFR, @JsonKey(name: 'DESCRIPCION_DE')  String? descripcionDE, @JsonKey(name: 'DESCRIPCION_CA')  String? descripcionCA, @JsonKey(name: 'DESCRIPCION_GB')  String? descripcionGB, @JsonKey(name: 'DESCRIPCION_HU')  String? descripcionHU, @JsonKey(name: 'DESCRIPCION_IT')  String? descripcionIT, @JsonKey(name: 'DESCRIPCION_NL')  String? descripcionNL, @JsonKey(name: 'DESCRIPCION_PL')  String? descripcionPL, @JsonKey(name: 'DESCRIPCION_PT')  String? descripcionPT, @JsonKey(name: 'DESCRIPCION_RO')  String? descripcionRO, @JsonKey(name: 'DESCRIPCION_RU')  String? descripcionRU, @JsonKey(name: 'DESCRIPCION_CN')  String? descripcionCN, @JsonKey(name: 'DESCRIPCION_EL')  String? descripcionEL, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubfamiliaDTO() when $default != null:
return $default(_that.id,_that.familiaId,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.descripcionPT,_that.descripcionRO,_that.descripcionRU,_that.descripcionCN,_that.descripcionEL,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'SUBFAMILIA_ID')  String id, @JsonKey(name: 'FAMILIA_ID')  String familiaId, @JsonKey(name: 'DESCRIPCION_ES')  String descripcionES, @JsonKey(name: 'DESCRIPCION_EN')  String? descripcionEN, @JsonKey(name: 'DESCRIPCION_FR')  String? descripcionFR, @JsonKey(name: 'DESCRIPCION_DE')  String? descripcionDE, @JsonKey(name: 'DESCRIPCION_CA')  String? descripcionCA, @JsonKey(name: 'DESCRIPCION_GB')  String? descripcionGB, @JsonKey(name: 'DESCRIPCION_HU')  String? descripcionHU, @JsonKey(name: 'DESCRIPCION_IT')  String? descripcionIT, @JsonKey(name: 'DESCRIPCION_NL')  String? descripcionNL, @JsonKey(name: 'DESCRIPCION_PL')  String? descripcionPL, @JsonKey(name: 'DESCRIPCION_PT')  String? descripcionPT, @JsonKey(name: 'DESCRIPCION_RO')  String? descripcionRO, @JsonKey(name: 'DESCRIPCION_RU')  String? descripcionRU, @JsonKey(name: 'DESCRIPCION_CN')  String? descripcionCN, @JsonKey(name: 'DESCRIPCION_EL')  String? descripcionEL, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _SubfamiliaDTO():
return $default(_that.id,_that.familiaId,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.descripcionPT,_that.descripcionRO,_that.descripcionRU,_that.descripcionCN,_that.descripcionEL,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'SUBFAMILIA_ID')  String id, @JsonKey(name: 'FAMILIA_ID')  String familiaId, @JsonKey(name: 'DESCRIPCION_ES')  String descripcionES, @JsonKey(name: 'DESCRIPCION_EN')  String? descripcionEN, @JsonKey(name: 'DESCRIPCION_FR')  String? descripcionFR, @JsonKey(name: 'DESCRIPCION_DE')  String? descripcionDE, @JsonKey(name: 'DESCRIPCION_CA')  String? descripcionCA, @JsonKey(name: 'DESCRIPCION_GB')  String? descripcionGB, @JsonKey(name: 'DESCRIPCION_HU')  String? descripcionHU, @JsonKey(name: 'DESCRIPCION_IT')  String? descripcionIT, @JsonKey(name: 'DESCRIPCION_NL')  String? descripcionNL, @JsonKey(name: 'DESCRIPCION_PL')  String? descripcionPL, @JsonKey(name: 'DESCRIPCION_PT')  String? descripcionPT, @JsonKey(name: 'DESCRIPCION_RO')  String? descripcionRO, @JsonKey(name: 'DESCRIPCION_RU')  String? descripcionRU, @JsonKey(name: 'DESCRIPCION_CN')  String? descripcionCN, @JsonKey(name: 'DESCRIPCION_EL')  String? descripcionEL, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _SubfamiliaDTO() when $default != null:
return $default(_that.id,_that.familiaId,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.descripcionPT,_that.descripcionRO,_that.descripcionRU,_that.descripcionCN,_that.descripcionEL,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubfamiliaDTO extends SubfamiliaDTO {
  const _SubfamiliaDTO({@JsonKey(name: 'SUBFAMILIA_ID') required this.id, @JsonKey(name: 'FAMILIA_ID') required this.familiaId, @JsonKey(name: 'DESCRIPCION_ES') required this.descripcionES, @JsonKey(name: 'DESCRIPCION_EN') this.descripcionEN, @JsonKey(name: 'DESCRIPCION_FR') this.descripcionFR, @JsonKey(name: 'DESCRIPCION_DE') this.descripcionDE, @JsonKey(name: 'DESCRIPCION_CA') this.descripcionCA, @JsonKey(name: 'DESCRIPCION_GB') this.descripcionGB, @JsonKey(name: 'DESCRIPCION_HU') this.descripcionHU, @JsonKey(name: 'DESCRIPCION_IT') this.descripcionIT, @JsonKey(name: 'DESCRIPCION_NL') this.descripcionNL, @JsonKey(name: 'DESCRIPCION_PL') this.descripcionPL, @JsonKey(name: 'DESCRIPCION_PT') this.descripcionPT, @JsonKey(name: 'DESCRIPCION_RO') this.descripcionRO, @JsonKey(name: 'DESCRIPCION_RU') this.descripcionRU, @JsonKey(name: 'DESCRIPCION_CN') this.descripcionCN, @JsonKey(name: 'DESCRIPCION_EL') this.descripcionEL, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _SubfamiliaDTO.fromJson(Map<String, dynamic> json) => _$SubfamiliaDTOFromJson(json);

@override@JsonKey(name: 'SUBFAMILIA_ID') final  String id;
@override@JsonKey(name: 'FAMILIA_ID') final  String familiaId;
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
@override@JsonKey(name: 'DESCRIPCION_PT') final  String? descripcionPT;
@override@JsonKey(name: 'DESCRIPCION_RO') final  String? descripcionRO;
@override@JsonKey(name: 'DESCRIPCION_RU') final  String? descripcionRU;
@override@JsonKey(name: 'DESCRIPCION_CN') final  String? descripcionCN;
@override@JsonKey(name: 'DESCRIPCION_EL') final  String? descripcionEL;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of SubfamiliaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubfamiliaDTOCopyWith<_SubfamiliaDTO> get copyWith => __$SubfamiliaDTOCopyWithImpl<_SubfamiliaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubfamiliaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubfamiliaDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.descripcionES, descripcionES) || other.descripcionES == descripcionES)&&(identical(other.descripcionEN, descripcionEN) || other.descripcionEN == descripcionEN)&&(identical(other.descripcionFR, descripcionFR) || other.descripcionFR == descripcionFR)&&(identical(other.descripcionDE, descripcionDE) || other.descripcionDE == descripcionDE)&&(identical(other.descripcionCA, descripcionCA) || other.descripcionCA == descripcionCA)&&(identical(other.descripcionGB, descripcionGB) || other.descripcionGB == descripcionGB)&&(identical(other.descripcionHU, descripcionHU) || other.descripcionHU == descripcionHU)&&(identical(other.descripcionIT, descripcionIT) || other.descripcionIT == descripcionIT)&&(identical(other.descripcionNL, descripcionNL) || other.descripcionNL == descripcionNL)&&(identical(other.descripcionPL, descripcionPL) || other.descripcionPL == descripcionPL)&&(identical(other.descripcionPT, descripcionPT) || other.descripcionPT == descripcionPT)&&(identical(other.descripcionRO, descripcionRO) || other.descripcionRO == descripcionRO)&&(identical(other.descripcionRU, descripcionRU) || other.descripcionRU == descripcionRU)&&(identical(other.descripcionCN, descripcionCN) || other.descripcionCN == descripcionCN)&&(identical(other.descripcionEL, descripcionEL) || other.descripcionEL == descripcionEL)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,familiaId,descripcionES,descripcionEN,descripcionFR,descripcionDE,descripcionCA,descripcionGB,descripcionHU,descripcionIT,descripcionNL,descripcionPL,descripcionPT,descripcionRO,descripcionRU,descripcionCN,descripcionEL,lastUpdated,deleted]);

@override
String toString() {
  return 'SubfamiliaDTO(id: $id, familiaId: $familiaId, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, descripcionPT: $descripcionPT, descripcionRO: $descripcionRO, descripcionRU: $descripcionRU, descripcionCN: $descripcionCN, descripcionEL: $descripcionEL, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$SubfamiliaDTOCopyWith<$Res> implements $SubfamiliaDTOCopyWith<$Res> {
  factory _$SubfamiliaDTOCopyWith(_SubfamiliaDTO value, $Res Function(_SubfamiliaDTO) _then) = __$SubfamiliaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'SUBFAMILIA_ID') String id,@JsonKey(name: 'FAMILIA_ID') String familiaId,@JsonKey(name: 'DESCRIPCION_ES') String descripcionES,@JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,@JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,@JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,@JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,@JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,@JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,@JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,@JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,@JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,@JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,@JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,@JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,@JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,@JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$SubfamiliaDTOCopyWithImpl<$Res>
    implements _$SubfamiliaDTOCopyWith<$Res> {
  __$SubfamiliaDTOCopyWithImpl(this._self, this._then);

  final _SubfamiliaDTO _self;
  final $Res Function(_SubfamiliaDTO) _then;

/// Create a copy of SubfamiliaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? familiaId = null,Object? descripcionES = null,Object? descripcionEN = freezed,Object? descripcionFR = freezed,Object? descripcionDE = freezed,Object? descripcionCA = freezed,Object? descripcionGB = freezed,Object? descripcionHU = freezed,Object? descripcionIT = freezed,Object? descripcionNL = freezed,Object? descripcionPL = freezed,Object? descripcionPT = freezed,Object? descripcionRO = freezed,Object? descripcionRU = freezed,Object? descripcionCN = freezed,Object? descripcionEL = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_SubfamiliaDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,familiaId: null == familiaId ? _self.familiaId : familiaId // ignore: cast_nullable_to_non_nullable
as String,descripcionES: null == descripcionES ? _self.descripcionES : descripcionES // ignore: cast_nullable_to_non_nullable
as String,descripcionEN: freezed == descripcionEN ? _self.descripcionEN : descripcionEN // ignore: cast_nullable_to_non_nullable
as String?,descripcionFR: freezed == descripcionFR ? _self.descripcionFR : descripcionFR // ignore: cast_nullable_to_non_nullable
as String?,descripcionDE: freezed == descripcionDE ? _self.descripcionDE : descripcionDE // ignore: cast_nullable_to_non_nullable
as String?,descripcionCA: freezed == descripcionCA ? _self.descripcionCA : descripcionCA // ignore: cast_nullable_to_non_nullable
as String?,descripcionGB: freezed == descripcionGB ? _self.descripcionGB : descripcionGB // ignore: cast_nullable_to_non_nullable
as String?,descripcionHU: freezed == descripcionHU ? _self.descripcionHU : descripcionHU // ignore: cast_nullable_to_non_nullable
as String?,descripcionIT: freezed == descripcionIT ? _self.descripcionIT : descripcionIT // ignore: cast_nullable_to_non_nullable
as String?,descripcionNL: freezed == descripcionNL ? _self.descripcionNL : descripcionNL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPL: freezed == descripcionPL ? _self.descripcionPL : descripcionPL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPT: freezed == descripcionPT ? _self.descripcionPT : descripcionPT // ignore: cast_nullable_to_non_nullable
as String?,descripcionRO: freezed == descripcionRO ? _self.descripcionRO : descripcionRO // ignore: cast_nullable_to_non_nullable
as String?,descripcionRU: freezed == descripcionRU ? _self.descripcionRU : descripcionRU // ignore: cast_nullable_to_non_nullable
as String?,descripcionCN: freezed == descripcionCN ? _self.descripcionCN : descripcionCN // ignore: cast_nullable_to_non_nullable
as String?,descripcionEL: freezed == descripcionEL ? _self.descripcionEL : descripcionEL // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
