// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_sector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VisitaSector {

 int get id; String get descripcion; DateTime get lastUpdate; bool get deleted;
/// Create a copy of VisitaSector
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitaSectorCopyWith<VisitaSector> get copyWith => _$VisitaSectorCopyWithImpl<VisitaSector>(this as VisitaSector, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitaSector&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'VisitaSector(id: $id, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $VisitaSectorCopyWith<$Res>  {
  factory $VisitaSectorCopyWith(VisitaSector value, $Res Function(VisitaSector) _then) = _$VisitaSectorCopyWithImpl;
@useResult
$Res call({
 int id, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class _$VisitaSectorCopyWithImpl<$Res>
    implements $VisitaSectorCopyWith<$Res> {
  _$VisitaSectorCopyWithImpl(this._self, this._then);

  final VisitaSector _self;
  final $Res Function(VisitaSector) _then;

/// Create a copy of VisitaSector
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VisitaSector].
extension VisitaSectorPatterns on VisitaSector {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitaSector value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitaSector() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitaSector value)  $default,){
final _that = this;
switch (_that) {
case _VisitaSector():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitaSector value)?  $default,){
final _that = this;
switch (_that) {
case _VisitaSector() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitaSector() when $default != null:
return $default(_that.id,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String descripcion,  DateTime lastUpdate,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _VisitaSector():
return $default(_that.id,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _VisitaSector() when $default != null:
return $default(_that.id,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _VisitaSector extends VisitaSector {
  const _VisitaSector({required this.id, required this.descripcion, required this.lastUpdate, required this.deleted}): super._();
  

@override final  int id;
@override final  String descripcion;
@override final  DateTime lastUpdate;
@override final  bool deleted;

/// Create a copy of VisitaSector
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitaSectorCopyWith<_VisitaSector> get copyWith => __$VisitaSectorCopyWithImpl<_VisitaSector>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitaSector&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'VisitaSector(id: $id, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$VisitaSectorCopyWith<$Res> implements $VisitaSectorCopyWith<$Res> {
  factory _$VisitaSectorCopyWith(_VisitaSector value, $Res Function(_VisitaSector) _then) = __$VisitaSectorCopyWithImpl;
@override @useResult
$Res call({
 int id, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class __$VisitaSectorCopyWithImpl<$Res>
    implements _$VisitaSectorCopyWith<$Res> {
  __$VisitaSectorCopyWithImpl(this._self, this._then);

  final _VisitaSector _self;
  final $Res Function(_VisitaSector) _then;

/// Create a copy of VisitaSector
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_VisitaSector(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
