// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_rappel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteRappel {

 String get clienteId; String get rappelId; String get descripcion; DateTime get fechaDesDe; DateTime? get fechaHasta; String? get nombreArchivo; bool get firmado; DateTime get lastUpdated; bool get deleted;
/// Create a copy of ClienteRappel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteRappelCopyWith<ClienteRappel> get copyWith => _$ClienteRappelCopyWithImpl<ClienteRappel>(this as ClienteRappel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteRappel&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.rappelId, rappelId) || other.rappelId == rappelId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.fechaDesDe, fechaDesDe) || other.fechaDesDe == fechaDesDe)&&(identical(other.fechaHasta, fechaHasta) || other.fechaHasta == fechaHasta)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.firmado, firmado) || other.firmado == firmado)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,rappelId,descripcion,fechaDesDe,fechaHasta,nombreArchivo,firmado,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteRappel(clienteId: $clienteId, rappelId: $rappelId, descripcion: $descripcion, fechaDesDe: $fechaDesDe, fechaHasta: $fechaHasta, nombreArchivo: $nombreArchivo, firmado: $firmado, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteRappelCopyWith<$Res>  {
  factory $ClienteRappelCopyWith(ClienteRappel value, $Res Function(ClienteRappel) _then) = _$ClienteRappelCopyWithImpl;
@useResult
$Res call({
 String clienteId, String rappelId, String descripcion, DateTime fechaDesDe, DateTime? fechaHasta, String? nombreArchivo, bool firmado, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$ClienteRappelCopyWithImpl<$Res>
    implements $ClienteRappelCopyWith<$Res> {
  _$ClienteRappelCopyWithImpl(this._self, this._then);

  final ClienteRappel _self;
  final $Res Function(ClienteRappel) _then;

/// Create a copy of ClienteRappel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? rappelId = null,Object? descripcion = null,Object? fechaDesDe = null,Object? fechaHasta = freezed,Object? nombreArchivo = freezed,Object? firmado = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,rappelId: null == rappelId ? _self.rappelId : rappelId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,fechaDesDe: null == fechaDesDe ? _self.fechaDesDe : fechaDesDe // ignore: cast_nullable_to_non_nullable
as DateTime,fechaHasta: freezed == fechaHasta ? _self.fechaHasta : fechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,nombreArchivo: freezed == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String?,firmado: null == firmado ? _self.firmado : firmado // ignore: cast_nullable_to_non_nullable
as bool,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteRappel].
extension ClienteRappelPatterns on ClienteRappel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteRappel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteRappel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteRappel value)  $default,){
final _that = this;
switch (_that) {
case _ClienteRappel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteRappel value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteRappel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String rappelId,  String descripcion,  DateTime fechaDesDe,  DateTime? fechaHasta,  String? nombreArchivo,  bool firmado,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteRappel() when $default != null:
return $default(_that.clienteId,_that.rappelId,_that.descripcion,_that.fechaDesDe,_that.fechaHasta,_that.nombreArchivo,_that.firmado,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String rappelId,  String descripcion,  DateTime fechaDesDe,  DateTime? fechaHasta,  String? nombreArchivo,  bool firmado,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteRappel():
return $default(_that.clienteId,_that.rappelId,_that.descripcion,_that.fechaDesDe,_that.fechaHasta,_that.nombreArchivo,_that.firmado,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String rappelId,  String descripcion,  DateTime fechaDesDe,  DateTime? fechaHasta,  String? nombreArchivo,  bool firmado,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteRappel() when $default != null:
return $default(_that.clienteId,_that.rappelId,_that.descripcion,_that.fechaDesDe,_that.fechaHasta,_that.nombreArchivo,_that.firmado,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteRappel extends ClienteRappel {
  const _ClienteRappel({required this.clienteId, required this.rappelId, required this.descripcion, required this.fechaDesDe, this.fechaHasta, this.nombreArchivo, required this.firmado, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String clienteId;
@override final  String rappelId;
@override final  String descripcion;
@override final  DateTime fechaDesDe;
@override final  DateTime? fechaHasta;
@override final  String? nombreArchivo;
@override final  bool firmado;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of ClienteRappel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteRappelCopyWith<_ClienteRappel> get copyWith => __$ClienteRappelCopyWithImpl<_ClienteRappel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteRappel&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.rappelId, rappelId) || other.rappelId == rappelId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.fechaDesDe, fechaDesDe) || other.fechaDesDe == fechaDesDe)&&(identical(other.fechaHasta, fechaHasta) || other.fechaHasta == fechaHasta)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.firmado, firmado) || other.firmado == firmado)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,rappelId,descripcion,fechaDesDe,fechaHasta,nombreArchivo,firmado,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteRappel(clienteId: $clienteId, rappelId: $rappelId, descripcion: $descripcion, fechaDesDe: $fechaDesDe, fechaHasta: $fechaHasta, nombreArchivo: $nombreArchivo, firmado: $firmado, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteRappelCopyWith<$Res> implements $ClienteRappelCopyWith<$Res> {
  factory _$ClienteRappelCopyWith(_ClienteRappel value, $Res Function(_ClienteRappel) _then) = __$ClienteRappelCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String rappelId, String descripcion, DateTime fechaDesDe, DateTime? fechaHasta, String? nombreArchivo, bool firmado, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$ClienteRappelCopyWithImpl<$Res>
    implements _$ClienteRappelCopyWith<$Res> {
  __$ClienteRappelCopyWithImpl(this._self, this._then);

  final _ClienteRappel _self;
  final $Res Function(_ClienteRappel) _then;

/// Create a copy of ClienteRappel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? rappelId = null,Object? descripcion = null,Object? fechaDesDe = null,Object? fechaHasta = freezed,Object? nombreArchivo = freezed,Object? firmado = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteRappel(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,rappelId: null == rappelId ? _self.rappelId : rappelId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,fechaDesDe: null == fechaDesDe ? _self.fechaDesDe : fechaDesDe // ignore: cast_nullable_to_non_nullable
as DateTime,fechaHasta: freezed == fechaHasta ? _self.fechaHasta : fechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,nombreArchivo: freezed == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String?,firmado: null == firmado ? _self.firmado : firmado // ignore: cast_nullable_to_non_nullable
as bool,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
