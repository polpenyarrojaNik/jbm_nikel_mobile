// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_grupo_neto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteGrupoNeto {

 String get clienteId; String get grupoNetoId; String get grupoNetoDescripcion; double get dtoAdicional; DateTime get lastUpdated; bool get deleted;
/// Create a copy of ClienteGrupoNeto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteGrupoNetoCopyWith<ClienteGrupoNeto> get copyWith => _$ClienteGrupoNetoCopyWithImpl<ClienteGrupoNeto>(this as ClienteGrupoNeto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteGrupoNeto&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.grupoNetoId, grupoNetoId) || other.grupoNetoId == grupoNetoId)&&(identical(other.grupoNetoDescripcion, grupoNetoDescripcion) || other.grupoNetoDescripcion == grupoNetoDescripcion)&&(identical(other.dtoAdicional, dtoAdicional) || other.dtoAdicional == dtoAdicional)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,grupoNetoId,grupoNetoDescripcion,dtoAdicional,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteGrupoNeto(clienteId: $clienteId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteGrupoNetoCopyWith<$Res>  {
  factory $ClienteGrupoNetoCopyWith(ClienteGrupoNeto value, $Res Function(ClienteGrupoNeto) _then) = _$ClienteGrupoNetoCopyWithImpl;
@useResult
$Res call({
 String clienteId, String grupoNetoId, String grupoNetoDescripcion, double dtoAdicional, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$ClienteGrupoNetoCopyWithImpl<$Res>
    implements $ClienteGrupoNetoCopyWith<$Res> {
  _$ClienteGrupoNetoCopyWithImpl(this._self, this._then);

  final ClienteGrupoNeto _self;
  final $Res Function(ClienteGrupoNeto) _then;

/// Create a copy of ClienteGrupoNeto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? grupoNetoId = null,Object? grupoNetoDescripcion = null,Object? dtoAdicional = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoId: null == grupoNetoId ? _self.grupoNetoId : grupoNetoId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoDescripcion: null == grupoNetoDescripcion ? _self.grupoNetoDescripcion : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
as String,dtoAdicional: null == dtoAdicional ? _self.dtoAdicional : dtoAdicional // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteGrupoNeto].
extension ClienteGrupoNetoPatterns on ClienteGrupoNeto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteGrupoNeto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteGrupoNeto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteGrupoNeto value)  $default,){
final _that = this;
switch (_that) {
case _ClienteGrupoNeto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteGrupoNeto value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteGrupoNeto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String grupoNetoId,  String grupoNetoDescripcion,  double dtoAdicional,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteGrupoNeto() when $default != null:
return $default(_that.clienteId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String grupoNetoId,  String grupoNetoDescripcion,  double dtoAdicional,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteGrupoNeto():
return $default(_that.clienteId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String grupoNetoId,  String grupoNetoDescripcion,  double dtoAdicional,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteGrupoNeto() when $default != null:
return $default(_that.clienteId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteGrupoNeto extends ClienteGrupoNeto {
  const _ClienteGrupoNeto({required this.clienteId, required this.grupoNetoId, required this.grupoNetoDescripcion, required this.dtoAdicional, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String clienteId;
@override final  String grupoNetoId;
@override final  String grupoNetoDescripcion;
@override final  double dtoAdicional;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of ClienteGrupoNeto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteGrupoNetoCopyWith<_ClienteGrupoNeto> get copyWith => __$ClienteGrupoNetoCopyWithImpl<_ClienteGrupoNeto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteGrupoNeto&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.grupoNetoId, grupoNetoId) || other.grupoNetoId == grupoNetoId)&&(identical(other.grupoNetoDescripcion, grupoNetoDescripcion) || other.grupoNetoDescripcion == grupoNetoDescripcion)&&(identical(other.dtoAdicional, dtoAdicional) || other.dtoAdicional == dtoAdicional)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,grupoNetoId,grupoNetoDescripcion,dtoAdicional,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteGrupoNeto(clienteId: $clienteId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteGrupoNetoCopyWith<$Res> implements $ClienteGrupoNetoCopyWith<$Res> {
  factory _$ClienteGrupoNetoCopyWith(_ClienteGrupoNeto value, $Res Function(_ClienteGrupoNeto) _then) = __$ClienteGrupoNetoCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String grupoNetoId, String grupoNetoDescripcion, double dtoAdicional, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$ClienteGrupoNetoCopyWithImpl<$Res>
    implements _$ClienteGrupoNetoCopyWith<$Res> {
  __$ClienteGrupoNetoCopyWithImpl(this._self, this._then);

  final _ClienteGrupoNeto _self;
  final $Res Function(_ClienteGrupoNeto) _then;

/// Create a copy of ClienteGrupoNeto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? grupoNetoId = null,Object? grupoNetoDescripcion = null,Object? dtoAdicional = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteGrupoNeto(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoId: null == grupoNetoId ? _self.grupoNetoId : grupoNetoId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoDescripcion: null == grupoNetoDescripcion ? _self.grupoNetoDescripcion : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
as String,dtoAdicional: null == dtoAdicional ? _self.dtoAdicional : dtoAdicional // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
