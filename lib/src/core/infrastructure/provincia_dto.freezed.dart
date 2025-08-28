// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provincia_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProvinciaDTO {

@JsonKey(name: 'PAIS_ID') String? get paisId;@JsonKey(name: 'REGION_ID') String? get regionId;@JsonKey(name: 'PROVINCIA_ID') String get provinciaId;@JsonKey(name: 'PROVINCIA') String? get provincia;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ProvinciaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvinciaDTOCopyWith<ProvinciaDTO> get copyWith => _$ProvinciaDTOCopyWithImpl<ProvinciaDTO>(this as ProvinciaDTO, _$identity);

  /// Serializes this ProvinciaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvinciaDTO&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.provinciaId, provinciaId) || other.provinciaId == provinciaId)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paisId,regionId,provinciaId,provincia,lastUpdated,deleted);

@override
String toString() {
  return 'ProvinciaDTO(paisId: $paisId, regionId: $regionId, provinciaId: $provinciaId, provincia: $provincia, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ProvinciaDTOCopyWith<$Res>  {
  factory $ProvinciaDTOCopyWith(ProvinciaDTO value, $Res Function(ProvinciaDTO) _then) = _$ProvinciaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'REGION_ID') String? regionId,@JsonKey(name: 'PROVINCIA_ID') String provinciaId,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ProvinciaDTOCopyWithImpl<$Res>
    implements $ProvinciaDTOCopyWith<$Res> {
  _$ProvinciaDTOCopyWithImpl(this._self, this._then);

  final ProvinciaDTO _self;
  final $Res Function(ProvinciaDTO) _then;

/// Create a copy of ProvinciaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paisId = freezed,Object? regionId = freezed,Object? provinciaId = null,Object? provincia = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,provinciaId: null == provinciaId ? _self.provinciaId : provinciaId // ignore: cast_nullable_to_non_nullable
as String,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProvinciaDTO].
extension ProvinciaDTOPatterns on ProvinciaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProvinciaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProvinciaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProvinciaDTO value)  $default,){
final _that = this;
switch (_that) {
case _ProvinciaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProvinciaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ProvinciaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'REGION_ID')  String? regionId, @JsonKey(name: 'PROVINCIA_ID')  String provinciaId, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProvinciaDTO() when $default != null:
return $default(_that.paisId,_that.regionId,_that.provinciaId,_that.provincia,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'REGION_ID')  String? regionId, @JsonKey(name: 'PROVINCIA_ID')  String provinciaId, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ProvinciaDTO():
return $default(_that.paisId,_that.regionId,_that.provinciaId,_that.provincia,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'REGION_ID')  String? regionId, @JsonKey(name: 'PROVINCIA_ID')  String provinciaId, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ProvinciaDTO() when $default != null:
return $default(_that.paisId,_that.regionId,_that.provinciaId,_that.provincia,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProvinciaDTO extends ProvinciaDTO {
  const _ProvinciaDTO({@JsonKey(name: 'PAIS_ID') required this.paisId, @JsonKey(name: 'REGION_ID') required this.regionId, @JsonKey(name: 'PROVINCIA_ID') required this.provinciaId, @JsonKey(name: 'PROVINCIA') this.provincia, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ProvinciaDTO.fromJson(Map<String, dynamic> json) => _$ProvinciaDTOFromJson(json);

@override@JsonKey(name: 'PAIS_ID') final  String? paisId;
@override@JsonKey(name: 'REGION_ID') final  String? regionId;
@override@JsonKey(name: 'PROVINCIA_ID') final  String provinciaId;
@override@JsonKey(name: 'PROVINCIA') final  String? provincia;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ProvinciaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProvinciaDTOCopyWith<_ProvinciaDTO> get copyWith => __$ProvinciaDTOCopyWithImpl<_ProvinciaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProvinciaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProvinciaDTO&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.provinciaId, provinciaId) || other.provinciaId == provinciaId)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paisId,regionId,provinciaId,provincia,lastUpdated,deleted);

@override
String toString() {
  return 'ProvinciaDTO(paisId: $paisId, regionId: $regionId, provinciaId: $provinciaId, provincia: $provincia, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ProvinciaDTOCopyWith<$Res> implements $ProvinciaDTOCopyWith<$Res> {
  factory _$ProvinciaDTOCopyWith(_ProvinciaDTO value, $Res Function(_ProvinciaDTO) _then) = __$ProvinciaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'REGION_ID') String? regionId,@JsonKey(name: 'PROVINCIA_ID') String provinciaId,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ProvinciaDTOCopyWithImpl<$Res>
    implements _$ProvinciaDTOCopyWith<$Res> {
  __$ProvinciaDTOCopyWithImpl(this._self, this._then);

  final _ProvinciaDTO _self;
  final $Res Function(_ProvinciaDTO) _then;

/// Create a copy of ProvinciaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paisId = freezed,Object? regionId = freezed,Object? provinciaId = null,Object? provincia = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ProvinciaDTO(
paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,provinciaId: null == provinciaId ? _self.provinciaId : provinciaId // ignore: cast_nullable_to_non_nullable
as String,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
