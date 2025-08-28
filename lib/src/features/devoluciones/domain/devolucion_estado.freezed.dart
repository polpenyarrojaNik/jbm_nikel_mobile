// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion_estado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DevolucionEstado {

 String get id; String get descripcion; DateTime get lastUpdated; bool get deleted;
/// Create a copy of DevolucionEstado
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevolucionEstadoCopyWith<DevolucionEstado> get copyWith => _$DevolucionEstadoCopyWithImpl<DevolucionEstado>(this as DevolucionEstado, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevolucionEstado&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,descripcion,lastUpdated,deleted);

@override
String toString() {
  return 'DevolucionEstado(id: $id, descripcion: $descripcion, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $DevolucionEstadoCopyWith<$Res>  {
  factory $DevolucionEstadoCopyWith(DevolucionEstado value, $Res Function(DevolucionEstado) _then) = _$DevolucionEstadoCopyWithImpl;
@useResult
$Res call({
 String id, String descripcion, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$DevolucionEstadoCopyWithImpl<$Res>
    implements $DevolucionEstadoCopyWith<$Res> {
  _$DevolucionEstadoCopyWithImpl(this._self, this._then);

  final DevolucionEstado _self;
  final $Res Function(DevolucionEstado) _then;

/// Create a copy of DevolucionEstado
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? descripcion = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DevolucionEstado].
extension DevolucionEstadoPatterns on DevolucionEstado {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DevolucionEstado value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DevolucionEstado() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DevolucionEstado value)  $default,){
final _that = this;
switch (_that) {
case _DevolucionEstado():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DevolucionEstado value)?  $default,){
final _that = this;
switch (_that) {
case _DevolucionEstado() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String descripcion,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DevolucionEstado() when $default != null:
return $default(_that.id,_that.descripcion,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String descripcion,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _DevolucionEstado():
return $default(_that.id,_that.descripcion,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String descripcion,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _DevolucionEstado() when $default != null:
return $default(_that.id,_that.descripcion,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _DevolucionEstado extends DevolucionEstado {
  const _DevolucionEstado({required this.id, required this.descripcion, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String id;
@override final  String descripcion;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of DevolucionEstado
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevolucionEstadoCopyWith<_DevolucionEstado> get copyWith => __$DevolucionEstadoCopyWithImpl<_DevolucionEstado>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevolucionEstado&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,descripcion,lastUpdated,deleted);

@override
String toString() {
  return 'DevolucionEstado(id: $id, descripcion: $descripcion, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$DevolucionEstadoCopyWith<$Res> implements $DevolucionEstadoCopyWith<$Res> {
  factory _$DevolucionEstadoCopyWith(_DevolucionEstado value, $Res Function(_DevolucionEstado) _then) = __$DevolucionEstadoCopyWithImpl;
@override @useResult
$Res call({
 String id, String descripcion, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$DevolucionEstadoCopyWithImpl<$Res>
    implements _$DevolucionEstadoCopyWith<$Res> {
  __$DevolucionEstadoCopyWithImpl(this._self, this._then);

  final _DevolucionEstado _self;
  final $Res Function(_DevolucionEstado) _then;

/// Create a copy of DevolucionEstado
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? descripcion = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_DevolucionEstado(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
