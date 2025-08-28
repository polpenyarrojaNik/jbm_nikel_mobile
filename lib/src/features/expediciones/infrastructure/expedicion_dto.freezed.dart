// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expedicion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpedicionDTO {

@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'PEDIDO_ID') String get pedidoVentaId;@JsonKey(name: 'FECHA_PEDIDO') DateTime get pedidoVentaDate;@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'DIRECCION_ID') String? get direccionId;@JsonKey(name: 'NOMRE_CLIENTE') String get nombreCliente;@JsonKey(name: 'CODIGO_POSTAL') String? get codigoPostal;@JsonKey(name: 'POBLACION') String? get poblacion;@JsonKey(name: 'PROVINCIA') String? get provincia;@JsonKey(name: 'PAIS_ID') String? get paisId;@JsonKey(name: 'DIVISA_ID') String get divisaId;@JsonKey(name: 'BASE_IMPONIBLE') double get baseImponible;@JsonKey(name: 'ESTADO_PEDIDO_ID') int get pedidoVentaEstadoId;@JsonKey(name: 'NUM_LINEAS') int get numLineas;@JsonKey(name: 'TRACKING_ESTADO') String get estadoTrackingId;@JsonKey(name: 'ALBARAN_ID') String get albaranId;@JsonKey(name: 'TRACK_ID') String? get trackId;@JsonKey(name: 'AGENCIA') String? get agencia;@JsonKey(name: 'FECHA_ALBARAN') DateTime get fechaAlbaran;@JsonKey(name: 'OFERTA_SN') String get oferta;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ExpedicionDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpedicionDTOCopyWith<ExpedicionDTO> get copyWith => _$ExpedicionDTOCopyWithImpl<ExpedicionDTO>(this as ExpedicionDTO, _$identity);

  /// Serializes this ExpedicionDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpedicionDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.pedidoVentaDate, pedidoVentaDate) || other.pedidoVentaDate == pedidoVentaDate)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.pedidoVentaEstadoId, pedidoVentaEstadoId) || other.pedidoVentaEstadoId == pedidoVentaEstadoId)&&(identical(other.numLineas, numLineas) || other.numLineas == numLineas)&&(identical(other.estadoTrackingId, estadoTrackingId) || other.estadoTrackingId == estadoTrackingId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.agencia, agencia) || other.agencia == agencia)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,empresaId,pedidoVentaId,pedidoVentaDate,clienteId,direccionId,nombreCliente,codigoPostal,poblacion,provincia,paisId,divisaId,baseImponible,pedidoVentaEstadoId,numLineas,estadoTrackingId,albaranId,trackId,agencia,fechaAlbaran,oferta,lastUpdated,deleted]);

@override
String toString() {
  return 'ExpedicionDTO(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, pedidoVentaDate: $pedidoVentaDate, clienteId: $clienteId, direccionId: $direccionId, nombreCliente: $nombreCliente, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, divisaId: $divisaId, baseImponible: $baseImponible, pedidoVentaEstadoId: $pedidoVentaEstadoId, numLineas: $numLineas, estadoTrackingId: $estadoTrackingId, albaranId: $albaranId, trackId: $trackId, agencia: $agencia, fechaAlbaran: $fechaAlbaran, oferta: $oferta, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ExpedicionDTOCopyWith<$Res>  {
  factory $ExpedicionDTOCopyWith(ExpedicionDTO value, $Res Function(ExpedicionDTO) _then) = _$ExpedicionDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,@JsonKey(name: 'FECHA_PEDIDO') DateTime pedidoVentaDate,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMRE_CLIENTE') String nombreCliente,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'BASE_IMPONIBLE') double baseImponible,@JsonKey(name: 'ESTADO_PEDIDO_ID') int pedidoVentaEstadoId,@JsonKey(name: 'NUM_LINEAS') int numLineas,@JsonKey(name: 'TRACKING_ESTADO') String estadoTrackingId,@JsonKey(name: 'ALBARAN_ID') String albaranId,@JsonKey(name: 'TRACK_ID') String? trackId,@JsonKey(name: 'AGENCIA') String? agencia,@JsonKey(name: 'FECHA_ALBARAN') DateTime fechaAlbaran,@JsonKey(name: 'OFERTA_SN') String oferta,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ExpedicionDTOCopyWithImpl<$Res>
    implements $ExpedicionDTOCopyWith<$Res> {
  _$ExpedicionDTOCopyWithImpl(this._self, this._then);

  final ExpedicionDTO _self;
  final $Res Function(ExpedicionDTO) _then;

/// Create a copy of ExpedicionDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? pedidoVentaId = null,Object? pedidoVentaDate = null,Object? clienteId = null,Object? direccionId = freezed,Object? nombreCliente = null,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? divisaId = null,Object? baseImponible = null,Object? pedidoVentaEstadoId = null,Object? numLineas = null,Object? estadoTrackingId = null,Object? albaranId = null,Object? trackId = freezed,Object? agencia = freezed,Object? fechaAlbaran = null,Object? oferta = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaId: null == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaDate: null == pedidoVentaDate ? _self.pedidoVentaDate : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,baseImponible: null == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as double,pedidoVentaEstadoId: null == pedidoVentaEstadoId ? _self.pedidoVentaEstadoId : pedidoVentaEstadoId // ignore: cast_nullable_to_non_nullable
as int,numLineas: null == numLineas ? _self.numLineas : numLineas // ignore: cast_nullable_to_non_nullable
as int,estadoTrackingId: null == estadoTrackingId ? _self.estadoTrackingId : estadoTrackingId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,agencia: freezed == agencia ? _self.agencia : agencia // ignore: cast_nullable_to_non_nullable
as String?,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,oferta: null == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpedicionDTO].
extension ExpedicionDTOPatterns on ExpedicionDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpedicionDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpedicionDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpedicionDTO value)  $default,){
final _that = this;
switch (_that) {
case _ExpedicionDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpedicionDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ExpedicionDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoVentaId, @JsonKey(name: 'FECHA_PEDIDO')  DateTime pedidoVentaDate, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMRE_CLIENTE')  String nombreCliente, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'BASE_IMPONIBLE')  double baseImponible, @JsonKey(name: 'ESTADO_PEDIDO_ID')  int pedidoVentaEstadoId, @JsonKey(name: 'NUM_LINEAS')  int numLineas, @JsonKey(name: 'TRACKING_ESTADO')  String estadoTrackingId, @JsonKey(name: 'ALBARAN_ID')  String albaranId, @JsonKey(name: 'TRACK_ID')  String? trackId, @JsonKey(name: 'AGENCIA')  String? agencia, @JsonKey(name: 'FECHA_ALBARAN')  DateTime fechaAlbaran, @JsonKey(name: 'OFERTA_SN')  String oferta, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpedicionDTO() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.pedidoVentaDate,_that.clienteId,_that.direccionId,_that.nombreCliente,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.divisaId,_that.baseImponible,_that.pedidoVentaEstadoId,_that.numLineas,_that.estadoTrackingId,_that.albaranId,_that.trackId,_that.agencia,_that.fechaAlbaran,_that.oferta,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoVentaId, @JsonKey(name: 'FECHA_PEDIDO')  DateTime pedidoVentaDate, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMRE_CLIENTE')  String nombreCliente, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'BASE_IMPONIBLE')  double baseImponible, @JsonKey(name: 'ESTADO_PEDIDO_ID')  int pedidoVentaEstadoId, @JsonKey(name: 'NUM_LINEAS')  int numLineas, @JsonKey(name: 'TRACKING_ESTADO')  String estadoTrackingId, @JsonKey(name: 'ALBARAN_ID')  String albaranId, @JsonKey(name: 'TRACK_ID')  String? trackId, @JsonKey(name: 'AGENCIA')  String? agencia, @JsonKey(name: 'FECHA_ALBARAN')  DateTime fechaAlbaran, @JsonKey(name: 'OFERTA_SN')  String oferta, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ExpedicionDTO():
return $default(_that.empresaId,_that.pedidoVentaId,_that.pedidoVentaDate,_that.clienteId,_that.direccionId,_that.nombreCliente,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.divisaId,_that.baseImponible,_that.pedidoVentaEstadoId,_that.numLineas,_that.estadoTrackingId,_that.albaranId,_that.trackId,_that.agencia,_that.fechaAlbaran,_that.oferta,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoVentaId, @JsonKey(name: 'FECHA_PEDIDO')  DateTime pedidoVentaDate, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMRE_CLIENTE')  String nombreCliente, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'BASE_IMPONIBLE')  double baseImponible, @JsonKey(name: 'ESTADO_PEDIDO_ID')  int pedidoVentaEstadoId, @JsonKey(name: 'NUM_LINEAS')  int numLineas, @JsonKey(name: 'TRACKING_ESTADO')  String estadoTrackingId, @JsonKey(name: 'ALBARAN_ID')  String albaranId, @JsonKey(name: 'TRACK_ID')  String? trackId, @JsonKey(name: 'AGENCIA')  String? agencia, @JsonKey(name: 'FECHA_ALBARAN')  DateTime fechaAlbaran, @JsonKey(name: 'OFERTA_SN')  String oferta, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ExpedicionDTO() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.pedidoVentaDate,_that.clienteId,_that.direccionId,_that.nombreCliente,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.divisaId,_that.baseImponible,_that.pedidoVentaEstadoId,_that.numLineas,_that.estadoTrackingId,_that.albaranId,_that.trackId,_that.agencia,_that.fechaAlbaran,_that.oferta,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpedicionDTO extends ExpedicionDTO {
  const _ExpedicionDTO({@JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'PEDIDO_ID') required this.pedidoVentaId, @JsonKey(name: 'FECHA_PEDIDO') required this.pedidoVentaDate, @JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'DIRECCION_ID') this.direccionId, @JsonKey(name: 'NOMRE_CLIENTE') required this.nombreCliente, @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal, @JsonKey(name: 'POBLACION') this.poblacion, @JsonKey(name: 'PROVINCIA') this.provincia, @JsonKey(name: 'PAIS_ID') this.paisId, @JsonKey(name: 'DIVISA_ID') required this.divisaId, @JsonKey(name: 'BASE_IMPONIBLE') required this.baseImponible, @JsonKey(name: 'ESTADO_PEDIDO_ID') required this.pedidoVentaEstadoId, @JsonKey(name: 'NUM_LINEAS') required this.numLineas, @JsonKey(name: 'TRACKING_ESTADO') required this.estadoTrackingId, @JsonKey(name: 'ALBARAN_ID') required this.albaranId, @JsonKey(name: 'TRACK_ID') this.trackId, @JsonKey(name: 'AGENCIA') this.agencia, @JsonKey(name: 'FECHA_ALBARAN') required this.fechaAlbaran, @JsonKey(name: 'OFERTA_SN') required this.oferta, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') required this.deleted}): super._();
  factory _ExpedicionDTO.fromJson(Map<String, dynamic> json) => _$ExpedicionDTOFromJson(json);

@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'PEDIDO_ID') final  String pedidoVentaId;
@override@JsonKey(name: 'FECHA_PEDIDO') final  DateTime pedidoVentaDate;
@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'DIRECCION_ID') final  String? direccionId;
@override@JsonKey(name: 'NOMRE_CLIENTE') final  String nombreCliente;
@override@JsonKey(name: 'CODIGO_POSTAL') final  String? codigoPostal;
@override@JsonKey(name: 'POBLACION') final  String? poblacion;
@override@JsonKey(name: 'PROVINCIA') final  String? provincia;
@override@JsonKey(name: 'PAIS_ID') final  String? paisId;
@override@JsonKey(name: 'DIVISA_ID') final  String divisaId;
@override@JsonKey(name: 'BASE_IMPONIBLE') final  double baseImponible;
@override@JsonKey(name: 'ESTADO_PEDIDO_ID') final  int pedidoVentaEstadoId;
@override@JsonKey(name: 'NUM_LINEAS') final  int numLineas;
@override@JsonKey(name: 'TRACKING_ESTADO') final  String estadoTrackingId;
@override@JsonKey(name: 'ALBARAN_ID') final  String albaranId;
@override@JsonKey(name: 'TRACK_ID') final  String? trackId;
@override@JsonKey(name: 'AGENCIA') final  String? agencia;
@override@JsonKey(name: 'FECHA_ALBARAN') final  DateTime fechaAlbaran;
@override@JsonKey(name: 'OFERTA_SN') final  String oferta;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ExpedicionDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpedicionDTOCopyWith<_ExpedicionDTO> get copyWith => __$ExpedicionDTOCopyWithImpl<_ExpedicionDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpedicionDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpedicionDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.pedidoVentaDate, pedidoVentaDate) || other.pedidoVentaDate == pedidoVentaDate)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.pedidoVentaEstadoId, pedidoVentaEstadoId) || other.pedidoVentaEstadoId == pedidoVentaEstadoId)&&(identical(other.numLineas, numLineas) || other.numLineas == numLineas)&&(identical(other.estadoTrackingId, estadoTrackingId) || other.estadoTrackingId == estadoTrackingId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.agencia, agencia) || other.agencia == agencia)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,empresaId,pedidoVentaId,pedidoVentaDate,clienteId,direccionId,nombreCliente,codigoPostal,poblacion,provincia,paisId,divisaId,baseImponible,pedidoVentaEstadoId,numLineas,estadoTrackingId,albaranId,trackId,agencia,fechaAlbaran,oferta,lastUpdated,deleted]);

@override
String toString() {
  return 'ExpedicionDTO(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, pedidoVentaDate: $pedidoVentaDate, clienteId: $clienteId, direccionId: $direccionId, nombreCliente: $nombreCliente, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, divisaId: $divisaId, baseImponible: $baseImponible, pedidoVentaEstadoId: $pedidoVentaEstadoId, numLineas: $numLineas, estadoTrackingId: $estadoTrackingId, albaranId: $albaranId, trackId: $trackId, agencia: $agencia, fechaAlbaran: $fechaAlbaran, oferta: $oferta, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ExpedicionDTOCopyWith<$Res> implements $ExpedicionDTOCopyWith<$Res> {
  factory _$ExpedicionDTOCopyWith(_ExpedicionDTO value, $Res Function(_ExpedicionDTO) _then) = __$ExpedicionDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,@JsonKey(name: 'FECHA_PEDIDO') DateTime pedidoVentaDate,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMRE_CLIENTE') String nombreCliente,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'BASE_IMPONIBLE') double baseImponible,@JsonKey(name: 'ESTADO_PEDIDO_ID') int pedidoVentaEstadoId,@JsonKey(name: 'NUM_LINEAS') int numLineas,@JsonKey(name: 'TRACKING_ESTADO') String estadoTrackingId,@JsonKey(name: 'ALBARAN_ID') String albaranId,@JsonKey(name: 'TRACK_ID') String? trackId,@JsonKey(name: 'AGENCIA') String? agencia,@JsonKey(name: 'FECHA_ALBARAN') DateTime fechaAlbaran,@JsonKey(name: 'OFERTA_SN') String oferta,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ExpedicionDTOCopyWithImpl<$Res>
    implements _$ExpedicionDTOCopyWith<$Res> {
  __$ExpedicionDTOCopyWithImpl(this._self, this._then);

  final _ExpedicionDTO _self;
  final $Res Function(_ExpedicionDTO) _then;

/// Create a copy of ExpedicionDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? pedidoVentaId = null,Object? pedidoVentaDate = null,Object? clienteId = null,Object? direccionId = freezed,Object? nombreCliente = null,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? divisaId = null,Object? baseImponible = null,Object? pedidoVentaEstadoId = null,Object? numLineas = null,Object? estadoTrackingId = null,Object? albaranId = null,Object? trackId = freezed,Object? agencia = freezed,Object? fechaAlbaran = null,Object? oferta = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ExpedicionDTO(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaId: null == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaDate: null == pedidoVentaDate ? _self.pedidoVentaDate : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,baseImponible: null == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as double,pedidoVentaEstadoId: null == pedidoVentaEstadoId ? _self.pedidoVentaEstadoId : pedidoVentaEstadoId // ignore: cast_nullable_to_non_nullable
as int,numLineas: null == numLineas ? _self.numLineas : numLineas // ignore: cast_nullable_to_non_nullable
as int,estadoTrackingId: null == estadoTrackingId ? _self.estadoTrackingId : estadoTrackingId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,agencia: freezed == agencia ? _self.agencia : agencia // ignore: cast_nullable_to_non_nullable
as String?,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,oferta: null == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
