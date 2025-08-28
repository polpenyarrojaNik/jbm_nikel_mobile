// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_contacto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteContacto {

 String get clienteId; String? get contactoId; String? get contactoImpGuid; String? get observaciones; String? get nombre; String? get apellido1; String? get apellido2; String? get telefono1; String? get telefono2; String? get email; DateTime get lastUpdated; bool get enviado; bool get tratado; bool get deleted;
/// Create a copy of ClienteContacto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteContactoCopyWith<ClienteContacto> get copyWith => _$ClienteContactoCopyWithImpl<ClienteContacto>(this as ClienteContacto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteContacto&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.contactoId, contactoId) || other.contactoId == contactoId)&&(identical(other.contactoImpGuid, contactoImpGuid) || other.contactoImpGuid == contactoImpGuid)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellido1, apellido1) || other.apellido1 == apellido1)&&(identical(other.apellido2, apellido2) || other.apellido2 == apellido2)&&(identical(other.telefono1, telefono1) || other.telefono1 == telefono1)&&(identical(other.telefono2, telefono2) || other.telefono2 == telefono2)&&(identical(other.email, email) || other.email == email)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.enviado, enviado) || other.enviado == enviado)&&(identical(other.tratado, tratado) || other.tratado == tratado)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,contactoId,contactoImpGuid,observaciones,nombre,apellido1,apellido2,telefono1,telefono2,email,lastUpdated,enviado,tratado,deleted);

@override
String toString() {
  return 'ClienteContacto(clienteId: $clienteId, contactoId: $contactoId, contactoImpGuid: $contactoImpGuid, observaciones: $observaciones, nombre: $nombre, apellido1: $apellido1, apellido2: $apellido2, telefono1: $telefono1, telefono2: $telefono2, email: $email, lastUpdated: $lastUpdated, enviado: $enviado, tratado: $tratado, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteContactoCopyWith<$Res>  {
  factory $ClienteContactoCopyWith(ClienteContacto value, $Res Function(ClienteContacto) _then) = _$ClienteContactoCopyWithImpl;
@useResult
$Res call({
 String clienteId, String? contactoId, String? contactoImpGuid, String? observaciones, String? nombre, String? apellido1, String? apellido2, String? telefono1, String? telefono2, String? email, DateTime lastUpdated, bool enviado, bool tratado, bool deleted
});




}
/// @nodoc
class _$ClienteContactoCopyWithImpl<$Res>
    implements $ClienteContactoCopyWith<$Res> {
  _$ClienteContactoCopyWithImpl(this._self, this._then);

  final ClienteContacto _self;
  final $Res Function(ClienteContacto) _then;

/// Create a copy of ClienteContacto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? contactoId = freezed,Object? contactoImpGuid = freezed,Object? observaciones = freezed,Object? nombre = freezed,Object? apellido1 = freezed,Object? apellido2 = freezed,Object? telefono1 = freezed,Object? telefono2 = freezed,Object? email = freezed,Object? lastUpdated = null,Object? enviado = null,Object? tratado = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,contactoId: freezed == contactoId ? _self.contactoId : contactoId // ignore: cast_nullable_to_non_nullable
as String?,contactoImpGuid: freezed == contactoImpGuid ? _self.contactoImpGuid : contactoImpGuid // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellido1: freezed == apellido1 ? _self.apellido1 : apellido1 // ignore: cast_nullable_to_non_nullable
as String?,apellido2: freezed == apellido2 ? _self.apellido2 : apellido2 // ignore: cast_nullable_to_non_nullable
as String?,telefono1: freezed == telefono1 ? _self.telefono1 : telefono1 // ignore: cast_nullable_to_non_nullable
as String?,telefono2: freezed == telefono2 ? _self.telefono2 : telefono2 // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,enviado: null == enviado ? _self.enviado : enviado // ignore: cast_nullable_to_non_nullable
as bool,tratado: null == tratado ? _self.tratado : tratado // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteContacto].
extension ClienteContactoPatterns on ClienteContacto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteContacto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteContacto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteContacto value)  $default,){
final _that = this;
switch (_that) {
case _ClienteContacto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteContacto value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteContacto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String? contactoId,  String? contactoImpGuid,  String? observaciones,  String? nombre,  String? apellido1,  String? apellido2,  String? telefono1,  String? telefono2,  String? email,  DateTime lastUpdated,  bool enviado,  bool tratado,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteContacto() when $default != null:
return $default(_that.clienteId,_that.contactoId,_that.contactoImpGuid,_that.observaciones,_that.nombre,_that.apellido1,_that.apellido2,_that.telefono1,_that.telefono2,_that.email,_that.lastUpdated,_that.enviado,_that.tratado,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String? contactoId,  String? contactoImpGuid,  String? observaciones,  String? nombre,  String? apellido1,  String? apellido2,  String? telefono1,  String? telefono2,  String? email,  DateTime lastUpdated,  bool enviado,  bool tratado,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteContacto():
return $default(_that.clienteId,_that.contactoId,_that.contactoImpGuid,_that.observaciones,_that.nombre,_that.apellido1,_that.apellido2,_that.telefono1,_that.telefono2,_that.email,_that.lastUpdated,_that.enviado,_that.tratado,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String? contactoId,  String? contactoImpGuid,  String? observaciones,  String? nombre,  String? apellido1,  String? apellido2,  String? telefono1,  String? telefono2,  String? email,  DateTime lastUpdated,  bool enviado,  bool tratado,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteContacto() when $default != null:
return $default(_that.clienteId,_that.contactoId,_that.contactoImpGuid,_that.observaciones,_that.nombre,_that.apellido1,_that.apellido2,_that.telefono1,_that.telefono2,_that.email,_that.lastUpdated,_that.enviado,_that.tratado,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteContacto extends ClienteContacto {
  const _ClienteContacto({required this.clienteId, required this.contactoId, required this.contactoImpGuid, this.observaciones, this.nombre, this.apellido1, this.apellido2, this.telefono1, this.telefono2, this.email, required this.lastUpdated, required this.enviado, required this.tratado, required this.deleted}): super._();
  

@override final  String clienteId;
@override final  String? contactoId;
@override final  String? contactoImpGuid;
@override final  String? observaciones;
@override final  String? nombre;
@override final  String? apellido1;
@override final  String? apellido2;
@override final  String? telefono1;
@override final  String? telefono2;
@override final  String? email;
@override final  DateTime lastUpdated;
@override final  bool enviado;
@override final  bool tratado;
@override final  bool deleted;

/// Create a copy of ClienteContacto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteContactoCopyWith<_ClienteContacto> get copyWith => __$ClienteContactoCopyWithImpl<_ClienteContacto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteContacto&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.contactoId, contactoId) || other.contactoId == contactoId)&&(identical(other.contactoImpGuid, contactoImpGuid) || other.contactoImpGuid == contactoImpGuid)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellido1, apellido1) || other.apellido1 == apellido1)&&(identical(other.apellido2, apellido2) || other.apellido2 == apellido2)&&(identical(other.telefono1, telefono1) || other.telefono1 == telefono1)&&(identical(other.telefono2, telefono2) || other.telefono2 == telefono2)&&(identical(other.email, email) || other.email == email)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.enviado, enviado) || other.enviado == enviado)&&(identical(other.tratado, tratado) || other.tratado == tratado)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,contactoId,contactoImpGuid,observaciones,nombre,apellido1,apellido2,telefono1,telefono2,email,lastUpdated,enviado,tratado,deleted);

@override
String toString() {
  return 'ClienteContacto(clienteId: $clienteId, contactoId: $contactoId, contactoImpGuid: $contactoImpGuid, observaciones: $observaciones, nombre: $nombre, apellido1: $apellido1, apellido2: $apellido2, telefono1: $telefono1, telefono2: $telefono2, email: $email, lastUpdated: $lastUpdated, enviado: $enviado, tratado: $tratado, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteContactoCopyWith<$Res> implements $ClienteContactoCopyWith<$Res> {
  factory _$ClienteContactoCopyWith(_ClienteContacto value, $Res Function(_ClienteContacto) _then) = __$ClienteContactoCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String? contactoId, String? contactoImpGuid, String? observaciones, String? nombre, String? apellido1, String? apellido2, String? telefono1, String? telefono2, String? email, DateTime lastUpdated, bool enviado, bool tratado, bool deleted
});




}
/// @nodoc
class __$ClienteContactoCopyWithImpl<$Res>
    implements _$ClienteContactoCopyWith<$Res> {
  __$ClienteContactoCopyWithImpl(this._self, this._then);

  final _ClienteContacto _self;
  final $Res Function(_ClienteContacto) _then;

/// Create a copy of ClienteContacto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? contactoId = freezed,Object? contactoImpGuid = freezed,Object? observaciones = freezed,Object? nombre = freezed,Object? apellido1 = freezed,Object? apellido2 = freezed,Object? telefono1 = freezed,Object? telefono2 = freezed,Object? email = freezed,Object? lastUpdated = null,Object? enviado = null,Object? tratado = null,Object? deleted = null,}) {
  return _then(_ClienteContacto(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,contactoId: freezed == contactoId ? _self.contactoId : contactoId // ignore: cast_nullable_to_non_nullable
as String?,contactoImpGuid: freezed == contactoImpGuid ? _self.contactoImpGuid : contactoImpGuid // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellido1: freezed == apellido1 ? _self.apellido1 : apellido1 // ignore: cast_nullable_to_non_nullable
as String?,apellido2: freezed == apellido2 ? _self.apellido2 : apellido2 // ignore: cast_nullable_to_non_nullable
as String?,telefono1: freezed == telefono1 ? _self.telefono1 : telefono1 // ignore: cast_nullable_to_non_nullable
as String?,telefono2: freezed == telefono2 ? _self.telefono2 : telefono2 // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,enviado: null == enviado ? _self.enviado : enviado // ignore: cast_nullable_to_non_nullable
as bool,tratado: null == tratado ? _self.tratado : tratado // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
