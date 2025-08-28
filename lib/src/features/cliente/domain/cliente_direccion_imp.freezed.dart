// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_direccion_imp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteDireccionImp {

 String get id; DateTime get fecha; String get usuarioId; String get clienteId; String? get direccionId; String? get nombre; String? get direccion1; String? get direccion2; String? get codigoPostal; String? get poblacion; String? get provincia; String? get telefono; Pais? get pais; bool get enviada; bool get borrar;
/// Create a copy of ClienteDireccionImp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteDireccionImpCopyWith<ClienteDireccionImp> get copyWith => _$ClienteDireccionImpCopyWithImpl<ClienteDireccionImp>(this as ClienteDireccionImp, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteDireccionImp&&(identical(other.id, id) || other.id == id)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion1, direccion1) || other.direccion1 == direccion1)&&(identical(other.direccion2, direccion2) || other.direccion2 == direccion2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.telefono, telefono) || other.telefono == telefono)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.borrar, borrar) || other.borrar == borrar));
}


@override
int get hashCode => Object.hash(runtimeType,id,fecha,usuarioId,clienteId,direccionId,nombre,direccion1,direccion2,codigoPostal,poblacion,provincia,telefono,pais,enviada,borrar);

@override
String toString() {
  return 'ClienteDireccionImp(id: $id, fecha: $fecha, usuarioId: $usuarioId, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, telefono: $telefono, pais: $pais, enviada: $enviada, borrar: $borrar)';
}


}

/// @nodoc
abstract mixin class $ClienteDireccionImpCopyWith<$Res>  {
  factory $ClienteDireccionImpCopyWith(ClienteDireccionImp value, $Res Function(ClienteDireccionImp) _then) = _$ClienteDireccionImpCopyWithImpl;
@useResult
$Res call({
 String id, DateTime fecha, String usuarioId, String clienteId, String? direccionId, String? nombre, String? direccion1, String? direccion2, String? codigoPostal, String? poblacion, String? provincia, String? telefono, Pais? pais, bool enviada, bool borrar
});


$PaisCopyWith<$Res>? get pais;

}
/// @nodoc
class _$ClienteDireccionImpCopyWithImpl<$Res>
    implements $ClienteDireccionImpCopyWith<$Res> {
  _$ClienteDireccionImpCopyWithImpl(this._self, this._then);

  final ClienteDireccionImp _self;
  final $Res Function(ClienteDireccionImp) _then;

/// Create a copy of ClienteDireccionImp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fecha = null,Object? usuarioId = null,Object? clienteId = null,Object? direccionId = freezed,Object? nombre = freezed,Object? direccion1 = freezed,Object? direccion2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? telefono = freezed,Object? pais = freezed,Object? enviada = null,Object? borrar = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccion1: freezed == direccion1 ? _self.direccion1 : direccion1 // ignore: cast_nullable_to_non_nullable
as String?,direccion2: freezed == direccion2 ? _self.direccion2 : direccion2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,telefono: freezed == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as bool,borrar: null == borrar ? _self.borrar : borrar // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ClienteDireccionImp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get pais {
    if (_self.pais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.pais!, (value) {
    return _then(_self.copyWith(pais: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteDireccionImp].
extension ClienteDireccionImpPatterns on ClienteDireccionImp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteDireccionImp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteDireccionImp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteDireccionImp value)  $default,){
final _that = this;
switch (_that) {
case _ClienteDireccionImp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteDireccionImp value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteDireccionImp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime fecha,  String usuarioId,  String clienteId,  String? direccionId,  String? nombre,  String? direccion1,  String? direccion2,  String? codigoPostal,  String? poblacion,  String? provincia,  String? telefono,  Pais? pais,  bool enviada,  bool borrar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteDireccionImp() when $default != null:
return $default(_that.id,_that.fecha,_that.usuarioId,_that.clienteId,_that.direccionId,_that.nombre,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.telefono,_that.pais,_that.enviada,_that.borrar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime fecha,  String usuarioId,  String clienteId,  String? direccionId,  String? nombre,  String? direccion1,  String? direccion2,  String? codigoPostal,  String? poblacion,  String? provincia,  String? telefono,  Pais? pais,  bool enviada,  bool borrar)  $default,) {final _that = this;
switch (_that) {
case _ClienteDireccionImp():
return $default(_that.id,_that.fecha,_that.usuarioId,_that.clienteId,_that.direccionId,_that.nombre,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.telefono,_that.pais,_that.enviada,_that.borrar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime fecha,  String usuarioId,  String clienteId,  String? direccionId,  String? nombre,  String? direccion1,  String? direccion2,  String? codigoPostal,  String? poblacion,  String? provincia,  String? telefono,  Pais? pais,  bool enviada,  bool borrar)?  $default,) {final _that = this;
switch (_that) {
case _ClienteDireccionImp() when $default != null:
return $default(_that.id,_that.fecha,_that.usuarioId,_that.clienteId,_that.direccionId,_that.nombre,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.telefono,_that.pais,_that.enviada,_that.borrar);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteDireccionImp extends ClienteDireccionImp {
  const _ClienteDireccionImp({required this.id, required this.fecha, required this.usuarioId, required this.clienteId, required this.direccionId, this.nombre, this.direccion1, this.direccion2, this.codigoPostal, this.poblacion, this.provincia, this.telefono, this.pais, required this.enviada, required this.borrar}): super._();
  

@override final  String id;
@override final  DateTime fecha;
@override final  String usuarioId;
@override final  String clienteId;
@override final  String? direccionId;
@override final  String? nombre;
@override final  String? direccion1;
@override final  String? direccion2;
@override final  String? codigoPostal;
@override final  String? poblacion;
@override final  String? provincia;
@override final  String? telefono;
@override final  Pais? pais;
@override final  bool enviada;
@override final  bool borrar;

/// Create a copy of ClienteDireccionImp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteDireccionImpCopyWith<_ClienteDireccionImp> get copyWith => __$ClienteDireccionImpCopyWithImpl<_ClienteDireccionImp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteDireccionImp&&(identical(other.id, id) || other.id == id)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion1, direccion1) || other.direccion1 == direccion1)&&(identical(other.direccion2, direccion2) || other.direccion2 == direccion2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.telefono, telefono) || other.telefono == telefono)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.borrar, borrar) || other.borrar == borrar));
}


@override
int get hashCode => Object.hash(runtimeType,id,fecha,usuarioId,clienteId,direccionId,nombre,direccion1,direccion2,codigoPostal,poblacion,provincia,telefono,pais,enviada,borrar);

@override
String toString() {
  return 'ClienteDireccionImp(id: $id, fecha: $fecha, usuarioId: $usuarioId, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, telefono: $telefono, pais: $pais, enviada: $enviada, borrar: $borrar)';
}


}

/// @nodoc
abstract mixin class _$ClienteDireccionImpCopyWith<$Res> implements $ClienteDireccionImpCopyWith<$Res> {
  factory _$ClienteDireccionImpCopyWith(_ClienteDireccionImp value, $Res Function(_ClienteDireccionImp) _then) = __$ClienteDireccionImpCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime fecha, String usuarioId, String clienteId, String? direccionId, String? nombre, String? direccion1, String? direccion2, String? codigoPostal, String? poblacion, String? provincia, String? telefono, Pais? pais, bool enviada, bool borrar
});


@override $PaisCopyWith<$Res>? get pais;

}
/// @nodoc
class __$ClienteDireccionImpCopyWithImpl<$Res>
    implements _$ClienteDireccionImpCopyWith<$Res> {
  __$ClienteDireccionImpCopyWithImpl(this._self, this._then);

  final _ClienteDireccionImp _self;
  final $Res Function(_ClienteDireccionImp) _then;

/// Create a copy of ClienteDireccionImp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fecha = null,Object? usuarioId = null,Object? clienteId = null,Object? direccionId = freezed,Object? nombre = freezed,Object? direccion1 = freezed,Object? direccion2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? telefono = freezed,Object? pais = freezed,Object? enviada = null,Object? borrar = null,}) {
  return _then(_ClienteDireccionImp(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccion1: freezed == direccion1 ? _self.direccion1 : direccion1 // ignore: cast_nullable_to_non_nullable
as String?,direccion2: freezed == direccion2 ? _self.direccion2 : direccion2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,telefono: freezed == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as bool,borrar: null == borrar ? _self.borrar : borrar // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ClienteDireccionImp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get pais {
    if (_self.pais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.pais!, (value) {
    return _then(_self.copyWith(pais: value));
  });
}
}

// dart format on
