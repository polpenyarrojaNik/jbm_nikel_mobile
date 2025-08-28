// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expedicion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Expedicion {

 String? get empresaId; String? get pedidoVentaId; String? get usuarioId; DateTime get pedidoVentaDate; String? get clienteId; String? get direccionId; String get nombreCliente; String? get codigoPostal; String? get poblacion; String? get provincia; Pais? get pais; Divisa get divisa; Money? get baseImponible; PedidoVentaEstado? get pedidoVentaEstado; bool? get oferta; String? get pedidoAppId; int get numLineas; TrackingEstado get trackingEstado; String get albaranId; String? get trackId; String? get agencia; DateTime get fechaAlbaran; bool get enviada; bool get tratada; DateTime get lastUpdated; bool get deleted;
/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpedicionCopyWith<Expedicion> get copyWith => _$ExpedicionCopyWithImpl<Expedicion>(this as Expedicion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Expedicion&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.pedidoVentaDate, pedidoVentaDate) || other.pedidoVentaDate == pedidoVentaDate)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.divisa, divisa) || other.divisa == divisa)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.pedidoVentaEstado, pedidoVentaEstado) || other.pedidoVentaEstado == pedidoVentaEstado)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.pedidoAppId, pedidoAppId) || other.pedidoAppId == pedidoAppId)&&(identical(other.numLineas, numLineas) || other.numLineas == numLineas)&&(identical(other.trackingEstado, trackingEstado) || other.trackingEstado == trackingEstado)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.agencia, agencia) || other.agencia == agencia)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.tratada, tratada) || other.tratada == tratada)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hashAll([runtimeType,empresaId,pedidoVentaId,usuarioId,pedidoVentaDate,clienteId,direccionId,nombreCliente,codigoPostal,poblacion,provincia,pais,divisa,baseImponible,pedidoVentaEstado,oferta,pedidoAppId,numLineas,trackingEstado,albaranId,trackId,agencia,fechaAlbaran,enviada,tratada,lastUpdated,deleted]);

@override
String toString() {
  return 'Expedicion(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, usuarioId: $usuarioId, pedidoVentaDate: $pedidoVentaDate, clienteId: $clienteId, direccionId: $direccionId, nombreCliente: $nombreCliente, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, divisa: $divisa, baseImponible: $baseImponible, pedidoVentaEstado: $pedidoVentaEstado, oferta: $oferta, pedidoAppId: $pedidoAppId, numLineas: $numLineas, trackingEstado: $trackingEstado, albaranId: $albaranId, trackId: $trackId, agencia: $agencia, fechaAlbaran: $fechaAlbaran, enviada: $enviada, tratada: $tratada, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ExpedicionCopyWith<$Res>  {
  factory $ExpedicionCopyWith(Expedicion value, $Res Function(Expedicion) _then) = _$ExpedicionCopyWithImpl;
@useResult
$Res call({
 String? empresaId, String? pedidoVentaId, String? usuarioId, DateTime pedidoVentaDate, String? clienteId, String? direccionId, String nombreCliente, String? codigoPostal, String? poblacion, String? provincia, Pais? pais, Divisa divisa, Money? baseImponible, PedidoVentaEstado? pedidoVentaEstado, bool? oferta, String? pedidoAppId, int numLineas, TrackingEstado trackingEstado, String albaranId, String? trackId, String? agencia, DateTime fechaAlbaran, bool enviada, bool tratada, DateTime lastUpdated, bool deleted
});


$PaisCopyWith<$Res>? get pais;$DivisaCopyWith<$Res> get divisa;$PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado;$TrackingEstadoCopyWith<$Res> get trackingEstado;

}
/// @nodoc
class _$ExpedicionCopyWithImpl<$Res>
    implements $ExpedicionCopyWith<$Res> {
  _$ExpedicionCopyWithImpl(this._self, this._then);

  final Expedicion _self;
  final $Res Function(Expedicion) _then;

/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = freezed,Object? pedidoVentaId = freezed,Object? usuarioId = freezed,Object? pedidoVentaDate = null,Object? clienteId = freezed,Object? direccionId = freezed,Object? nombreCliente = null,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? pais = freezed,Object? divisa = null,Object? baseImponible = freezed,Object? pedidoVentaEstado = freezed,Object? oferta = freezed,Object? pedidoAppId = freezed,Object? numLineas = null,Object? trackingEstado = null,Object? albaranId = null,Object? trackId = freezed,Object? agencia = freezed,Object? fechaAlbaran = null,Object? enviada = null,Object? tratada = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaId: freezed == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String?,usuarioId: freezed == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaDate: null == pedidoVentaDate ? _self.pedidoVentaDate : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String?,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,divisa: null == divisa ? _self.divisa : divisa // ignore: cast_nullable_to_non_nullable
as Divisa,baseImponible: freezed == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as Money?,pedidoVentaEstado: freezed == pedidoVentaEstado ? _self.pedidoVentaEstado : pedidoVentaEstado // ignore: cast_nullable_to_non_nullable
as PedidoVentaEstado?,oferta: freezed == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as bool?,pedidoAppId: freezed == pedidoAppId ? _self.pedidoAppId : pedidoAppId // ignore: cast_nullable_to_non_nullable
as String?,numLineas: null == numLineas ? _self.numLineas : numLineas // ignore: cast_nullable_to_non_nullable
as int,trackingEstado: null == trackingEstado ? _self.trackingEstado : trackingEstado // ignore: cast_nullable_to_non_nullable
as TrackingEstado,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,agencia: freezed == agencia ? _self.agencia : agencia // ignore: cast_nullable_to_non_nullable
as String?,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as bool,tratada: null == tratada ? _self.tratada : tratada // ignore: cast_nullable_to_non_nullable
as bool,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Expedicion
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
}/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisaCopyWith<$Res> get divisa {
  
  return $DivisaCopyWith<$Res>(_self.divisa, (value) {
    return _then(_self.copyWith(divisa: value));
  });
}/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado {
    if (_self.pedidoVentaEstado == null) {
    return null;
  }

  return $PedidoVentaEstadoCopyWith<$Res>(_self.pedidoVentaEstado!, (value) {
    return _then(_self.copyWith(pedidoVentaEstado: value));
  });
}/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrackingEstadoCopyWith<$Res> get trackingEstado {
  
  return $TrackingEstadoCopyWith<$Res>(_self.trackingEstado, (value) {
    return _then(_self.copyWith(trackingEstado: value));
  });
}
}


/// Adds pattern-matching-related methods to [Expedicion].
extension ExpedicionPatterns on Expedicion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Expedicion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Expedicion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Expedicion value)  $default,){
final _that = this;
switch (_that) {
case _Expedicion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Expedicion value)?  $default,){
final _that = this;
switch (_that) {
case _Expedicion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? empresaId,  String? pedidoVentaId,  String? usuarioId,  DateTime pedidoVentaDate,  String? clienteId,  String? direccionId,  String nombreCliente,  String? codigoPostal,  String? poblacion,  String? provincia,  Pais? pais,  Divisa divisa,  Money? baseImponible,  PedidoVentaEstado? pedidoVentaEstado,  bool? oferta,  String? pedidoAppId,  int numLineas,  TrackingEstado trackingEstado,  String albaranId,  String? trackId,  String? agencia,  DateTime fechaAlbaran,  bool enviada,  bool tratada,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Expedicion() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.usuarioId,_that.pedidoVentaDate,_that.clienteId,_that.direccionId,_that.nombreCliente,_that.codigoPostal,_that.poblacion,_that.provincia,_that.pais,_that.divisa,_that.baseImponible,_that.pedidoVentaEstado,_that.oferta,_that.pedidoAppId,_that.numLineas,_that.trackingEstado,_that.albaranId,_that.trackId,_that.agencia,_that.fechaAlbaran,_that.enviada,_that.tratada,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? empresaId,  String? pedidoVentaId,  String? usuarioId,  DateTime pedidoVentaDate,  String? clienteId,  String? direccionId,  String nombreCliente,  String? codigoPostal,  String? poblacion,  String? provincia,  Pais? pais,  Divisa divisa,  Money? baseImponible,  PedidoVentaEstado? pedidoVentaEstado,  bool? oferta,  String? pedidoAppId,  int numLineas,  TrackingEstado trackingEstado,  String albaranId,  String? trackId,  String? agencia,  DateTime fechaAlbaran,  bool enviada,  bool tratada,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _Expedicion():
return $default(_that.empresaId,_that.pedidoVentaId,_that.usuarioId,_that.pedidoVentaDate,_that.clienteId,_that.direccionId,_that.nombreCliente,_that.codigoPostal,_that.poblacion,_that.provincia,_that.pais,_that.divisa,_that.baseImponible,_that.pedidoVentaEstado,_that.oferta,_that.pedidoAppId,_that.numLineas,_that.trackingEstado,_that.albaranId,_that.trackId,_that.agencia,_that.fechaAlbaran,_that.enviada,_that.tratada,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? empresaId,  String? pedidoVentaId,  String? usuarioId,  DateTime pedidoVentaDate,  String? clienteId,  String? direccionId,  String nombreCliente,  String? codigoPostal,  String? poblacion,  String? provincia,  Pais? pais,  Divisa divisa,  Money? baseImponible,  PedidoVentaEstado? pedidoVentaEstado,  bool? oferta,  String? pedidoAppId,  int numLineas,  TrackingEstado trackingEstado,  String albaranId,  String? trackId,  String? agencia,  DateTime fechaAlbaran,  bool enviada,  bool tratada,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _Expedicion() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.usuarioId,_that.pedidoVentaDate,_that.clienteId,_that.direccionId,_that.nombreCliente,_that.codigoPostal,_that.poblacion,_that.provincia,_that.pais,_that.divisa,_that.baseImponible,_that.pedidoVentaEstado,_that.oferta,_that.pedidoAppId,_that.numLineas,_that.trackingEstado,_that.albaranId,_that.trackId,_that.agencia,_that.fechaAlbaran,_that.enviada,_that.tratada,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _Expedicion extends Expedicion {
  const _Expedicion({this.empresaId, this.pedidoVentaId, this.usuarioId, required this.pedidoVentaDate, this.clienteId, this.direccionId, required this.nombreCliente, this.codigoPostal, this.poblacion, this.provincia, this.pais, required this.divisa, this.baseImponible, this.pedidoVentaEstado, this.oferta, this.pedidoAppId, required this.numLineas, required this.trackingEstado, required this.albaranId, required this.trackId, this.agencia, required this.fechaAlbaran, required this.enviada, required this.tratada, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String? empresaId;
@override final  String? pedidoVentaId;
@override final  String? usuarioId;
@override final  DateTime pedidoVentaDate;
@override final  String? clienteId;
@override final  String? direccionId;
@override final  String nombreCliente;
@override final  String? codigoPostal;
@override final  String? poblacion;
@override final  String? provincia;
@override final  Pais? pais;
@override final  Divisa divisa;
@override final  Money? baseImponible;
@override final  PedidoVentaEstado? pedidoVentaEstado;
@override final  bool? oferta;
@override final  String? pedidoAppId;
@override final  int numLineas;
@override final  TrackingEstado trackingEstado;
@override final  String albaranId;
@override final  String? trackId;
@override final  String? agencia;
@override final  DateTime fechaAlbaran;
@override final  bool enviada;
@override final  bool tratada;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpedicionCopyWith<_Expedicion> get copyWith => __$ExpedicionCopyWithImpl<_Expedicion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Expedicion&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.pedidoVentaDate, pedidoVentaDate) || other.pedidoVentaDate == pedidoVentaDate)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.divisa, divisa) || other.divisa == divisa)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.pedidoVentaEstado, pedidoVentaEstado) || other.pedidoVentaEstado == pedidoVentaEstado)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.pedidoAppId, pedidoAppId) || other.pedidoAppId == pedidoAppId)&&(identical(other.numLineas, numLineas) || other.numLineas == numLineas)&&(identical(other.trackingEstado, trackingEstado) || other.trackingEstado == trackingEstado)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.agencia, agencia) || other.agencia == agencia)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.tratada, tratada) || other.tratada == tratada)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hashAll([runtimeType,empresaId,pedidoVentaId,usuarioId,pedidoVentaDate,clienteId,direccionId,nombreCliente,codigoPostal,poblacion,provincia,pais,divisa,baseImponible,pedidoVentaEstado,oferta,pedidoAppId,numLineas,trackingEstado,albaranId,trackId,agencia,fechaAlbaran,enviada,tratada,lastUpdated,deleted]);

@override
String toString() {
  return 'Expedicion(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, usuarioId: $usuarioId, pedidoVentaDate: $pedidoVentaDate, clienteId: $clienteId, direccionId: $direccionId, nombreCliente: $nombreCliente, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, divisa: $divisa, baseImponible: $baseImponible, pedidoVentaEstado: $pedidoVentaEstado, oferta: $oferta, pedidoAppId: $pedidoAppId, numLineas: $numLineas, trackingEstado: $trackingEstado, albaranId: $albaranId, trackId: $trackId, agencia: $agencia, fechaAlbaran: $fechaAlbaran, enviada: $enviada, tratada: $tratada, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ExpedicionCopyWith<$Res> implements $ExpedicionCopyWith<$Res> {
  factory _$ExpedicionCopyWith(_Expedicion value, $Res Function(_Expedicion) _then) = __$ExpedicionCopyWithImpl;
@override @useResult
$Res call({
 String? empresaId, String? pedidoVentaId, String? usuarioId, DateTime pedidoVentaDate, String? clienteId, String? direccionId, String nombreCliente, String? codigoPostal, String? poblacion, String? provincia, Pais? pais, Divisa divisa, Money? baseImponible, PedidoVentaEstado? pedidoVentaEstado, bool? oferta, String? pedidoAppId, int numLineas, TrackingEstado trackingEstado, String albaranId, String? trackId, String? agencia, DateTime fechaAlbaran, bool enviada, bool tratada, DateTime lastUpdated, bool deleted
});


@override $PaisCopyWith<$Res>? get pais;@override $DivisaCopyWith<$Res> get divisa;@override $PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado;@override $TrackingEstadoCopyWith<$Res> get trackingEstado;

}
/// @nodoc
class __$ExpedicionCopyWithImpl<$Res>
    implements _$ExpedicionCopyWith<$Res> {
  __$ExpedicionCopyWithImpl(this._self, this._then);

  final _Expedicion _self;
  final $Res Function(_Expedicion) _then;

/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = freezed,Object? pedidoVentaId = freezed,Object? usuarioId = freezed,Object? pedidoVentaDate = null,Object? clienteId = freezed,Object? direccionId = freezed,Object? nombreCliente = null,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? pais = freezed,Object? divisa = null,Object? baseImponible = freezed,Object? pedidoVentaEstado = freezed,Object? oferta = freezed,Object? pedidoAppId = freezed,Object? numLineas = null,Object? trackingEstado = null,Object? albaranId = null,Object? trackId = freezed,Object? agencia = freezed,Object? fechaAlbaran = null,Object? enviada = null,Object? tratada = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_Expedicion(
empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaId: freezed == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String?,usuarioId: freezed == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaDate: null == pedidoVentaDate ? _self.pedidoVentaDate : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String?,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,divisa: null == divisa ? _self.divisa : divisa // ignore: cast_nullable_to_non_nullable
as Divisa,baseImponible: freezed == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as Money?,pedidoVentaEstado: freezed == pedidoVentaEstado ? _self.pedidoVentaEstado : pedidoVentaEstado // ignore: cast_nullable_to_non_nullable
as PedidoVentaEstado?,oferta: freezed == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as bool?,pedidoAppId: freezed == pedidoAppId ? _self.pedidoAppId : pedidoAppId // ignore: cast_nullable_to_non_nullable
as String?,numLineas: null == numLineas ? _self.numLineas : numLineas // ignore: cast_nullable_to_non_nullable
as int,trackingEstado: null == trackingEstado ? _self.trackingEstado : trackingEstado // ignore: cast_nullable_to_non_nullable
as TrackingEstado,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,agencia: freezed == agencia ? _self.agencia : agencia // ignore: cast_nullable_to_non_nullable
as String?,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as bool,tratada: null == tratada ? _self.tratada : tratada // ignore: cast_nullable_to_non_nullable
as bool,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Expedicion
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
}/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisaCopyWith<$Res> get divisa {
  
  return $DivisaCopyWith<$Res>(_self.divisa, (value) {
    return _then(_self.copyWith(divisa: value));
  });
}/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado {
    if (_self.pedidoVentaEstado == null) {
    return null;
  }

  return $PedidoVentaEstadoCopyWith<$Res>(_self.pedidoVentaEstado!, (value) {
    return _then(_self.copyWith(pedidoVentaEstado: value));
  });
}/// Create a copy of Expedicion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrackingEstadoCopyWith<$Res> get trackingEstado {
  
  return $TrackingEstadoCopyWith<$Res>(_self.trackingEstado, (value) {
    return _then(_self.copyWith(trackingEstado: value));
  });
}
}

// dart format on
