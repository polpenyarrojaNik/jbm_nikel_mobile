// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subsector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Subsector {

 String get subsectorId; Sector get sector; String get descripcion; DateTime get lastUpdate; bool get deleted;
/// Create a copy of Subsector
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubsectorCopyWith<Subsector> get copyWith => _$SubsectorCopyWithImpl<Subsector>(this as Subsector, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subsector&&(identical(other.subsectorId, subsectorId) || other.subsectorId == subsectorId)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,subsectorId,sector,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'Subsector(subsectorId: $subsectorId, sector: $sector, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $SubsectorCopyWith<$Res>  {
  factory $SubsectorCopyWith(Subsector value, $Res Function(Subsector) _then) = _$SubsectorCopyWithImpl;
@useResult
$Res call({
 String subsectorId, Sector sector, String descripcion, DateTime lastUpdate, bool deleted
});


$SectorCopyWith<$Res> get sector;

}
/// @nodoc
class _$SubsectorCopyWithImpl<$Res>
    implements $SubsectorCopyWith<$Res> {
  _$SubsectorCopyWithImpl(this._self, this._then);

  final Subsector _self;
  final $Res Function(Subsector) _then;

/// Create a copy of Subsector
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subsectorId = null,Object? sector = null,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
subsectorId: null == subsectorId ? _self.subsectorId : subsectorId // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as Sector,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Subsector
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorCopyWith<$Res> get sector {
  
  return $SectorCopyWith<$Res>(_self.sector, (value) {
    return _then(_self.copyWith(sector: value));
  });
}
}


/// Adds pattern-matching-related methods to [Subsector].
extension SubsectorPatterns on Subsector {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Subsector value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Subsector() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Subsector value)  $default,){
final _that = this;
switch (_that) {
case _Subsector():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Subsector value)?  $default,){
final _that = this;
switch (_that) {
case _Subsector() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subsectorId,  Sector sector,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Subsector() when $default != null:
return $default(_that.subsectorId,_that.sector,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subsectorId,  Sector sector,  String descripcion,  DateTime lastUpdate,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _Subsector():
return $default(_that.subsectorId,_that.sector,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subsectorId,  Sector sector,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _Subsector() when $default != null:
return $default(_that.subsectorId,_that.sector,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _Subsector extends Subsector {
  const _Subsector({required this.subsectorId, required this.sector, required this.descripcion, required this.lastUpdate, required this.deleted}): super._();
  

@override final  String subsectorId;
@override final  Sector sector;
@override final  String descripcion;
@override final  DateTime lastUpdate;
@override final  bool deleted;

/// Create a copy of Subsector
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubsectorCopyWith<_Subsector> get copyWith => __$SubsectorCopyWithImpl<_Subsector>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subsector&&(identical(other.subsectorId, subsectorId) || other.subsectorId == subsectorId)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,subsectorId,sector,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'Subsector(subsectorId: $subsectorId, sector: $sector, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$SubsectorCopyWith<$Res> implements $SubsectorCopyWith<$Res> {
  factory _$SubsectorCopyWith(_Subsector value, $Res Function(_Subsector) _then) = __$SubsectorCopyWithImpl;
@override @useResult
$Res call({
 String subsectorId, Sector sector, String descripcion, DateTime lastUpdate, bool deleted
});


@override $SectorCopyWith<$Res> get sector;

}
/// @nodoc
class __$SubsectorCopyWithImpl<$Res>
    implements _$SubsectorCopyWith<$Res> {
  __$SubsectorCopyWithImpl(this._self, this._then);

  final _Subsector _self;
  final $Res Function(_Subsector) _then;

/// Create a copy of Subsector
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subsectorId = null,Object? sector = null,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_Subsector(
subsectorId: null == subsectorId ? _self.subsectorId : subsectorId // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as Sector,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Subsector
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorCopyWith<$Res> get sector {
  
  return $SectorCopyWith<$Res>(_self.sector, (value) {
    return _then(_self.copyWith(sector: value));
  });
}
}

// dart format on
