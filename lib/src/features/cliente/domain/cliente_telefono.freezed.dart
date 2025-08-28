// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_telefono.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteTelefono {

 String get clienteId; String get nombre; String get telefono;
/// Create a copy of ClienteTelefono
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteTelefonoCopyWith<ClienteTelefono> get copyWith => _$ClienteTelefonoCopyWithImpl<ClienteTelefono>(this as ClienteTelefono, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteTelefono&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.telefono, telefono) || other.telefono == telefono));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,nombre,telefono);

@override
String toString() {
  return 'ClienteTelefono(clienteId: $clienteId, nombre: $nombre, telefono: $telefono)';
}


}

/// @nodoc
abstract mixin class $ClienteTelefonoCopyWith<$Res>  {
  factory $ClienteTelefonoCopyWith(ClienteTelefono value, $Res Function(ClienteTelefono) _then) = _$ClienteTelefonoCopyWithImpl;
@useResult
$Res call({
 String clienteId, String nombre, String telefono
});




}
/// @nodoc
class _$ClienteTelefonoCopyWithImpl<$Res>
    implements $ClienteTelefonoCopyWith<$Res> {
  _$ClienteTelefonoCopyWithImpl(this._self, this._then);

  final ClienteTelefono _self;
  final $Res Function(ClienteTelefono) _then;

/// Create a copy of ClienteTelefono
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? nombre = null,Object? telefono = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,telefono: null == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteTelefono].
extension ClienteTelefonoPatterns on ClienteTelefono {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteTelefono value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteTelefono() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteTelefono value)  $default,){
final _that = this;
switch (_that) {
case _ClienteTelefono():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteTelefono value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteTelefono() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String nombre,  String telefono)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteTelefono() when $default != null:
return $default(_that.clienteId,_that.nombre,_that.telefono);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String nombre,  String telefono)  $default,) {final _that = this;
switch (_that) {
case _ClienteTelefono():
return $default(_that.clienteId,_that.nombre,_that.telefono);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String nombre,  String telefono)?  $default,) {final _that = this;
switch (_that) {
case _ClienteTelefono() when $default != null:
return $default(_that.clienteId,_that.nombre,_that.telefono);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteTelefono extends ClienteTelefono {
  const _ClienteTelefono({required this.clienteId, required this.nombre, required this.telefono}): super._();
  

@override final  String clienteId;
@override final  String nombre;
@override final  String telefono;

/// Create a copy of ClienteTelefono
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteTelefonoCopyWith<_ClienteTelefono> get copyWith => __$ClienteTelefonoCopyWithImpl<_ClienteTelefono>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteTelefono&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.telefono, telefono) || other.telefono == telefono));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,nombre,telefono);

@override
String toString() {
  return 'ClienteTelefono(clienteId: $clienteId, nombre: $nombre, telefono: $telefono)';
}


}

/// @nodoc
abstract mixin class _$ClienteTelefonoCopyWith<$Res> implements $ClienteTelefonoCopyWith<$Res> {
  factory _$ClienteTelefonoCopyWith(_ClienteTelefono value, $Res Function(_ClienteTelefono) _then) = __$ClienteTelefonoCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String nombre, String telefono
});




}
/// @nodoc
class __$ClienteTelefonoCopyWithImpl<$Res>
    implements _$ClienteTelefonoCopyWith<$Res> {
  __$ClienteTelefonoCopyWithImpl(this._self, this._then);

  final _ClienteTelefono _self;
  final $Res Function(_ClienteTelefono) _then;

/// Create a copy of ClienteTelefono
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? nombre = null,Object? telefono = null,}) {
  return _then(_ClienteTelefono(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,telefono: null == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
