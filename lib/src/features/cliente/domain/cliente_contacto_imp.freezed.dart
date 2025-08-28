// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_contacto_imp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteContactoImp {

 String get id; DateTime get fecha; String get usuarioId; String get clienteId; String? get contactoId; String? get observaciones; String? get nombre; String? get apellido1; String? get apellido2; String? get telefono1; String? get telefono2; String? get email; bool get enviado; bool get borrar;
/// Create a copy of ClienteContactoImp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteContactoImpCopyWith<ClienteContactoImp> get copyWith => _$ClienteContactoImpCopyWithImpl<ClienteContactoImp>(this as ClienteContactoImp, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteContactoImp&&(identical(other.id, id) || other.id == id)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.contactoId, contactoId) || other.contactoId == contactoId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellido1, apellido1) || other.apellido1 == apellido1)&&(identical(other.apellido2, apellido2) || other.apellido2 == apellido2)&&(identical(other.telefono1, telefono1) || other.telefono1 == telefono1)&&(identical(other.telefono2, telefono2) || other.telefono2 == telefono2)&&(identical(other.email, email) || other.email == email)&&(identical(other.enviado, enviado) || other.enviado == enviado)&&(identical(other.borrar, borrar) || other.borrar == borrar));
}


@override
int get hashCode => Object.hash(runtimeType,id,fecha,usuarioId,clienteId,contactoId,observaciones,nombre,apellido1,apellido2,telefono1,telefono2,email,enviado,borrar);

@override
String toString() {
  return 'ClienteContactoImp(id: $id, fecha: $fecha, usuarioId: $usuarioId, clienteId: $clienteId, contactoId: $contactoId, observaciones: $observaciones, nombre: $nombre, apellido1: $apellido1, apellido2: $apellido2, telefono1: $telefono1, telefono2: $telefono2, email: $email, enviado: $enviado, borrar: $borrar)';
}


}

/// @nodoc
abstract mixin class $ClienteContactoImpCopyWith<$Res>  {
  factory $ClienteContactoImpCopyWith(ClienteContactoImp value, $Res Function(ClienteContactoImp) _then) = _$ClienteContactoImpCopyWithImpl;
@useResult
$Res call({
 String id, DateTime fecha, String usuarioId, String clienteId, String? contactoId, String? observaciones, String? nombre, String? apellido1, String? apellido2, String? telefono1, String? telefono2, String? email, bool enviado, bool borrar
});




}
/// @nodoc
class _$ClienteContactoImpCopyWithImpl<$Res>
    implements $ClienteContactoImpCopyWith<$Res> {
  _$ClienteContactoImpCopyWithImpl(this._self, this._then);

  final ClienteContactoImp _self;
  final $Res Function(ClienteContactoImp) _then;

/// Create a copy of ClienteContactoImp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fecha = null,Object? usuarioId = null,Object? clienteId = null,Object? contactoId = freezed,Object? observaciones = freezed,Object? nombre = freezed,Object? apellido1 = freezed,Object? apellido2 = freezed,Object? telefono1 = freezed,Object? telefono2 = freezed,Object? email = freezed,Object? enviado = null,Object? borrar = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,contactoId: freezed == contactoId ? _self.contactoId : contactoId // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellido1: freezed == apellido1 ? _self.apellido1 : apellido1 // ignore: cast_nullable_to_non_nullable
as String?,apellido2: freezed == apellido2 ? _self.apellido2 : apellido2 // ignore: cast_nullable_to_non_nullable
as String?,telefono1: freezed == telefono1 ? _self.telefono1 : telefono1 // ignore: cast_nullable_to_non_nullable
as String?,telefono2: freezed == telefono2 ? _self.telefono2 : telefono2 // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,enviado: null == enviado ? _self.enviado : enviado // ignore: cast_nullable_to_non_nullable
as bool,borrar: null == borrar ? _self.borrar : borrar // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteContactoImp].
extension ClienteContactoImpPatterns on ClienteContactoImp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteContactoImp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteContactoImp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteContactoImp value)  $default,){
final _that = this;
switch (_that) {
case _ClienteContactoImp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteContactoImp value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteContactoImp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime fecha,  String usuarioId,  String clienteId,  String? contactoId,  String? observaciones,  String? nombre,  String? apellido1,  String? apellido2,  String? telefono1,  String? telefono2,  String? email,  bool enviado,  bool borrar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteContactoImp() when $default != null:
return $default(_that.id,_that.fecha,_that.usuarioId,_that.clienteId,_that.contactoId,_that.observaciones,_that.nombre,_that.apellido1,_that.apellido2,_that.telefono1,_that.telefono2,_that.email,_that.enviado,_that.borrar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime fecha,  String usuarioId,  String clienteId,  String? contactoId,  String? observaciones,  String? nombre,  String? apellido1,  String? apellido2,  String? telefono1,  String? telefono2,  String? email,  bool enviado,  bool borrar)  $default,) {final _that = this;
switch (_that) {
case _ClienteContactoImp():
return $default(_that.id,_that.fecha,_that.usuarioId,_that.clienteId,_that.contactoId,_that.observaciones,_that.nombre,_that.apellido1,_that.apellido2,_that.telefono1,_that.telefono2,_that.email,_that.enviado,_that.borrar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime fecha,  String usuarioId,  String clienteId,  String? contactoId,  String? observaciones,  String? nombre,  String? apellido1,  String? apellido2,  String? telefono1,  String? telefono2,  String? email,  bool enviado,  bool borrar)?  $default,) {final _that = this;
switch (_that) {
case _ClienteContactoImp() when $default != null:
return $default(_that.id,_that.fecha,_that.usuarioId,_that.clienteId,_that.contactoId,_that.observaciones,_that.nombre,_that.apellido1,_that.apellido2,_that.telefono1,_that.telefono2,_that.email,_that.enviado,_that.borrar);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteContactoImp extends ClienteContactoImp {
  const _ClienteContactoImp({required this.id, required this.fecha, required this.usuarioId, required this.clienteId, required this.contactoId, this.observaciones, this.nombre, this.apellido1, this.apellido2, this.telefono1, this.telefono2, this.email, required this.enviado, required this.borrar}): super._();
  

@override final  String id;
@override final  DateTime fecha;
@override final  String usuarioId;
@override final  String clienteId;
@override final  String? contactoId;
@override final  String? observaciones;
@override final  String? nombre;
@override final  String? apellido1;
@override final  String? apellido2;
@override final  String? telefono1;
@override final  String? telefono2;
@override final  String? email;
@override final  bool enviado;
@override final  bool borrar;

/// Create a copy of ClienteContactoImp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteContactoImpCopyWith<_ClienteContactoImp> get copyWith => __$ClienteContactoImpCopyWithImpl<_ClienteContactoImp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteContactoImp&&(identical(other.id, id) || other.id == id)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.contactoId, contactoId) || other.contactoId == contactoId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellido1, apellido1) || other.apellido1 == apellido1)&&(identical(other.apellido2, apellido2) || other.apellido2 == apellido2)&&(identical(other.telefono1, telefono1) || other.telefono1 == telefono1)&&(identical(other.telefono2, telefono2) || other.telefono2 == telefono2)&&(identical(other.email, email) || other.email == email)&&(identical(other.enviado, enviado) || other.enviado == enviado)&&(identical(other.borrar, borrar) || other.borrar == borrar));
}


@override
int get hashCode => Object.hash(runtimeType,id,fecha,usuarioId,clienteId,contactoId,observaciones,nombre,apellido1,apellido2,telefono1,telefono2,email,enviado,borrar);

@override
String toString() {
  return 'ClienteContactoImp(id: $id, fecha: $fecha, usuarioId: $usuarioId, clienteId: $clienteId, contactoId: $contactoId, observaciones: $observaciones, nombre: $nombre, apellido1: $apellido1, apellido2: $apellido2, telefono1: $telefono1, telefono2: $telefono2, email: $email, enviado: $enviado, borrar: $borrar)';
}


}

/// @nodoc
abstract mixin class _$ClienteContactoImpCopyWith<$Res> implements $ClienteContactoImpCopyWith<$Res> {
  factory _$ClienteContactoImpCopyWith(_ClienteContactoImp value, $Res Function(_ClienteContactoImp) _then) = __$ClienteContactoImpCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime fecha, String usuarioId, String clienteId, String? contactoId, String? observaciones, String? nombre, String? apellido1, String? apellido2, String? telefono1, String? telefono2, String? email, bool enviado, bool borrar
});




}
/// @nodoc
class __$ClienteContactoImpCopyWithImpl<$Res>
    implements _$ClienteContactoImpCopyWith<$Res> {
  __$ClienteContactoImpCopyWithImpl(this._self, this._then);

  final _ClienteContactoImp _self;
  final $Res Function(_ClienteContactoImp) _then;

/// Create a copy of ClienteContactoImp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fecha = null,Object? usuarioId = null,Object? clienteId = null,Object? contactoId = freezed,Object? observaciones = freezed,Object? nombre = freezed,Object? apellido1 = freezed,Object? apellido2 = freezed,Object? telefono1 = freezed,Object? telefono2 = freezed,Object? email = freezed,Object? enviado = null,Object? borrar = null,}) {
  return _then(_ClienteContactoImp(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,contactoId: freezed == contactoId ? _self.contactoId : contactoId // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellido1: freezed == apellido1 ? _self.apellido1 : apellido1 // ignore: cast_nullable_to_non_nullable
as String?,apellido2: freezed == apellido2 ? _self.apellido2 : apellido2 // ignore: cast_nullable_to_non_nullable
as String?,telefono1: freezed == telefono1 ? _self.telefono1 : telefono1 // ignore: cast_nullable_to_non_nullable
as String?,telefono2: freezed == telefono2 ? _self.telefono2 : telefono2 // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,enviado: null == enviado ? _self.enviado : enviado // ignore: cast_nullable_to_non_nullable
as bool,borrar: null == borrar ? _self.borrar : borrar // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
