// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VisitaDTO {

@JsonKey(name: 'VISITA_ID') String get id;@JsonKey(name: 'FECHA') DateTime get fecha;@JsonKey(name: 'CLIENTE_ID') String? get clienteId;@JsonKey(name: 'CLIENTE_POTENCIAL_SN') String get isClienteProvisional;@JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') String? get clienteProvisionalNombre;@JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') String? get clienteProvisionalEmail;@JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') String? get clienteProvisionalTelefono;@JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') String? get clienteProvisionalPoblacion;@JsonKey(name: 'NUM_EMPL') String get numEmpl;@JsonKey(name: 'CONTACTO') String? get contacto;@JsonKey(name: 'ATENDIDO_POR') String? get atendidoPor;@JsonKey(name: 'RESUMEN') String? get resumen;@JsonKey(name: 'MARCAS_COMPETENCIA') String? get marcasCompetencia;@JsonKey(name: 'OFERTA_REALIZADA') String get ofertaRealizada;@JsonKey(name: 'INTERES_CLIENTE') String get interesCliente;@JsonKey(name: 'PEDIDO_REALIZADO') String get pedidoRealizado;@JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') int? get codigoMotivoNoInteres;@JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') int? get codigoMotivoNoPedido;@JsonKey(name: 'CODIGO_SECTOR') int? get codigoSector;@JsonKey(name: 'CODIGO_COMPETENCIA') int? get codigoCompetencia;@JsonKey(name: 'ALMACEN_PROPIO') String get almacenPropio;@JsonKey(name: 'CAPACIDAD') String get capacidad;@JsonKey(name: 'FRECUENCIA_PEDIDO') String get frecuenciaPedido;@JsonKey(name: 'LATITUD') double get latitud;@JsonKey(name: 'LONGITUD') double get longitud;@JsonKey(name: 'COD_VISITA_APP') String? get visitaAppId;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of VisitaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitaDTOCopyWith<VisitaDTO> get copyWith => _$VisitaDTOCopyWithImpl<VisitaDTO>(this as VisitaDTO, _$identity);

  /// Serializes this VisitaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitaDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.isClienteProvisional, isClienteProvisional) || other.isClienteProvisional == isClienteProvisional)&&(identical(other.clienteProvisionalNombre, clienteProvisionalNombre) || other.clienteProvisionalNombre == clienteProvisionalNombre)&&(identical(other.clienteProvisionalEmail, clienteProvisionalEmail) || other.clienteProvisionalEmail == clienteProvisionalEmail)&&(identical(other.clienteProvisionalTelefono, clienteProvisionalTelefono) || other.clienteProvisionalTelefono == clienteProvisionalTelefono)&&(identical(other.clienteProvisionalPoblacion, clienteProvisionalPoblacion) || other.clienteProvisionalPoblacion == clienteProvisionalPoblacion)&&(identical(other.numEmpl, numEmpl) || other.numEmpl == numEmpl)&&(identical(other.contacto, contacto) || other.contacto == contacto)&&(identical(other.atendidoPor, atendidoPor) || other.atendidoPor == atendidoPor)&&(identical(other.resumen, resumen) || other.resumen == resumen)&&(identical(other.marcasCompetencia, marcasCompetencia) || other.marcasCompetencia == marcasCompetencia)&&(identical(other.ofertaRealizada, ofertaRealizada) || other.ofertaRealizada == ofertaRealizada)&&(identical(other.interesCliente, interesCliente) || other.interesCliente == interesCliente)&&(identical(other.pedidoRealizado, pedidoRealizado) || other.pedidoRealizado == pedidoRealizado)&&(identical(other.codigoMotivoNoInteres, codigoMotivoNoInteres) || other.codigoMotivoNoInteres == codigoMotivoNoInteres)&&(identical(other.codigoMotivoNoPedido, codigoMotivoNoPedido) || other.codigoMotivoNoPedido == codigoMotivoNoPedido)&&(identical(other.codigoSector, codigoSector) || other.codigoSector == codigoSector)&&(identical(other.codigoCompetencia, codigoCompetencia) || other.codigoCompetencia == codigoCompetencia)&&(identical(other.almacenPropio, almacenPropio) || other.almacenPropio == almacenPropio)&&(identical(other.capacidad, capacidad) || other.capacidad == capacidad)&&(identical(other.frecuenciaPedido, frecuenciaPedido) || other.frecuenciaPedido == frecuenciaPedido)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.visitaAppId, visitaAppId) || other.visitaAppId == visitaAppId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,fecha,clienteId,isClienteProvisional,clienteProvisionalNombre,clienteProvisionalEmail,clienteProvisionalTelefono,clienteProvisionalPoblacion,numEmpl,contacto,atendidoPor,resumen,marcasCompetencia,ofertaRealizada,interesCliente,pedidoRealizado,codigoMotivoNoInteres,codigoMotivoNoPedido,codigoSector,codigoCompetencia,almacenPropio,capacidad,frecuenciaPedido,latitud,longitud,visitaAppId,lastUpdated,deleted]);

@override
String toString() {
  return 'VisitaDTO(id: $id, fecha: $fecha, clienteId: $clienteId, isClienteProvisional: $isClienteProvisional, clienteProvisionalNombre: $clienteProvisionalNombre, clienteProvisionalEmail: $clienteProvisionalEmail, clienteProvisionalTelefono: $clienteProvisionalTelefono, clienteProvisionalPoblacion: $clienteProvisionalPoblacion, numEmpl: $numEmpl, contacto: $contacto, atendidoPor: $atendidoPor, resumen: $resumen, marcasCompetencia: $marcasCompetencia, ofertaRealizada: $ofertaRealizada, interesCliente: $interesCliente, pedidoRealizado: $pedidoRealizado, codigoMotivoNoInteres: $codigoMotivoNoInteres, codigoMotivoNoPedido: $codigoMotivoNoPedido, codigoSector: $codigoSector, codigoCompetencia: $codigoCompetencia, almacenPropio: $almacenPropio, capacidad: $capacidad, frecuenciaPedido: $frecuenciaPedido, latitud: $latitud, longitud: $longitud, visitaAppId: $visitaAppId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $VisitaDTOCopyWith<$Res>  {
  factory $VisitaDTOCopyWith(VisitaDTO value, $Res Function(VisitaDTO) _then) = _$VisitaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'VISITA_ID') String id,@JsonKey(name: 'FECHA') DateTime fecha,@JsonKey(name: 'CLIENTE_ID') String? clienteId,@JsonKey(name: 'CLIENTE_POTENCIAL_SN') String isClienteProvisional,@JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') String? clienteProvisionalNombre,@JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') String? clienteProvisionalEmail,@JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') String? clienteProvisionalTelefono,@JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') String? clienteProvisionalPoblacion,@JsonKey(name: 'NUM_EMPL') String numEmpl,@JsonKey(name: 'CONTACTO') String? contacto,@JsonKey(name: 'ATENDIDO_POR') String? atendidoPor,@JsonKey(name: 'RESUMEN') String? resumen,@JsonKey(name: 'MARCAS_COMPETENCIA') String? marcasCompetencia,@JsonKey(name: 'OFERTA_REALIZADA') String ofertaRealizada,@JsonKey(name: 'INTERES_CLIENTE') String interesCliente,@JsonKey(name: 'PEDIDO_REALIZADO') String pedidoRealizado,@JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') int? codigoMotivoNoInteres,@JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') int? codigoMotivoNoPedido,@JsonKey(name: 'CODIGO_SECTOR') int? codigoSector,@JsonKey(name: 'CODIGO_COMPETENCIA') int? codigoCompetencia,@JsonKey(name: 'ALMACEN_PROPIO') String almacenPropio,@JsonKey(name: 'CAPACIDAD') String capacidad,@JsonKey(name: 'FRECUENCIA_PEDIDO') String frecuenciaPedido,@JsonKey(name: 'LATITUD') double latitud,@JsonKey(name: 'LONGITUD') double longitud,@JsonKey(name: 'COD_VISITA_APP') String? visitaAppId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$VisitaDTOCopyWithImpl<$Res>
    implements $VisitaDTOCopyWith<$Res> {
  _$VisitaDTOCopyWithImpl(this._self, this._then);

  final VisitaDTO _self;
  final $Res Function(VisitaDTO) _then;

/// Create a copy of VisitaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fecha = null,Object? clienteId = freezed,Object? isClienteProvisional = null,Object? clienteProvisionalNombre = freezed,Object? clienteProvisionalEmail = freezed,Object? clienteProvisionalTelefono = freezed,Object? clienteProvisionalPoblacion = freezed,Object? numEmpl = null,Object? contacto = freezed,Object? atendidoPor = freezed,Object? resumen = freezed,Object? marcasCompetencia = freezed,Object? ofertaRealizada = null,Object? interesCliente = null,Object? pedidoRealizado = null,Object? codigoMotivoNoInteres = freezed,Object? codigoMotivoNoPedido = freezed,Object? codigoSector = freezed,Object? codigoCompetencia = freezed,Object? almacenPropio = null,Object? capacidad = null,Object? frecuenciaPedido = null,Object? latitud = null,Object? longitud = null,Object? visitaAppId = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String?,isClienteProvisional: null == isClienteProvisional ? _self.isClienteProvisional : isClienteProvisional // ignore: cast_nullable_to_non_nullable
as String,clienteProvisionalNombre: freezed == clienteProvisionalNombre ? _self.clienteProvisionalNombre : clienteProvisionalNombre // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalEmail: freezed == clienteProvisionalEmail ? _self.clienteProvisionalEmail : clienteProvisionalEmail // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalTelefono: freezed == clienteProvisionalTelefono ? _self.clienteProvisionalTelefono : clienteProvisionalTelefono // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalPoblacion: freezed == clienteProvisionalPoblacion ? _self.clienteProvisionalPoblacion : clienteProvisionalPoblacion // ignore: cast_nullable_to_non_nullable
as String?,numEmpl: null == numEmpl ? _self.numEmpl : numEmpl // ignore: cast_nullable_to_non_nullable
as String,contacto: freezed == contacto ? _self.contacto : contacto // ignore: cast_nullable_to_non_nullable
as String?,atendidoPor: freezed == atendidoPor ? _self.atendidoPor : atendidoPor // ignore: cast_nullable_to_non_nullable
as String?,resumen: freezed == resumen ? _self.resumen : resumen // ignore: cast_nullable_to_non_nullable
as String?,marcasCompetencia: freezed == marcasCompetencia ? _self.marcasCompetencia : marcasCompetencia // ignore: cast_nullable_to_non_nullable
as String?,ofertaRealizada: null == ofertaRealizada ? _self.ofertaRealizada : ofertaRealizada // ignore: cast_nullable_to_non_nullable
as String,interesCliente: null == interesCliente ? _self.interesCliente : interesCliente // ignore: cast_nullable_to_non_nullable
as String,pedidoRealizado: null == pedidoRealizado ? _self.pedidoRealizado : pedidoRealizado // ignore: cast_nullable_to_non_nullable
as String,codigoMotivoNoInteres: freezed == codigoMotivoNoInteres ? _self.codigoMotivoNoInteres : codigoMotivoNoInteres // ignore: cast_nullable_to_non_nullable
as int?,codigoMotivoNoPedido: freezed == codigoMotivoNoPedido ? _self.codigoMotivoNoPedido : codigoMotivoNoPedido // ignore: cast_nullable_to_non_nullable
as int?,codigoSector: freezed == codigoSector ? _self.codigoSector : codigoSector // ignore: cast_nullable_to_non_nullable
as int?,codigoCompetencia: freezed == codigoCompetencia ? _self.codigoCompetencia : codigoCompetencia // ignore: cast_nullable_to_non_nullable
as int?,almacenPropio: null == almacenPropio ? _self.almacenPropio : almacenPropio // ignore: cast_nullable_to_non_nullable
as String,capacidad: null == capacidad ? _self.capacidad : capacidad // ignore: cast_nullable_to_non_nullable
as String,frecuenciaPedido: null == frecuenciaPedido ? _self.frecuenciaPedido : frecuenciaPedido // ignore: cast_nullable_to_non_nullable
as String,latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,visitaAppId: freezed == visitaAppId ? _self.visitaAppId : visitaAppId // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VisitaDTO].
extension VisitaDTOPatterns on VisitaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitaDTO value)  $default,){
final _that = this;
switch (_that) {
case _VisitaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _VisitaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'VISITA_ID')  String id, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'CLIENTE_ID')  String? clienteId, @JsonKey(name: 'CLIENTE_POTENCIAL_SN')  String isClienteProvisional, @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')  String? clienteProvisionalNombre, @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')  String? clienteProvisionalEmail, @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')  String? clienteProvisionalTelefono, @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')  String? clienteProvisionalPoblacion, @JsonKey(name: 'NUM_EMPL')  String numEmpl, @JsonKey(name: 'CONTACTO')  String? contacto, @JsonKey(name: 'ATENDIDO_POR')  String? atendidoPor, @JsonKey(name: 'RESUMEN')  String? resumen, @JsonKey(name: 'MARCAS_COMPETENCIA')  String? marcasCompetencia, @JsonKey(name: 'OFERTA_REALIZADA')  String ofertaRealizada, @JsonKey(name: 'INTERES_CLIENTE')  String interesCliente, @JsonKey(name: 'PEDIDO_REALIZADO')  String pedidoRealizado, @JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES')  int? codigoMotivoNoInteres, @JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO')  int? codigoMotivoNoPedido, @JsonKey(name: 'CODIGO_SECTOR')  int? codigoSector, @JsonKey(name: 'CODIGO_COMPETENCIA')  int? codigoCompetencia, @JsonKey(name: 'ALMACEN_PROPIO')  String almacenPropio, @JsonKey(name: 'CAPACIDAD')  String capacidad, @JsonKey(name: 'FRECUENCIA_PEDIDO')  String frecuenciaPedido, @JsonKey(name: 'LATITUD')  double latitud, @JsonKey(name: 'LONGITUD')  double longitud, @JsonKey(name: 'COD_VISITA_APP')  String? visitaAppId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitaDTO() when $default != null:
return $default(_that.id,_that.fecha,_that.clienteId,_that.isClienteProvisional,_that.clienteProvisionalNombre,_that.clienteProvisionalEmail,_that.clienteProvisionalTelefono,_that.clienteProvisionalPoblacion,_that.numEmpl,_that.contacto,_that.atendidoPor,_that.resumen,_that.marcasCompetencia,_that.ofertaRealizada,_that.interesCliente,_that.pedidoRealizado,_that.codigoMotivoNoInteres,_that.codigoMotivoNoPedido,_that.codigoSector,_that.codigoCompetencia,_that.almacenPropio,_that.capacidad,_that.frecuenciaPedido,_that.latitud,_that.longitud,_that.visitaAppId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'VISITA_ID')  String id, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'CLIENTE_ID')  String? clienteId, @JsonKey(name: 'CLIENTE_POTENCIAL_SN')  String isClienteProvisional, @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')  String? clienteProvisionalNombre, @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')  String? clienteProvisionalEmail, @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')  String? clienteProvisionalTelefono, @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')  String? clienteProvisionalPoblacion, @JsonKey(name: 'NUM_EMPL')  String numEmpl, @JsonKey(name: 'CONTACTO')  String? contacto, @JsonKey(name: 'ATENDIDO_POR')  String? atendidoPor, @JsonKey(name: 'RESUMEN')  String? resumen, @JsonKey(name: 'MARCAS_COMPETENCIA')  String? marcasCompetencia, @JsonKey(name: 'OFERTA_REALIZADA')  String ofertaRealizada, @JsonKey(name: 'INTERES_CLIENTE')  String interesCliente, @JsonKey(name: 'PEDIDO_REALIZADO')  String pedidoRealizado, @JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES')  int? codigoMotivoNoInteres, @JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO')  int? codigoMotivoNoPedido, @JsonKey(name: 'CODIGO_SECTOR')  int? codigoSector, @JsonKey(name: 'CODIGO_COMPETENCIA')  int? codigoCompetencia, @JsonKey(name: 'ALMACEN_PROPIO')  String almacenPropio, @JsonKey(name: 'CAPACIDAD')  String capacidad, @JsonKey(name: 'FRECUENCIA_PEDIDO')  String frecuenciaPedido, @JsonKey(name: 'LATITUD')  double latitud, @JsonKey(name: 'LONGITUD')  double longitud, @JsonKey(name: 'COD_VISITA_APP')  String? visitaAppId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _VisitaDTO():
return $default(_that.id,_that.fecha,_that.clienteId,_that.isClienteProvisional,_that.clienteProvisionalNombre,_that.clienteProvisionalEmail,_that.clienteProvisionalTelefono,_that.clienteProvisionalPoblacion,_that.numEmpl,_that.contacto,_that.atendidoPor,_that.resumen,_that.marcasCompetencia,_that.ofertaRealizada,_that.interesCliente,_that.pedidoRealizado,_that.codigoMotivoNoInteres,_that.codigoMotivoNoPedido,_that.codigoSector,_that.codigoCompetencia,_that.almacenPropio,_that.capacidad,_that.frecuenciaPedido,_that.latitud,_that.longitud,_that.visitaAppId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'VISITA_ID')  String id, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'CLIENTE_ID')  String? clienteId, @JsonKey(name: 'CLIENTE_POTENCIAL_SN')  String isClienteProvisional, @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')  String? clienteProvisionalNombre, @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')  String? clienteProvisionalEmail, @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')  String? clienteProvisionalTelefono, @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')  String? clienteProvisionalPoblacion, @JsonKey(name: 'NUM_EMPL')  String numEmpl, @JsonKey(name: 'CONTACTO')  String? contacto, @JsonKey(name: 'ATENDIDO_POR')  String? atendidoPor, @JsonKey(name: 'RESUMEN')  String? resumen, @JsonKey(name: 'MARCAS_COMPETENCIA')  String? marcasCompetencia, @JsonKey(name: 'OFERTA_REALIZADA')  String ofertaRealizada, @JsonKey(name: 'INTERES_CLIENTE')  String interesCliente, @JsonKey(name: 'PEDIDO_REALIZADO')  String pedidoRealizado, @JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES')  int? codigoMotivoNoInteres, @JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO')  int? codigoMotivoNoPedido, @JsonKey(name: 'CODIGO_SECTOR')  int? codigoSector, @JsonKey(name: 'CODIGO_COMPETENCIA')  int? codigoCompetencia, @JsonKey(name: 'ALMACEN_PROPIO')  String almacenPropio, @JsonKey(name: 'CAPACIDAD')  String capacidad, @JsonKey(name: 'FRECUENCIA_PEDIDO')  String frecuenciaPedido, @JsonKey(name: 'LATITUD')  double latitud, @JsonKey(name: 'LONGITUD')  double longitud, @JsonKey(name: 'COD_VISITA_APP')  String? visitaAppId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _VisitaDTO() when $default != null:
return $default(_that.id,_that.fecha,_that.clienteId,_that.isClienteProvisional,_that.clienteProvisionalNombre,_that.clienteProvisionalEmail,_that.clienteProvisionalTelefono,_that.clienteProvisionalPoblacion,_that.numEmpl,_that.contacto,_that.atendidoPor,_that.resumen,_that.marcasCompetencia,_that.ofertaRealizada,_that.interesCliente,_that.pedidoRealizado,_that.codigoMotivoNoInteres,_that.codigoMotivoNoPedido,_that.codigoSector,_that.codigoCompetencia,_that.almacenPropio,_that.capacidad,_that.frecuenciaPedido,_that.latitud,_that.longitud,_that.visitaAppId,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisitaDTO extends VisitaDTO {
  const _VisitaDTO({@JsonKey(name: 'VISITA_ID') required this.id, @JsonKey(name: 'FECHA') required this.fecha, @JsonKey(name: 'CLIENTE_ID') this.clienteId, @JsonKey(name: 'CLIENTE_POTENCIAL_SN') required this.isClienteProvisional, @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') this.clienteProvisionalNombre, @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') this.clienteProvisionalEmail, @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') this.clienteProvisionalTelefono, @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') this.clienteProvisionalPoblacion, @JsonKey(name: 'NUM_EMPL') required this.numEmpl, @JsonKey(name: 'CONTACTO') this.contacto, @JsonKey(name: 'ATENDIDO_POR') this.atendidoPor, @JsonKey(name: 'RESUMEN') this.resumen, @JsonKey(name: 'MARCAS_COMPETENCIA') this.marcasCompetencia, @JsonKey(name: 'OFERTA_REALIZADA') required this.ofertaRealizada, @JsonKey(name: 'INTERES_CLIENTE') required this.interesCliente, @JsonKey(name: 'PEDIDO_REALIZADO') required this.pedidoRealizado, @JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') this.codigoMotivoNoInteres, @JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') this.codigoMotivoNoPedido, @JsonKey(name: 'CODIGO_SECTOR') this.codigoSector, @JsonKey(name: 'CODIGO_COMPETENCIA') this.codigoCompetencia, @JsonKey(name: 'ALMACEN_PROPIO') required this.almacenPropio, @JsonKey(name: 'CAPACIDAD') required this.capacidad, @JsonKey(name: 'FRECUENCIA_PEDIDO') required this.frecuenciaPedido, @JsonKey(name: 'LATITUD') required this.latitud, @JsonKey(name: 'LONGITUD') required this.longitud, @JsonKey(name: 'COD_VISITA_APP') this.visitaAppId, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _VisitaDTO.fromJson(Map<String, dynamic> json) => _$VisitaDTOFromJson(json);

@override@JsonKey(name: 'VISITA_ID') final  String id;
@override@JsonKey(name: 'FECHA') final  DateTime fecha;
@override@JsonKey(name: 'CLIENTE_ID') final  String? clienteId;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_SN') final  String isClienteProvisional;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') final  String? clienteProvisionalNombre;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') final  String? clienteProvisionalEmail;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') final  String? clienteProvisionalTelefono;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') final  String? clienteProvisionalPoblacion;
@override@JsonKey(name: 'NUM_EMPL') final  String numEmpl;
@override@JsonKey(name: 'CONTACTO') final  String? contacto;
@override@JsonKey(name: 'ATENDIDO_POR') final  String? atendidoPor;
@override@JsonKey(name: 'RESUMEN') final  String? resumen;
@override@JsonKey(name: 'MARCAS_COMPETENCIA') final  String? marcasCompetencia;
@override@JsonKey(name: 'OFERTA_REALIZADA') final  String ofertaRealizada;
@override@JsonKey(name: 'INTERES_CLIENTE') final  String interesCliente;
@override@JsonKey(name: 'PEDIDO_REALIZADO') final  String pedidoRealizado;
@override@JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') final  int? codigoMotivoNoInteres;
@override@JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') final  int? codigoMotivoNoPedido;
@override@JsonKey(name: 'CODIGO_SECTOR') final  int? codigoSector;
@override@JsonKey(name: 'CODIGO_COMPETENCIA') final  int? codigoCompetencia;
@override@JsonKey(name: 'ALMACEN_PROPIO') final  String almacenPropio;
@override@JsonKey(name: 'CAPACIDAD') final  String capacidad;
@override@JsonKey(name: 'FRECUENCIA_PEDIDO') final  String frecuenciaPedido;
@override@JsonKey(name: 'LATITUD') final  double latitud;
@override@JsonKey(name: 'LONGITUD') final  double longitud;
@override@JsonKey(name: 'COD_VISITA_APP') final  String? visitaAppId;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of VisitaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitaDTOCopyWith<_VisitaDTO> get copyWith => __$VisitaDTOCopyWithImpl<_VisitaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisitaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitaDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.isClienteProvisional, isClienteProvisional) || other.isClienteProvisional == isClienteProvisional)&&(identical(other.clienteProvisionalNombre, clienteProvisionalNombre) || other.clienteProvisionalNombre == clienteProvisionalNombre)&&(identical(other.clienteProvisionalEmail, clienteProvisionalEmail) || other.clienteProvisionalEmail == clienteProvisionalEmail)&&(identical(other.clienteProvisionalTelefono, clienteProvisionalTelefono) || other.clienteProvisionalTelefono == clienteProvisionalTelefono)&&(identical(other.clienteProvisionalPoblacion, clienteProvisionalPoblacion) || other.clienteProvisionalPoblacion == clienteProvisionalPoblacion)&&(identical(other.numEmpl, numEmpl) || other.numEmpl == numEmpl)&&(identical(other.contacto, contacto) || other.contacto == contacto)&&(identical(other.atendidoPor, atendidoPor) || other.atendidoPor == atendidoPor)&&(identical(other.resumen, resumen) || other.resumen == resumen)&&(identical(other.marcasCompetencia, marcasCompetencia) || other.marcasCompetencia == marcasCompetencia)&&(identical(other.ofertaRealizada, ofertaRealizada) || other.ofertaRealizada == ofertaRealizada)&&(identical(other.interesCliente, interesCliente) || other.interesCliente == interesCliente)&&(identical(other.pedidoRealizado, pedidoRealizado) || other.pedidoRealizado == pedidoRealizado)&&(identical(other.codigoMotivoNoInteres, codigoMotivoNoInteres) || other.codigoMotivoNoInteres == codigoMotivoNoInteres)&&(identical(other.codigoMotivoNoPedido, codigoMotivoNoPedido) || other.codigoMotivoNoPedido == codigoMotivoNoPedido)&&(identical(other.codigoSector, codigoSector) || other.codigoSector == codigoSector)&&(identical(other.codigoCompetencia, codigoCompetencia) || other.codigoCompetencia == codigoCompetencia)&&(identical(other.almacenPropio, almacenPropio) || other.almacenPropio == almacenPropio)&&(identical(other.capacidad, capacidad) || other.capacidad == capacidad)&&(identical(other.frecuenciaPedido, frecuenciaPedido) || other.frecuenciaPedido == frecuenciaPedido)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.visitaAppId, visitaAppId) || other.visitaAppId == visitaAppId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,fecha,clienteId,isClienteProvisional,clienteProvisionalNombre,clienteProvisionalEmail,clienteProvisionalTelefono,clienteProvisionalPoblacion,numEmpl,contacto,atendidoPor,resumen,marcasCompetencia,ofertaRealizada,interesCliente,pedidoRealizado,codigoMotivoNoInteres,codigoMotivoNoPedido,codigoSector,codigoCompetencia,almacenPropio,capacidad,frecuenciaPedido,latitud,longitud,visitaAppId,lastUpdated,deleted]);

@override
String toString() {
  return 'VisitaDTO(id: $id, fecha: $fecha, clienteId: $clienteId, isClienteProvisional: $isClienteProvisional, clienteProvisionalNombre: $clienteProvisionalNombre, clienteProvisionalEmail: $clienteProvisionalEmail, clienteProvisionalTelefono: $clienteProvisionalTelefono, clienteProvisionalPoblacion: $clienteProvisionalPoblacion, numEmpl: $numEmpl, contacto: $contacto, atendidoPor: $atendidoPor, resumen: $resumen, marcasCompetencia: $marcasCompetencia, ofertaRealizada: $ofertaRealizada, interesCliente: $interesCliente, pedidoRealizado: $pedidoRealizado, codigoMotivoNoInteres: $codigoMotivoNoInteres, codigoMotivoNoPedido: $codigoMotivoNoPedido, codigoSector: $codigoSector, codigoCompetencia: $codigoCompetencia, almacenPropio: $almacenPropio, capacidad: $capacidad, frecuenciaPedido: $frecuenciaPedido, latitud: $latitud, longitud: $longitud, visitaAppId: $visitaAppId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$VisitaDTOCopyWith<$Res> implements $VisitaDTOCopyWith<$Res> {
  factory _$VisitaDTOCopyWith(_VisitaDTO value, $Res Function(_VisitaDTO) _then) = __$VisitaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'VISITA_ID') String id,@JsonKey(name: 'FECHA') DateTime fecha,@JsonKey(name: 'CLIENTE_ID') String? clienteId,@JsonKey(name: 'CLIENTE_POTENCIAL_SN') String isClienteProvisional,@JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') String? clienteProvisionalNombre,@JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') String? clienteProvisionalEmail,@JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') String? clienteProvisionalTelefono,@JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') String? clienteProvisionalPoblacion,@JsonKey(name: 'NUM_EMPL') String numEmpl,@JsonKey(name: 'CONTACTO') String? contacto,@JsonKey(name: 'ATENDIDO_POR') String? atendidoPor,@JsonKey(name: 'RESUMEN') String? resumen,@JsonKey(name: 'MARCAS_COMPETENCIA') String? marcasCompetencia,@JsonKey(name: 'OFERTA_REALIZADA') String ofertaRealizada,@JsonKey(name: 'INTERES_CLIENTE') String interesCliente,@JsonKey(name: 'PEDIDO_REALIZADO') String pedidoRealizado,@JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') int? codigoMotivoNoInteres,@JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') int? codigoMotivoNoPedido,@JsonKey(name: 'CODIGO_SECTOR') int? codigoSector,@JsonKey(name: 'CODIGO_COMPETENCIA') int? codigoCompetencia,@JsonKey(name: 'ALMACEN_PROPIO') String almacenPropio,@JsonKey(name: 'CAPACIDAD') String capacidad,@JsonKey(name: 'FRECUENCIA_PEDIDO') String frecuenciaPedido,@JsonKey(name: 'LATITUD') double latitud,@JsonKey(name: 'LONGITUD') double longitud,@JsonKey(name: 'COD_VISITA_APP') String? visitaAppId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$VisitaDTOCopyWithImpl<$Res>
    implements _$VisitaDTOCopyWith<$Res> {
  __$VisitaDTOCopyWithImpl(this._self, this._then);

  final _VisitaDTO _self;
  final $Res Function(_VisitaDTO) _then;

/// Create a copy of VisitaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fecha = null,Object? clienteId = freezed,Object? isClienteProvisional = null,Object? clienteProvisionalNombre = freezed,Object? clienteProvisionalEmail = freezed,Object? clienteProvisionalTelefono = freezed,Object? clienteProvisionalPoblacion = freezed,Object? numEmpl = null,Object? contacto = freezed,Object? atendidoPor = freezed,Object? resumen = freezed,Object? marcasCompetencia = freezed,Object? ofertaRealizada = null,Object? interesCliente = null,Object? pedidoRealizado = null,Object? codigoMotivoNoInteres = freezed,Object? codigoMotivoNoPedido = freezed,Object? codigoSector = freezed,Object? codigoCompetencia = freezed,Object? almacenPropio = null,Object? capacidad = null,Object? frecuenciaPedido = null,Object? latitud = null,Object? longitud = null,Object? visitaAppId = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_VisitaDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String?,isClienteProvisional: null == isClienteProvisional ? _self.isClienteProvisional : isClienteProvisional // ignore: cast_nullable_to_non_nullable
as String,clienteProvisionalNombre: freezed == clienteProvisionalNombre ? _self.clienteProvisionalNombre : clienteProvisionalNombre // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalEmail: freezed == clienteProvisionalEmail ? _self.clienteProvisionalEmail : clienteProvisionalEmail // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalTelefono: freezed == clienteProvisionalTelefono ? _self.clienteProvisionalTelefono : clienteProvisionalTelefono // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalPoblacion: freezed == clienteProvisionalPoblacion ? _self.clienteProvisionalPoblacion : clienteProvisionalPoblacion // ignore: cast_nullable_to_non_nullable
as String?,numEmpl: null == numEmpl ? _self.numEmpl : numEmpl // ignore: cast_nullable_to_non_nullable
as String,contacto: freezed == contacto ? _self.contacto : contacto // ignore: cast_nullable_to_non_nullable
as String?,atendidoPor: freezed == atendidoPor ? _self.atendidoPor : atendidoPor // ignore: cast_nullable_to_non_nullable
as String?,resumen: freezed == resumen ? _self.resumen : resumen // ignore: cast_nullable_to_non_nullable
as String?,marcasCompetencia: freezed == marcasCompetencia ? _self.marcasCompetencia : marcasCompetencia // ignore: cast_nullable_to_non_nullable
as String?,ofertaRealizada: null == ofertaRealizada ? _self.ofertaRealizada : ofertaRealizada // ignore: cast_nullable_to_non_nullable
as String,interesCliente: null == interesCliente ? _self.interesCliente : interesCliente // ignore: cast_nullable_to_non_nullable
as String,pedidoRealizado: null == pedidoRealizado ? _self.pedidoRealizado : pedidoRealizado // ignore: cast_nullable_to_non_nullable
as String,codigoMotivoNoInteres: freezed == codigoMotivoNoInteres ? _self.codigoMotivoNoInteres : codigoMotivoNoInteres // ignore: cast_nullable_to_non_nullable
as int?,codigoMotivoNoPedido: freezed == codigoMotivoNoPedido ? _self.codigoMotivoNoPedido : codigoMotivoNoPedido // ignore: cast_nullable_to_non_nullable
as int?,codigoSector: freezed == codigoSector ? _self.codigoSector : codigoSector // ignore: cast_nullable_to_non_nullable
as int?,codigoCompetencia: freezed == codigoCompetencia ? _self.codigoCompetencia : codigoCompetencia // ignore: cast_nullable_to_non_nullable
as int?,almacenPropio: null == almacenPropio ? _self.almacenPropio : almacenPropio // ignore: cast_nullable_to_non_nullable
as String,capacidad: null == capacidad ? _self.capacidad : capacidad // ignore: cast_nullable_to_non_nullable
as String,frecuenciaPedido: null == frecuenciaPedido ? _self.frecuenciaPedido : frecuenciaPedido // ignore: cast_nullable_to_non_nullable
as String,latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,visitaAppId: freezed == visitaAppId ? _self.visitaAppId : visitaAppId // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
