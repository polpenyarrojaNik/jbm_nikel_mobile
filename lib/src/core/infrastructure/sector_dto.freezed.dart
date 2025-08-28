// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SectorDTO _$SectorDTOFromJson(
  Map<String, dynamic> json
) {
    return _PaisDTO.fromJson(
      json
    );
}

/// @nodoc
mixin _$SectorDTO {

@JsonKey(name: 'sector_id') String get id;@JsonKey(name: 'alta_sn') String get altaSN;@JsonKey(name: 'descripcion_es') String get descripcionES;@JsonKey(name: 'descripcion_en') String? get descripcionEN;@JsonKey(name: 'descripcion_fr') String? get descripcionFR;@JsonKey(name: 'descripcion_de') String? get descripcionDE;@JsonKey(name: 'descripcion_ca') String? get descripcionCA;@JsonKey(name: 'descripcion_gb') String? get descripcionGB;@JsonKey(name: 'descripcion_hu') String? get descripcionHU;@JsonKey(name: 'descripcion_it') String? get descripcionIT;@JsonKey(name: 'descripcion_nl') String? get descripcionNL;@JsonKey(name: 'descripcion_pl') String? get descripcionPL;@JsonKey(name: 'last_updated') DateTime get lastUpdated;@JsonKey(name: 'deleted') String get deleted;
/// Create a copy of SectorDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectorDTOCopyWith<SectorDTO> get copyWith => _$SectorDTOCopyWithImpl<SectorDTO>(this as SectorDTO, _$identity);

  /// Serializes this SectorDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectorDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.altaSN, altaSN) || other.altaSN == altaSN)&&(identical(other.descripcionES, descripcionES) || other.descripcionES == descripcionES)&&(identical(other.descripcionEN, descripcionEN) || other.descripcionEN == descripcionEN)&&(identical(other.descripcionFR, descripcionFR) || other.descripcionFR == descripcionFR)&&(identical(other.descripcionDE, descripcionDE) || other.descripcionDE == descripcionDE)&&(identical(other.descripcionCA, descripcionCA) || other.descripcionCA == descripcionCA)&&(identical(other.descripcionGB, descripcionGB) || other.descripcionGB == descripcionGB)&&(identical(other.descripcionHU, descripcionHU) || other.descripcionHU == descripcionHU)&&(identical(other.descripcionIT, descripcionIT) || other.descripcionIT == descripcionIT)&&(identical(other.descripcionNL, descripcionNL) || other.descripcionNL == descripcionNL)&&(identical(other.descripcionPL, descripcionPL) || other.descripcionPL == descripcionPL)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,altaSN,descripcionES,descripcionEN,descripcionFR,descripcionDE,descripcionCA,descripcionGB,descripcionHU,descripcionIT,descripcionNL,descripcionPL,lastUpdated,deleted);

@override
String toString() {
  return 'SectorDTO(id: $id, altaSN: $altaSN, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $SectorDTOCopyWith<$Res>  {
  factory $SectorDTOCopyWith(SectorDTO value, $Res Function(SectorDTO) _then) = _$SectorDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sector_id') String id,@JsonKey(name: 'alta_sn') String altaSN,@JsonKey(name: 'descripcion_es') String descripcionES,@JsonKey(name: 'descripcion_en') String? descripcionEN,@JsonKey(name: 'descripcion_fr') String? descripcionFR,@JsonKey(name: 'descripcion_de') String? descripcionDE,@JsonKey(name: 'descripcion_ca') String? descripcionCA,@JsonKey(name: 'descripcion_gb') String? descripcionGB,@JsonKey(name: 'descripcion_hu') String? descripcionHU,@JsonKey(name: 'descripcion_it') String? descripcionIT,@JsonKey(name: 'descripcion_nl') String? descripcionNL,@JsonKey(name: 'descripcion_pl') String? descripcionPL,@JsonKey(name: 'last_updated') DateTime lastUpdated,@JsonKey(name: 'deleted') String deleted
});




}
/// @nodoc
class _$SectorDTOCopyWithImpl<$Res>
    implements $SectorDTOCopyWith<$Res> {
  _$SectorDTOCopyWithImpl(this._self, this._then);

  final SectorDTO _self;
  final $Res Function(SectorDTO) _then;

/// Create a copy of SectorDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? altaSN = null,Object? descripcionES = null,Object? descripcionEN = freezed,Object? descripcionFR = freezed,Object? descripcionDE = freezed,Object? descripcionCA = freezed,Object? descripcionGB = freezed,Object? descripcionHU = freezed,Object? descripcionIT = freezed,Object? descripcionNL = freezed,Object? descripcionPL = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,altaSN: null == altaSN ? _self.altaSN : altaSN // ignore: cast_nullable_to_non_nullable
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
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SectorDTO].
extension SectorDTOPatterns on SectorDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaisDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaisDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaisDTO value)  $default,){
final _that = this;
switch (_that) {
case _PaisDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaisDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PaisDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sector_id')  String id, @JsonKey(name: 'alta_sn')  String altaSN, @JsonKey(name: 'descripcion_es')  String descripcionES, @JsonKey(name: 'descripcion_en')  String? descripcionEN, @JsonKey(name: 'descripcion_fr')  String? descripcionFR, @JsonKey(name: 'descripcion_de')  String? descripcionDE, @JsonKey(name: 'descripcion_ca')  String? descripcionCA, @JsonKey(name: 'descripcion_gb')  String? descripcionGB, @JsonKey(name: 'descripcion_hu')  String? descripcionHU, @JsonKey(name: 'descripcion_it')  String? descripcionIT, @JsonKey(name: 'descripcion_nl')  String? descripcionNL, @JsonKey(name: 'descripcion_pl')  String? descripcionPL, @JsonKey(name: 'last_updated')  DateTime lastUpdated, @JsonKey(name: 'deleted')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaisDTO() when $default != null:
return $default(_that.id,_that.altaSN,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sector_id')  String id, @JsonKey(name: 'alta_sn')  String altaSN, @JsonKey(name: 'descripcion_es')  String descripcionES, @JsonKey(name: 'descripcion_en')  String? descripcionEN, @JsonKey(name: 'descripcion_fr')  String? descripcionFR, @JsonKey(name: 'descripcion_de')  String? descripcionDE, @JsonKey(name: 'descripcion_ca')  String? descripcionCA, @JsonKey(name: 'descripcion_gb')  String? descripcionGB, @JsonKey(name: 'descripcion_hu')  String? descripcionHU, @JsonKey(name: 'descripcion_it')  String? descripcionIT, @JsonKey(name: 'descripcion_nl')  String? descripcionNL, @JsonKey(name: 'descripcion_pl')  String? descripcionPL, @JsonKey(name: 'last_updated')  DateTime lastUpdated, @JsonKey(name: 'deleted')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _PaisDTO():
return $default(_that.id,_that.altaSN,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sector_id')  String id, @JsonKey(name: 'alta_sn')  String altaSN, @JsonKey(name: 'descripcion_es')  String descripcionES, @JsonKey(name: 'descripcion_en')  String? descripcionEN, @JsonKey(name: 'descripcion_fr')  String? descripcionFR, @JsonKey(name: 'descripcion_de')  String? descripcionDE, @JsonKey(name: 'descripcion_ca')  String? descripcionCA, @JsonKey(name: 'descripcion_gb')  String? descripcionGB, @JsonKey(name: 'descripcion_hu')  String? descripcionHU, @JsonKey(name: 'descripcion_it')  String? descripcionIT, @JsonKey(name: 'descripcion_nl')  String? descripcionNL, @JsonKey(name: 'descripcion_pl')  String? descripcionPL, @JsonKey(name: 'last_updated')  DateTime lastUpdated, @JsonKey(name: 'deleted')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _PaisDTO() when $default != null:
return $default(_that.id,_that.altaSN,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaisDTO extends SectorDTO {
  const _PaisDTO({@JsonKey(name: 'sector_id') required this.id, @JsonKey(name: 'alta_sn') required this.altaSN, @JsonKey(name: 'descripcion_es') required this.descripcionES, @JsonKey(name: 'descripcion_en') this.descripcionEN, @JsonKey(name: 'descripcion_fr') this.descripcionFR, @JsonKey(name: 'descripcion_de') this.descripcionDE, @JsonKey(name: 'descripcion_ca') this.descripcionCA, @JsonKey(name: 'descripcion_gb') this.descripcionGB, @JsonKey(name: 'descripcion_hu') this.descripcionHU, @JsonKey(name: 'descripcion_it') this.descripcionIT, @JsonKey(name: 'descripcion_nl') this.descripcionNL, @JsonKey(name: 'descripcion_pl') this.descripcionPL, @JsonKey(name: 'last_updated') required this.lastUpdated, @JsonKey(name: 'deleted') this.deleted = 'N'}): super._();
  factory _PaisDTO.fromJson(Map<String, dynamic> json) => _$PaisDTOFromJson(json);

@override@JsonKey(name: 'sector_id') final  String id;
@override@JsonKey(name: 'alta_sn') final  String altaSN;
@override@JsonKey(name: 'descripcion_es') final  String descripcionES;
@override@JsonKey(name: 'descripcion_en') final  String? descripcionEN;
@override@JsonKey(name: 'descripcion_fr') final  String? descripcionFR;
@override@JsonKey(name: 'descripcion_de') final  String? descripcionDE;
@override@JsonKey(name: 'descripcion_ca') final  String? descripcionCA;
@override@JsonKey(name: 'descripcion_gb') final  String? descripcionGB;
@override@JsonKey(name: 'descripcion_hu') final  String? descripcionHU;
@override@JsonKey(name: 'descripcion_it') final  String? descripcionIT;
@override@JsonKey(name: 'descripcion_nl') final  String? descripcionNL;
@override@JsonKey(name: 'descripcion_pl') final  String? descripcionPL;
@override@JsonKey(name: 'last_updated') final  DateTime lastUpdated;
@override@JsonKey(name: 'deleted') final  String deleted;

/// Create a copy of SectorDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaisDTOCopyWith<_PaisDTO> get copyWith => __$PaisDTOCopyWithImpl<_PaisDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaisDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaisDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.altaSN, altaSN) || other.altaSN == altaSN)&&(identical(other.descripcionES, descripcionES) || other.descripcionES == descripcionES)&&(identical(other.descripcionEN, descripcionEN) || other.descripcionEN == descripcionEN)&&(identical(other.descripcionFR, descripcionFR) || other.descripcionFR == descripcionFR)&&(identical(other.descripcionDE, descripcionDE) || other.descripcionDE == descripcionDE)&&(identical(other.descripcionCA, descripcionCA) || other.descripcionCA == descripcionCA)&&(identical(other.descripcionGB, descripcionGB) || other.descripcionGB == descripcionGB)&&(identical(other.descripcionHU, descripcionHU) || other.descripcionHU == descripcionHU)&&(identical(other.descripcionIT, descripcionIT) || other.descripcionIT == descripcionIT)&&(identical(other.descripcionNL, descripcionNL) || other.descripcionNL == descripcionNL)&&(identical(other.descripcionPL, descripcionPL) || other.descripcionPL == descripcionPL)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,altaSN,descripcionES,descripcionEN,descripcionFR,descripcionDE,descripcionCA,descripcionGB,descripcionHU,descripcionIT,descripcionNL,descripcionPL,lastUpdated,deleted);

@override
String toString() {
  return 'SectorDTO(id: $id, altaSN: $altaSN, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PaisDTOCopyWith<$Res> implements $SectorDTOCopyWith<$Res> {
  factory _$PaisDTOCopyWith(_PaisDTO value, $Res Function(_PaisDTO) _then) = __$PaisDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sector_id') String id,@JsonKey(name: 'alta_sn') String altaSN,@JsonKey(name: 'descripcion_es') String descripcionES,@JsonKey(name: 'descripcion_en') String? descripcionEN,@JsonKey(name: 'descripcion_fr') String? descripcionFR,@JsonKey(name: 'descripcion_de') String? descripcionDE,@JsonKey(name: 'descripcion_ca') String? descripcionCA,@JsonKey(name: 'descripcion_gb') String? descripcionGB,@JsonKey(name: 'descripcion_hu') String? descripcionHU,@JsonKey(name: 'descripcion_it') String? descripcionIT,@JsonKey(name: 'descripcion_nl') String? descripcionNL,@JsonKey(name: 'descripcion_pl') String? descripcionPL,@JsonKey(name: 'last_updated') DateTime lastUpdated,@JsonKey(name: 'deleted') String deleted
});




}
/// @nodoc
class __$PaisDTOCopyWithImpl<$Res>
    implements _$PaisDTOCopyWith<$Res> {
  __$PaisDTOCopyWithImpl(this._self, this._then);

  final _PaisDTO _self;
  final $Res Function(_PaisDTO) _then;

/// Create a copy of SectorDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? altaSN = null,Object? descripcionES = null,Object? descripcionEN = freezed,Object? descripcionFR = freezed,Object? descripcionDE = freezed,Object? descripcionCA = freezed,Object? descripcionGB = freezed,Object? descripcionHU = freezed,Object? descripcionIT = freezed,Object? descripcionNL = freezed,Object? descripcionPL = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_PaisDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,altaSN: null == altaSN ? _self.altaSN : altaSN // ignore: cast_nullable_to_non_nullable
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
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
