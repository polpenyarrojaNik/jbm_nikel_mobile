// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Sector {

 String get id; bool get isAlta; String get descripcion; DateTime get lastUpdate; bool get deleted;
/// Create a copy of Sector
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectorCopyWith<Sector> get copyWith => _$SectorCopyWithImpl<Sector>(this as Sector, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sector&&(identical(other.id, id) || other.id == id)&&(identical(other.isAlta, isAlta) || other.isAlta == isAlta)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,isAlta,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'Sector(id: $id, isAlta: $isAlta, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $SectorCopyWith<$Res>  {
  factory $SectorCopyWith(Sector value, $Res Function(Sector) _then) = _$SectorCopyWithImpl;
@useResult
$Res call({
 String id, bool isAlta, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class _$SectorCopyWithImpl<$Res>
    implements $SectorCopyWith<$Res> {
  _$SectorCopyWithImpl(this._self, this._then);

  final Sector _self;
  final $Res Function(Sector) _then;

/// Create a copy of Sector
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isAlta = null,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isAlta: null == isAlta ? _self.isAlta : isAlta // ignore: cast_nullable_to_non_nullable
as bool,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Sector].
extension SectorPatterns on Sector {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sector value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sector() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sector value)  $default,){
final _that = this;
switch (_that) {
case _Sector():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sector value)?  $default,){
final _that = this;
switch (_that) {
case _Sector() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool isAlta,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sector() when $default != null:
return $default(_that.id,_that.isAlta,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool isAlta,  String descripcion,  DateTime lastUpdate,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _Sector():
return $default(_that.id,_that.isAlta,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool isAlta,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _Sector() when $default != null:
return $default(_that.id,_that.isAlta,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _Sector extends Sector {
  const _Sector({required this.id, required this.isAlta, required this.descripcion, required this.lastUpdate, required this.deleted}): super._();
  

@override final  String id;
@override final  bool isAlta;
@override final  String descripcion;
@override final  DateTime lastUpdate;
@override final  bool deleted;

/// Create a copy of Sector
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectorCopyWith<_Sector> get copyWith => __$SectorCopyWithImpl<_Sector>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sector&&(identical(other.id, id) || other.id == id)&&(identical(other.isAlta, isAlta) || other.isAlta == isAlta)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,isAlta,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'Sector(id: $id, isAlta: $isAlta, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$SectorCopyWith<$Res> implements $SectorCopyWith<$Res> {
  factory _$SectorCopyWith(_Sector value, $Res Function(_Sector) _then) = __$SectorCopyWithImpl;
@override @useResult
$Res call({
 String id, bool isAlta, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class __$SectorCopyWithImpl<$Res>
    implements _$SectorCopyWith<$Res> {
  __$SectorCopyWithImpl(this._self, this._then);

  final _Sector _self;
  final $Res Function(_Sector) _then;

/// Create a copy of Sector
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isAlta = null,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_Sector(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isAlta: null == isAlta ? _self.isAlta : isAlta // ignore: cast_nullable_to_non_nullable
as bool,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
