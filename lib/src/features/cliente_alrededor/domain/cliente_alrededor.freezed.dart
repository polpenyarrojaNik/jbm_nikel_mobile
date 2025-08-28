// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_alrededor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteAlrededor {

 String get clienteId; String get markerId; String get nombre; bool get isDireccionFiscal; String? get direccion; String? get codigoPostal; String? get poblacion; String? get provincia; Pais? get pais; bool? get isClientePotencial; double get latitud; double get longitud; Money get ventasAnyoActual; Money get ventasAnyoAnterior; double get porcentajeAbonos; String? get nombreRepresentante1; String? get nombreRepresentante2;
/// Create a copy of ClienteAlrededor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteAlrededorCopyWith<ClienteAlrededor> get copyWith => _$ClienteAlrededorCopyWithImpl<ClienteAlrededor>(this as ClienteAlrededor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteAlrededor&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.markerId, markerId) || other.markerId == markerId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.isDireccionFiscal, isDireccionFiscal) || other.isDireccionFiscal == isDireccionFiscal)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.isClientePotencial, isClientePotencial) || other.isClientePotencial == isClientePotencial)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.ventasAnyoActual, ventasAnyoActual) || other.ventasAnyoActual == ventasAnyoActual)&&(identical(other.ventasAnyoAnterior, ventasAnyoAnterior) || other.ventasAnyoAnterior == ventasAnyoAnterior)&&(identical(other.porcentajeAbonos, porcentajeAbonos) || other.porcentajeAbonos == porcentajeAbonos)&&(identical(other.nombreRepresentante1, nombreRepresentante1) || other.nombreRepresentante1 == nombreRepresentante1)&&(identical(other.nombreRepresentante2, nombreRepresentante2) || other.nombreRepresentante2 == nombreRepresentante2));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,markerId,nombre,isDireccionFiscal,direccion,codigoPostal,poblacion,provincia,pais,isClientePotencial,latitud,longitud,ventasAnyoActual,ventasAnyoAnterior,porcentajeAbonos,nombreRepresentante1,nombreRepresentante2);

@override
String toString() {
  return 'ClienteAlrededor(clienteId: $clienteId, markerId: $markerId, nombre: $nombre, isDireccionFiscal: $isDireccionFiscal, direccion: $direccion, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, isClientePotencial: $isClientePotencial, latitud: $latitud, longitud: $longitud, ventasAnyoActual: $ventasAnyoActual, ventasAnyoAnterior: $ventasAnyoAnterior, porcentajeAbonos: $porcentajeAbonos, nombreRepresentante1: $nombreRepresentante1, nombreRepresentante2: $nombreRepresentante2)';
}


}

/// @nodoc
abstract mixin class $ClienteAlrededorCopyWith<$Res>  {
  factory $ClienteAlrededorCopyWith(ClienteAlrededor value, $Res Function(ClienteAlrededor) _then) = _$ClienteAlrededorCopyWithImpl;
@useResult
$Res call({
 String clienteId, String markerId, String nombre, bool isDireccionFiscal, String? direccion, String? codigoPostal, String? poblacion, String? provincia, Pais? pais, bool? isClientePotencial, double latitud, double longitud, Money ventasAnyoActual, Money ventasAnyoAnterior, double porcentajeAbonos, String? nombreRepresentante1, String? nombreRepresentante2
});


$PaisCopyWith<$Res>? get pais;

}
/// @nodoc
class _$ClienteAlrededorCopyWithImpl<$Res>
    implements $ClienteAlrededorCopyWith<$Res> {
  _$ClienteAlrededorCopyWithImpl(this._self, this._then);

  final ClienteAlrededor _self;
  final $Res Function(ClienteAlrededor) _then;

/// Create a copy of ClienteAlrededor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? markerId = null,Object? nombre = null,Object? isDireccionFiscal = null,Object? direccion = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? pais = freezed,Object? isClientePotencial = freezed,Object? latitud = null,Object? longitud = null,Object? ventasAnyoActual = null,Object? ventasAnyoAnterior = null,Object? porcentajeAbonos = null,Object? nombreRepresentante1 = freezed,Object? nombreRepresentante2 = freezed,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,markerId: null == markerId ? _self.markerId : markerId // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,isDireccionFiscal: null == isDireccionFiscal ? _self.isDireccionFiscal : isDireccionFiscal // ignore: cast_nullable_to_non_nullable
as bool,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,isClientePotencial: freezed == isClientePotencial ? _self.isClientePotencial : isClientePotencial // ignore: cast_nullable_to_non_nullable
as bool?,latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,ventasAnyoActual: null == ventasAnyoActual ? _self.ventasAnyoActual : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
as Money,ventasAnyoAnterior: null == ventasAnyoAnterior ? _self.ventasAnyoAnterior : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
as Money,porcentajeAbonos: null == porcentajeAbonos ? _self.porcentajeAbonos : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
as double,nombreRepresentante1: freezed == nombreRepresentante1 ? _self.nombreRepresentante1 : nombreRepresentante1 // ignore: cast_nullable_to_non_nullable
as String?,nombreRepresentante2: freezed == nombreRepresentante2 ? _self.nombreRepresentante2 : nombreRepresentante2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ClienteAlrededor
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


/// Adds pattern-matching-related methods to [ClienteAlrededor].
extension ClienteAlrededorPatterns on ClienteAlrededor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteAlrededor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteAlrededor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteAlrededor value)  $default,){
final _that = this;
switch (_that) {
case _ClienteAlrededor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteAlrededor value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteAlrededor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String markerId,  String nombre,  bool isDireccionFiscal,  String? direccion,  String? codigoPostal,  String? poblacion,  String? provincia,  Pais? pais,  bool? isClientePotencial,  double latitud,  double longitud,  Money ventasAnyoActual,  Money ventasAnyoAnterior,  double porcentajeAbonos,  String? nombreRepresentante1,  String? nombreRepresentante2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteAlrededor() when $default != null:
return $default(_that.clienteId,_that.markerId,_that.nombre,_that.isDireccionFiscal,_that.direccion,_that.codigoPostal,_that.poblacion,_that.provincia,_that.pais,_that.isClientePotencial,_that.latitud,_that.longitud,_that.ventasAnyoActual,_that.ventasAnyoAnterior,_that.porcentajeAbonos,_that.nombreRepresentante1,_that.nombreRepresentante2);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String markerId,  String nombre,  bool isDireccionFiscal,  String? direccion,  String? codigoPostal,  String? poblacion,  String? provincia,  Pais? pais,  bool? isClientePotencial,  double latitud,  double longitud,  Money ventasAnyoActual,  Money ventasAnyoAnterior,  double porcentajeAbonos,  String? nombreRepresentante1,  String? nombreRepresentante2)  $default,) {final _that = this;
switch (_that) {
case _ClienteAlrededor():
return $default(_that.clienteId,_that.markerId,_that.nombre,_that.isDireccionFiscal,_that.direccion,_that.codigoPostal,_that.poblacion,_that.provincia,_that.pais,_that.isClientePotencial,_that.latitud,_that.longitud,_that.ventasAnyoActual,_that.ventasAnyoAnterior,_that.porcentajeAbonos,_that.nombreRepresentante1,_that.nombreRepresentante2);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String markerId,  String nombre,  bool isDireccionFiscal,  String? direccion,  String? codigoPostal,  String? poblacion,  String? provincia,  Pais? pais,  bool? isClientePotencial,  double latitud,  double longitud,  Money ventasAnyoActual,  Money ventasAnyoAnterior,  double porcentajeAbonos,  String? nombreRepresentante1,  String? nombreRepresentante2)?  $default,) {final _that = this;
switch (_that) {
case _ClienteAlrededor() when $default != null:
return $default(_that.clienteId,_that.markerId,_that.nombre,_that.isDireccionFiscal,_that.direccion,_that.codigoPostal,_that.poblacion,_that.provincia,_that.pais,_that.isClientePotencial,_that.latitud,_that.longitud,_that.ventasAnyoActual,_that.ventasAnyoAnterior,_that.porcentajeAbonos,_that.nombreRepresentante1,_that.nombreRepresentante2);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteAlrededor extends ClienteAlrededor {
  const _ClienteAlrededor({required this.clienteId, required this.markerId, required this.nombre, required this.isDireccionFiscal, this.direccion, this.codigoPostal, this.poblacion, this.provincia, this.pais, this.isClientePotencial, required this.latitud, required this.longitud, required this.ventasAnyoActual, required this.ventasAnyoAnterior, required this.porcentajeAbonos, this.nombreRepresentante1, this.nombreRepresentante2}): super._();
  

@override final  String clienteId;
@override final  String markerId;
@override final  String nombre;
@override final  bool isDireccionFiscal;
@override final  String? direccion;
@override final  String? codigoPostal;
@override final  String? poblacion;
@override final  String? provincia;
@override final  Pais? pais;
@override final  bool? isClientePotencial;
@override final  double latitud;
@override final  double longitud;
@override final  Money ventasAnyoActual;
@override final  Money ventasAnyoAnterior;
@override final  double porcentajeAbonos;
@override final  String? nombreRepresentante1;
@override final  String? nombreRepresentante2;

/// Create a copy of ClienteAlrededor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteAlrededorCopyWith<_ClienteAlrededor> get copyWith => __$ClienteAlrededorCopyWithImpl<_ClienteAlrededor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteAlrededor&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.markerId, markerId) || other.markerId == markerId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.isDireccionFiscal, isDireccionFiscal) || other.isDireccionFiscal == isDireccionFiscal)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.isClientePotencial, isClientePotencial) || other.isClientePotencial == isClientePotencial)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.ventasAnyoActual, ventasAnyoActual) || other.ventasAnyoActual == ventasAnyoActual)&&(identical(other.ventasAnyoAnterior, ventasAnyoAnterior) || other.ventasAnyoAnterior == ventasAnyoAnterior)&&(identical(other.porcentajeAbonos, porcentajeAbonos) || other.porcentajeAbonos == porcentajeAbonos)&&(identical(other.nombreRepresentante1, nombreRepresentante1) || other.nombreRepresentante1 == nombreRepresentante1)&&(identical(other.nombreRepresentante2, nombreRepresentante2) || other.nombreRepresentante2 == nombreRepresentante2));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,markerId,nombre,isDireccionFiscal,direccion,codigoPostal,poblacion,provincia,pais,isClientePotencial,latitud,longitud,ventasAnyoActual,ventasAnyoAnterior,porcentajeAbonos,nombreRepresentante1,nombreRepresentante2);

@override
String toString() {
  return 'ClienteAlrededor(clienteId: $clienteId, markerId: $markerId, nombre: $nombre, isDireccionFiscal: $isDireccionFiscal, direccion: $direccion, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, isClientePotencial: $isClientePotencial, latitud: $latitud, longitud: $longitud, ventasAnyoActual: $ventasAnyoActual, ventasAnyoAnterior: $ventasAnyoAnterior, porcentajeAbonos: $porcentajeAbonos, nombreRepresentante1: $nombreRepresentante1, nombreRepresentante2: $nombreRepresentante2)';
}


}

/// @nodoc
abstract mixin class _$ClienteAlrededorCopyWith<$Res> implements $ClienteAlrededorCopyWith<$Res> {
  factory _$ClienteAlrededorCopyWith(_ClienteAlrededor value, $Res Function(_ClienteAlrededor) _then) = __$ClienteAlrededorCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String markerId, String nombre, bool isDireccionFiscal, String? direccion, String? codigoPostal, String? poblacion, String? provincia, Pais? pais, bool? isClientePotencial, double latitud, double longitud, Money ventasAnyoActual, Money ventasAnyoAnterior, double porcentajeAbonos, String? nombreRepresentante1, String? nombreRepresentante2
});


@override $PaisCopyWith<$Res>? get pais;

}
/// @nodoc
class __$ClienteAlrededorCopyWithImpl<$Res>
    implements _$ClienteAlrededorCopyWith<$Res> {
  __$ClienteAlrededorCopyWithImpl(this._self, this._then);

  final _ClienteAlrededor _self;
  final $Res Function(_ClienteAlrededor) _then;

/// Create a copy of ClienteAlrededor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? markerId = null,Object? nombre = null,Object? isDireccionFiscal = null,Object? direccion = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? pais = freezed,Object? isClientePotencial = freezed,Object? latitud = null,Object? longitud = null,Object? ventasAnyoActual = null,Object? ventasAnyoAnterior = null,Object? porcentajeAbonos = null,Object? nombreRepresentante1 = freezed,Object? nombreRepresentante2 = freezed,}) {
  return _then(_ClienteAlrededor(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,markerId: null == markerId ? _self.markerId : markerId // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,isDireccionFiscal: null == isDireccionFiscal ? _self.isDireccionFiscal : isDireccionFiscal // ignore: cast_nullable_to_non_nullable
as bool,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,isClientePotencial: freezed == isClientePotencial ? _self.isClientePotencial : isClientePotencial // ignore: cast_nullable_to_non_nullable
as bool?,latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,ventasAnyoActual: null == ventasAnyoActual ? _self.ventasAnyoActual : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
as Money,ventasAnyoAnterior: null == ventasAnyoAnterior ? _self.ventasAnyoAnterior : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
as Money,porcentajeAbonos: null == porcentajeAbonos ? _self.porcentajeAbonos : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
as double,nombreRepresentante1: freezed == nombreRepresentante1 ? _self.nombreRepresentante1 : nombreRepresentante1 // ignore: cast_nullable_to_non_nullable
as String?,nombreRepresentante2: freezed == nombreRepresentante2 ? _self.nombreRepresentante2 : nombreRepresentante2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ClienteAlrededor
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
