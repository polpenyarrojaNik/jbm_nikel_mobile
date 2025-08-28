// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteUsuario {

 String get clienteId; String get usuarioId; DateTime get lastUpdated; bool get deleted;
/// Create a copy of ClienteUsuario
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteUsuarioCopyWith<ClienteUsuario> get copyWith => _$ClienteUsuarioCopyWithImpl<ClienteUsuario>(this as ClienteUsuario, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteUsuario&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,usuarioId,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteUsuario(clienteId: $clienteId, usuarioId: $usuarioId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteUsuarioCopyWith<$Res>  {
  factory $ClienteUsuarioCopyWith(ClienteUsuario value, $Res Function(ClienteUsuario) _then) = _$ClienteUsuarioCopyWithImpl;
@useResult
$Res call({
 String clienteId, String usuarioId, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$ClienteUsuarioCopyWithImpl<$Res>
    implements $ClienteUsuarioCopyWith<$Res> {
  _$ClienteUsuarioCopyWithImpl(this._self, this._then);

  final ClienteUsuario _self;
  final $Res Function(ClienteUsuario) _then;

/// Create a copy of ClienteUsuario
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? usuarioId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteUsuario].
extension ClienteUsuarioPatterns on ClienteUsuario {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteUsuario value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteUsuario() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteUsuario value)  $default,){
final _that = this;
switch (_that) {
case _ClienteUsuario():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteUsuario value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteUsuario() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String usuarioId,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteUsuario() when $default != null:
return $default(_that.clienteId,_that.usuarioId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String usuarioId,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteUsuario():
return $default(_that.clienteId,_that.usuarioId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String usuarioId,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteUsuario() when $default != null:
return $default(_that.clienteId,_that.usuarioId,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteUsuario extends ClienteUsuario {
  const _ClienteUsuario({required this.clienteId, required this.usuarioId, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String clienteId;
@override final  String usuarioId;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of ClienteUsuario
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteUsuarioCopyWith<_ClienteUsuario> get copyWith => __$ClienteUsuarioCopyWithImpl<_ClienteUsuario>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteUsuario&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,usuarioId,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteUsuario(clienteId: $clienteId, usuarioId: $usuarioId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteUsuarioCopyWith<$Res> implements $ClienteUsuarioCopyWith<$Res> {
  factory _$ClienteUsuarioCopyWith(_ClienteUsuario value, $Res Function(_ClienteUsuario) _then) = __$ClienteUsuarioCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String usuarioId, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$ClienteUsuarioCopyWithImpl<$Res>
    implements _$ClienteUsuarioCopyWith<$Res> {
  __$ClienteUsuarioCopyWithImpl(this._self, this._then);

  final _ClienteUsuario _self;
  final $Res Function(_ClienteUsuario) _then;

/// Create a copy of ClienteUsuario
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? usuarioId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteUsuario(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
