// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provincia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Provincia {

 String get paisId; String get regionId; String get provinciaId; String? get provincia; DateTime get lastUpdate; bool get deleted;
/// Create a copy of Provincia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvinciaCopyWith<Provincia> get copyWith => _$ProvinciaCopyWithImpl<Provincia>(this as Provincia, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Provincia&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.provinciaId, provinciaId) || other.provinciaId == provinciaId)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,paisId,regionId,provinciaId,provincia,lastUpdate,deleted);

@override
String toString() {
  return 'Provincia(paisId: $paisId, regionId: $regionId, provinciaId: $provinciaId, provincia: $provincia, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ProvinciaCopyWith<$Res>  {
  factory $ProvinciaCopyWith(Provincia value, $Res Function(Provincia) _then) = _$ProvinciaCopyWithImpl;
@useResult
$Res call({
 String paisId, String regionId, String provinciaId, String? provincia, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class _$ProvinciaCopyWithImpl<$Res>
    implements $ProvinciaCopyWith<$Res> {
  _$ProvinciaCopyWithImpl(this._self, this._then);

  final Provincia _self;
  final $Res Function(Provincia) _then;

/// Create a copy of Provincia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paisId = null,Object? regionId = null,Object? provinciaId = null,Object? provincia = freezed,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
paisId: null == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String,regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,provinciaId: null == provinciaId ? _self.provinciaId : provinciaId // ignore: cast_nullable_to_non_nullable
as String,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Provincia].
extension ProvinciaPatterns on Provincia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Provincia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Provincia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Provincia value)  $default,){
final _that = this;
switch (_that) {
case _Provincia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Provincia value)?  $default,){
final _that = this;
switch (_that) {
case _Provincia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paisId,  String regionId,  String provinciaId,  String? provincia,  DateTime lastUpdate,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Provincia() when $default != null:
return $default(_that.paisId,_that.regionId,_that.provinciaId,_that.provincia,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paisId,  String regionId,  String provinciaId,  String? provincia,  DateTime lastUpdate,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _Provincia():
return $default(_that.paisId,_that.regionId,_that.provinciaId,_that.provincia,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paisId,  String regionId,  String provinciaId,  String? provincia,  DateTime lastUpdate,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _Provincia() when $default != null:
return $default(_that.paisId,_that.regionId,_that.provinciaId,_that.provincia,_that.lastUpdate,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _Provincia extends Provincia {
  const _Provincia({required this.paisId, required this.regionId, required this.provinciaId, this.provincia, required this.lastUpdate, required this.deleted}): super._();
  

@override final  String paisId;
@override final  String regionId;
@override final  String provinciaId;
@override final  String? provincia;
@override final  DateTime lastUpdate;
@override final  bool deleted;

/// Create a copy of Provincia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProvinciaCopyWith<_Provincia> get copyWith => __$ProvinciaCopyWithImpl<_Provincia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Provincia&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.provinciaId, provinciaId) || other.provinciaId == provinciaId)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,paisId,regionId,provinciaId,provincia,lastUpdate,deleted);

@override
String toString() {
  return 'Provincia(paisId: $paisId, regionId: $regionId, provinciaId: $provinciaId, provincia: $provincia, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ProvinciaCopyWith<$Res> implements $ProvinciaCopyWith<$Res> {
  factory _$ProvinciaCopyWith(_Provincia value, $Res Function(_Provincia) _then) = __$ProvinciaCopyWithImpl;
@override @useResult
$Res call({
 String paisId, String regionId, String provinciaId, String? provincia, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class __$ProvinciaCopyWithImpl<$Res>
    implements _$ProvinciaCopyWith<$Res> {
  __$ProvinciaCopyWithImpl(this._self, this._then);

  final _Provincia _self;
  final $Res Function(_Provincia) _then;

/// Create a copy of Provincia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paisId = null,Object? regionId = null,Object? provinciaId = null,Object? provincia = freezed,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_Provincia(
paisId: null == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String,regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,provinciaId: null == provinciaId ? _self.provinciaId : provinciaId // ignore: cast_nullable_to_non_nullable
as String,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
