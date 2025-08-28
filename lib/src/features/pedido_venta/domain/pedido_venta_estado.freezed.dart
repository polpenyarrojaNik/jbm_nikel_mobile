// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_estado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PedidoVentaEstado {

 int get id; String get descripcion; DateTime get lastUpdate; bool get deleted;
/// Create a copy of PedidoVentaEstado
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoVentaEstadoCopyWith<PedidoVentaEstado> get copyWith => _$PedidoVentaEstadoCopyWithImpl<PedidoVentaEstado>(this as PedidoVentaEstado, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoVentaEstado&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'PedidoVentaEstado(id: $id, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PedidoVentaEstadoCopyWith<$Res>  {
  factory $PedidoVentaEstadoCopyWith(PedidoVentaEstado value, $Res Function(PedidoVentaEstado) _then) = _$PedidoVentaEstadoCopyWithImpl;
@useResult
$Res call({
 int id, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class _$PedidoVentaEstadoCopyWithImpl<$Res>
    implements $PedidoVentaEstadoCopyWith<$Res> {
  _$PedidoVentaEstadoCopyWithImpl(this._self, this._then);

  final PedidoVentaEstado _self;
  final $Res Function(PedidoVentaEstado) _then;

/// Create a copy of PedidoVentaEstado
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


/// Adds pattern-matching-related methods to [PedidoVentaEstado].
extension PedidoVentaEstadoPatterns on PedidoVentaEstado {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoVentaEstado value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoVentaEstado() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoVentaEstado value)  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaEstado():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoVentaEstado value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaEstado() when $default != null:
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
case _PedidoVentaEstado() when $default != null:
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
case _PedidoVentaEstado():
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
case _PedidoVentaEstado() when $default != null:
return $default(_that.id,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _PedidoVentaEstado extends PedidoVentaEstado {
  const _PedidoVentaEstado({required this.id, required this.descripcion, required this.lastUpdate, required this.deleted}): super._();
  

@override final  int id;
@override final  String descripcion;
@override final  DateTime lastUpdate;
@override final  bool deleted;

/// Create a copy of PedidoVentaEstado
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoVentaEstadoCopyWith<_PedidoVentaEstado> get copyWith => __$PedidoVentaEstadoCopyWithImpl<_PedidoVentaEstado>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoVentaEstado&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'PedidoVentaEstado(id: $id, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PedidoVentaEstadoCopyWith<$Res> implements $PedidoVentaEstadoCopyWith<$Res> {
  factory _$PedidoVentaEstadoCopyWith(_PedidoVentaEstado value, $Res Function(_PedidoVentaEstado) _then) = __$PedidoVentaEstadoCopyWithImpl;
@override @useResult
$Res call({
 int id, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class __$PedidoVentaEstadoCopyWithImpl<$Res>
    implements _$PedidoVentaEstadoCopyWith<$Res> {
  __$PedidoVentaEstadoCopyWithImpl(this._self, this._then);

  final _PedidoVentaEstado _self;
  final $Res Function(_PedidoVentaEstado) _then;

/// Create a copy of PedidoVentaEstado
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_PedidoVentaEstado(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
