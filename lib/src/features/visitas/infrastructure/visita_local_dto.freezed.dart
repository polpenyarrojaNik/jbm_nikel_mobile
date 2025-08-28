// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VisitaLocalDTO {

@JsonKey(name: 'COD_VISITA_APP') String? get visitaAppId;@JsonKey(name: 'FECHA') DateTime get fecha;@JsonKey(name: 'CLIENTE_ID') String? get clienteId;@JsonKey(name: 'CLIENTE_POTENCIAL_SN') String get isClienteProvisional;@JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') String? get clienteProvisionalNombre;@JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') String? get clienteProvisionalEmail;@JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') String? get clienteProvisionalTelefono;@JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION1') String? get clienteProvisionalDireccion1;@JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION2') String? get clienteProvisionalDireccion2;@JsonKey(name: 'CLIENTE_POTENCIAL_COD_POS') String? get clienteProvisionalCodigoPostal;@JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') String? get clienteProvisionalPoblacion;@JsonKey(name: 'CLIENTE_POTENCIAL_PROVINCIA_ID') String? get clienteProvisionalProvinciaId;@JsonKey(name: 'CLIENTE_POTENCIAL_REGION_ID') String? get clienteProvisionalRegionId;@JsonKey(name: 'CLIENTE_POTENCIAL_PAIS_ID') String? get clienteProvisionalPaisId;@JsonKey(name: 'NUM_EMPL') String get numEmpl;@JsonKey(name: 'CONTACTO') String get contacto;@JsonKey(name: 'ATENDIDO_POR') String? get atendidoPor;@JsonKey(name: 'RESUMEN') String? get resumen;@JsonKey(name: 'MARCAS_COMPETENCIA') String? get marcasCompetencia;@JsonKey(name: 'OFERTA_REALIZADA') String get ofertaRealizada;@JsonKey(name: 'INTERES_CLIENTE') String? get interesCliente;@JsonKey(name: 'PEDIDO_REALIZADO') String get pedidoRealizado;@JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') int? get codigoMotivoNoInteres;@JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') int? get codigoMotivoNoPedido;@JsonKey(name: 'CODIGO_SECTOR') int? get codigoSector;@JsonKey(name: 'CODIGO_COMPETENCIA') int? get codigoCompetencia;@JsonKey(name: 'ALMACEN_PROPIO') String? get almacenPropio;@JsonKey(name: 'CAPACIDAD') String? get capacidad;@JsonKey(name: 'FRECUENCIA_PEDIDO') String? get frecuenciaPedido;@JsonKey(name: 'LATITUD') double get latitud;@JsonKey(name: 'LONGITUD') double get longitud;@JsonKey(name: 'ENVIADA') String get enviada;@JsonKey(name: 'TRATADA') String get tratada;@JsonKey(name: 'ERROR_SYNC') String? get errorSyncMessage;
/// Create a copy of VisitaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitaLocalDTOCopyWith<VisitaLocalDTO> get copyWith => _$VisitaLocalDTOCopyWithImpl<VisitaLocalDTO>(this as VisitaLocalDTO, _$identity);

  /// Serializes this VisitaLocalDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitaLocalDTO&&(identical(other.visitaAppId, visitaAppId) || other.visitaAppId == visitaAppId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.isClienteProvisional, isClienteProvisional) || other.isClienteProvisional == isClienteProvisional)&&(identical(other.clienteProvisionalNombre, clienteProvisionalNombre) || other.clienteProvisionalNombre == clienteProvisionalNombre)&&(identical(other.clienteProvisionalEmail, clienteProvisionalEmail) || other.clienteProvisionalEmail == clienteProvisionalEmail)&&(identical(other.clienteProvisionalTelefono, clienteProvisionalTelefono) || other.clienteProvisionalTelefono == clienteProvisionalTelefono)&&(identical(other.clienteProvisionalDireccion1, clienteProvisionalDireccion1) || other.clienteProvisionalDireccion1 == clienteProvisionalDireccion1)&&(identical(other.clienteProvisionalDireccion2, clienteProvisionalDireccion2) || other.clienteProvisionalDireccion2 == clienteProvisionalDireccion2)&&(identical(other.clienteProvisionalCodigoPostal, clienteProvisionalCodigoPostal) || other.clienteProvisionalCodigoPostal == clienteProvisionalCodigoPostal)&&(identical(other.clienteProvisionalPoblacion, clienteProvisionalPoblacion) || other.clienteProvisionalPoblacion == clienteProvisionalPoblacion)&&(identical(other.clienteProvisionalProvinciaId, clienteProvisionalProvinciaId) || other.clienteProvisionalProvinciaId == clienteProvisionalProvinciaId)&&(identical(other.clienteProvisionalRegionId, clienteProvisionalRegionId) || other.clienteProvisionalRegionId == clienteProvisionalRegionId)&&(identical(other.clienteProvisionalPaisId, clienteProvisionalPaisId) || other.clienteProvisionalPaisId == clienteProvisionalPaisId)&&(identical(other.numEmpl, numEmpl) || other.numEmpl == numEmpl)&&(identical(other.contacto, contacto) || other.contacto == contacto)&&(identical(other.atendidoPor, atendidoPor) || other.atendidoPor == atendidoPor)&&(identical(other.resumen, resumen) || other.resumen == resumen)&&(identical(other.marcasCompetencia, marcasCompetencia) || other.marcasCompetencia == marcasCompetencia)&&(identical(other.ofertaRealizada, ofertaRealizada) || other.ofertaRealizada == ofertaRealizada)&&(identical(other.interesCliente, interesCliente) || other.interesCliente == interesCliente)&&(identical(other.pedidoRealizado, pedidoRealizado) || other.pedidoRealizado == pedidoRealizado)&&(identical(other.codigoMotivoNoInteres, codigoMotivoNoInteres) || other.codigoMotivoNoInteres == codigoMotivoNoInteres)&&(identical(other.codigoMotivoNoPedido, codigoMotivoNoPedido) || other.codigoMotivoNoPedido == codigoMotivoNoPedido)&&(identical(other.codigoSector, codigoSector) || other.codigoSector == codigoSector)&&(identical(other.codigoCompetencia, codigoCompetencia) || other.codigoCompetencia == codigoCompetencia)&&(identical(other.almacenPropio, almacenPropio) || other.almacenPropio == almacenPropio)&&(identical(other.capacidad, capacidad) || other.capacidad == capacidad)&&(identical(other.frecuenciaPedido, frecuenciaPedido) || other.frecuenciaPedido == frecuenciaPedido)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.tratada, tratada) || other.tratada == tratada)&&(identical(other.errorSyncMessage, errorSyncMessage) || other.errorSyncMessage == errorSyncMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,visitaAppId,fecha,clienteId,isClienteProvisional,clienteProvisionalNombre,clienteProvisionalEmail,clienteProvisionalTelefono,clienteProvisionalDireccion1,clienteProvisionalDireccion2,clienteProvisionalCodigoPostal,clienteProvisionalPoblacion,clienteProvisionalProvinciaId,clienteProvisionalRegionId,clienteProvisionalPaisId,numEmpl,contacto,atendidoPor,resumen,marcasCompetencia,ofertaRealizada,interesCliente,pedidoRealizado,codigoMotivoNoInteres,codigoMotivoNoPedido,codigoSector,codigoCompetencia,almacenPropio,capacidad,frecuenciaPedido,latitud,longitud,enviada,tratada,errorSyncMessage]);

@override
String toString() {
  return 'VisitaLocalDTO(visitaAppId: $visitaAppId, fecha: $fecha, clienteId: $clienteId, isClienteProvisional: $isClienteProvisional, clienteProvisionalNombre: $clienteProvisionalNombre, clienteProvisionalEmail: $clienteProvisionalEmail, clienteProvisionalTelefono: $clienteProvisionalTelefono, clienteProvisionalDireccion1: $clienteProvisionalDireccion1, clienteProvisionalDireccion2: $clienteProvisionalDireccion2, clienteProvisionalCodigoPostal: $clienteProvisionalCodigoPostal, clienteProvisionalPoblacion: $clienteProvisionalPoblacion, clienteProvisionalProvinciaId: $clienteProvisionalProvinciaId, clienteProvisionalRegionId: $clienteProvisionalRegionId, clienteProvisionalPaisId: $clienteProvisionalPaisId, numEmpl: $numEmpl, contacto: $contacto, atendidoPor: $atendidoPor, resumen: $resumen, marcasCompetencia: $marcasCompetencia, ofertaRealizada: $ofertaRealizada, interesCliente: $interesCliente, pedidoRealizado: $pedidoRealizado, codigoMotivoNoInteres: $codigoMotivoNoInteres, codigoMotivoNoPedido: $codigoMotivoNoPedido, codigoSector: $codigoSector, codigoCompetencia: $codigoCompetencia, almacenPropio: $almacenPropio, capacidad: $capacidad, frecuenciaPedido: $frecuenciaPedido, latitud: $latitud, longitud: $longitud, enviada: $enviada, tratada: $tratada, errorSyncMessage: $errorSyncMessage)';
}


}

/// @nodoc
abstract mixin class $VisitaLocalDTOCopyWith<$Res>  {
  factory $VisitaLocalDTOCopyWith(VisitaLocalDTO value, $Res Function(VisitaLocalDTO) _then) = _$VisitaLocalDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'COD_VISITA_APP') String? visitaAppId,@JsonKey(name: 'FECHA') DateTime fecha,@JsonKey(name: 'CLIENTE_ID') String? clienteId,@JsonKey(name: 'CLIENTE_POTENCIAL_SN') String isClienteProvisional,@JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') String? clienteProvisionalNombre,@JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') String? clienteProvisionalEmail,@JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') String? clienteProvisionalTelefono,@JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION1') String? clienteProvisionalDireccion1,@JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION2') String? clienteProvisionalDireccion2,@JsonKey(name: 'CLIENTE_POTENCIAL_COD_POS') String? clienteProvisionalCodigoPostal,@JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') String? clienteProvisionalPoblacion,@JsonKey(name: 'CLIENTE_POTENCIAL_PROVINCIA_ID') String? clienteProvisionalProvinciaId,@JsonKey(name: 'CLIENTE_POTENCIAL_REGION_ID') String? clienteProvisionalRegionId,@JsonKey(name: 'CLIENTE_POTENCIAL_PAIS_ID') String? clienteProvisionalPaisId,@JsonKey(name: 'NUM_EMPL') String numEmpl,@JsonKey(name: 'CONTACTO') String contacto,@JsonKey(name: 'ATENDIDO_POR') String? atendidoPor,@JsonKey(name: 'RESUMEN') String? resumen,@JsonKey(name: 'MARCAS_COMPETENCIA') String? marcasCompetencia,@JsonKey(name: 'OFERTA_REALIZADA') String ofertaRealizada,@JsonKey(name: 'INTERES_CLIENTE') String? interesCliente,@JsonKey(name: 'PEDIDO_REALIZADO') String pedidoRealizado,@JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') int? codigoMotivoNoInteres,@JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') int? codigoMotivoNoPedido,@JsonKey(name: 'CODIGO_SECTOR') int? codigoSector,@JsonKey(name: 'CODIGO_COMPETENCIA') int? codigoCompetencia,@JsonKey(name: 'ALMACEN_PROPIO') String? almacenPropio,@JsonKey(name: 'CAPACIDAD') String? capacidad,@JsonKey(name: 'FRECUENCIA_PEDIDO') String? frecuenciaPedido,@JsonKey(name: 'LATITUD') double latitud,@JsonKey(name: 'LONGITUD') double longitud,@JsonKey(name: 'ENVIADA') String enviada,@JsonKey(name: 'TRATADA') String tratada,@JsonKey(name: 'ERROR_SYNC') String? errorSyncMessage
});




}
/// @nodoc
class _$VisitaLocalDTOCopyWithImpl<$Res>
    implements $VisitaLocalDTOCopyWith<$Res> {
  _$VisitaLocalDTOCopyWithImpl(this._self, this._then);

  final VisitaLocalDTO _self;
  final $Res Function(VisitaLocalDTO) _then;

/// Create a copy of VisitaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visitaAppId = freezed,Object? fecha = null,Object? clienteId = freezed,Object? isClienteProvisional = null,Object? clienteProvisionalNombre = freezed,Object? clienteProvisionalEmail = freezed,Object? clienteProvisionalTelefono = freezed,Object? clienteProvisionalDireccion1 = freezed,Object? clienteProvisionalDireccion2 = freezed,Object? clienteProvisionalCodigoPostal = freezed,Object? clienteProvisionalPoblacion = freezed,Object? clienteProvisionalProvinciaId = freezed,Object? clienteProvisionalRegionId = freezed,Object? clienteProvisionalPaisId = freezed,Object? numEmpl = null,Object? contacto = null,Object? atendidoPor = freezed,Object? resumen = freezed,Object? marcasCompetencia = freezed,Object? ofertaRealizada = null,Object? interesCliente = freezed,Object? pedidoRealizado = null,Object? codigoMotivoNoInteres = freezed,Object? codigoMotivoNoPedido = freezed,Object? codigoSector = freezed,Object? codigoCompetencia = freezed,Object? almacenPropio = freezed,Object? capacidad = freezed,Object? frecuenciaPedido = freezed,Object? latitud = null,Object? longitud = null,Object? enviada = null,Object? tratada = null,Object? errorSyncMessage = freezed,}) {
  return _then(_self.copyWith(
visitaAppId: freezed == visitaAppId ? _self.visitaAppId : visitaAppId // ignore: cast_nullable_to_non_nullable
as String?,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String?,isClienteProvisional: null == isClienteProvisional ? _self.isClienteProvisional : isClienteProvisional // ignore: cast_nullable_to_non_nullable
as String,clienteProvisionalNombre: freezed == clienteProvisionalNombre ? _self.clienteProvisionalNombre : clienteProvisionalNombre // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalEmail: freezed == clienteProvisionalEmail ? _self.clienteProvisionalEmail : clienteProvisionalEmail // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalTelefono: freezed == clienteProvisionalTelefono ? _self.clienteProvisionalTelefono : clienteProvisionalTelefono // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalDireccion1: freezed == clienteProvisionalDireccion1 ? _self.clienteProvisionalDireccion1 : clienteProvisionalDireccion1 // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalDireccion2: freezed == clienteProvisionalDireccion2 ? _self.clienteProvisionalDireccion2 : clienteProvisionalDireccion2 // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalCodigoPostal: freezed == clienteProvisionalCodigoPostal ? _self.clienteProvisionalCodigoPostal : clienteProvisionalCodigoPostal // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalPoblacion: freezed == clienteProvisionalPoblacion ? _self.clienteProvisionalPoblacion : clienteProvisionalPoblacion // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalProvinciaId: freezed == clienteProvisionalProvinciaId ? _self.clienteProvisionalProvinciaId : clienteProvisionalProvinciaId // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalRegionId: freezed == clienteProvisionalRegionId ? _self.clienteProvisionalRegionId : clienteProvisionalRegionId // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalPaisId: freezed == clienteProvisionalPaisId ? _self.clienteProvisionalPaisId : clienteProvisionalPaisId // ignore: cast_nullable_to_non_nullable
as String?,numEmpl: null == numEmpl ? _self.numEmpl : numEmpl // ignore: cast_nullable_to_non_nullable
as String,contacto: null == contacto ? _self.contacto : contacto // ignore: cast_nullable_to_non_nullable
as String,atendidoPor: freezed == atendidoPor ? _self.atendidoPor : atendidoPor // ignore: cast_nullable_to_non_nullable
as String?,resumen: freezed == resumen ? _self.resumen : resumen // ignore: cast_nullable_to_non_nullable
as String?,marcasCompetencia: freezed == marcasCompetencia ? _self.marcasCompetencia : marcasCompetencia // ignore: cast_nullable_to_non_nullable
as String?,ofertaRealizada: null == ofertaRealizada ? _self.ofertaRealizada : ofertaRealizada // ignore: cast_nullable_to_non_nullable
as String,interesCliente: freezed == interesCliente ? _self.interesCliente : interesCliente // ignore: cast_nullable_to_non_nullable
as String?,pedidoRealizado: null == pedidoRealizado ? _self.pedidoRealizado : pedidoRealizado // ignore: cast_nullable_to_non_nullable
as String,codigoMotivoNoInteres: freezed == codigoMotivoNoInteres ? _self.codigoMotivoNoInteres : codigoMotivoNoInteres // ignore: cast_nullable_to_non_nullable
as int?,codigoMotivoNoPedido: freezed == codigoMotivoNoPedido ? _self.codigoMotivoNoPedido : codigoMotivoNoPedido // ignore: cast_nullable_to_non_nullable
as int?,codigoSector: freezed == codigoSector ? _self.codigoSector : codigoSector // ignore: cast_nullable_to_non_nullable
as int?,codigoCompetencia: freezed == codigoCompetencia ? _self.codigoCompetencia : codigoCompetencia // ignore: cast_nullable_to_non_nullable
as int?,almacenPropio: freezed == almacenPropio ? _self.almacenPropio : almacenPropio // ignore: cast_nullable_to_non_nullable
as String?,capacidad: freezed == capacidad ? _self.capacidad : capacidad // ignore: cast_nullable_to_non_nullable
as String?,frecuenciaPedido: freezed == frecuenciaPedido ? _self.frecuenciaPedido : frecuenciaPedido // ignore: cast_nullable_to_non_nullable
as String?,latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as String,tratada: null == tratada ? _self.tratada : tratada // ignore: cast_nullable_to_non_nullable
as String,errorSyncMessage: freezed == errorSyncMessage ? _self.errorSyncMessage : errorSyncMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VisitaLocalDTO].
extension VisitaLocalDTOPatterns on VisitaLocalDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitaLocalDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitaLocalDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitaLocalDTO value)  $default,){
final _that = this;
switch (_that) {
case _VisitaLocalDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitaLocalDTO value)?  $default,){
final _that = this;
switch (_that) {
case _VisitaLocalDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'COD_VISITA_APP')  String? visitaAppId, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'CLIENTE_ID')  String? clienteId, @JsonKey(name: 'CLIENTE_POTENCIAL_SN')  String isClienteProvisional, @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')  String? clienteProvisionalNombre, @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')  String? clienteProvisionalEmail, @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')  String? clienteProvisionalTelefono, @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION1')  String? clienteProvisionalDireccion1, @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION2')  String? clienteProvisionalDireccion2, @JsonKey(name: 'CLIENTE_POTENCIAL_COD_POS')  String? clienteProvisionalCodigoPostal, @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')  String? clienteProvisionalPoblacion, @JsonKey(name: 'CLIENTE_POTENCIAL_PROVINCIA_ID')  String? clienteProvisionalProvinciaId, @JsonKey(name: 'CLIENTE_POTENCIAL_REGION_ID')  String? clienteProvisionalRegionId, @JsonKey(name: 'CLIENTE_POTENCIAL_PAIS_ID')  String? clienteProvisionalPaisId, @JsonKey(name: 'NUM_EMPL')  String numEmpl, @JsonKey(name: 'CONTACTO')  String contacto, @JsonKey(name: 'ATENDIDO_POR')  String? atendidoPor, @JsonKey(name: 'RESUMEN')  String? resumen, @JsonKey(name: 'MARCAS_COMPETENCIA')  String? marcasCompetencia, @JsonKey(name: 'OFERTA_REALIZADA')  String ofertaRealizada, @JsonKey(name: 'INTERES_CLIENTE')  String? interesCliente, @JsonKey(name: 'PEDIDO_REALIZADO')  String pedidoRealizado, @JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES')  int? codigoMotivoNoInteres, @JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO')  int? codigoMotivoNoPedido, @JsonKey(name: 'CODIGO_SECTOR')  int? codigoSector, @JsonKey(name: 'CODIGO_COMPETENCIA')  int? codigoCompetencia, @JsonKey(name: 'ALMACEN_PROPIO')  String? almacenPropio, @JsonKey(name: 'CAPACIDAD')  String? capacidad, @JsonKey(name: 'FRECUENCIA_PEDIDO')  String? frecuenciaPedido, @JsonKey(name: 'LATITUD')  double latitud, @JsonKey(name: 'LONGITUD')  double longitud, @JsonKey(name: 'ENVIADA')  String enviada, @JsonKey(name: 'TRATADA')  String tratada, @JsonKey(name: 'ERROR_SYNC')  String? errorSyncMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitaLocalDTO() when $default != null:
return $default(_that.visitaAppId,_that.fecha,_that.clienteId,_that.isClienteProvisional,_that.clienteProvisionalNombre,_that.clienteProvisionalEmail,_that.clienteProvisionalTelefono,_that.clienteProvisionalDireccion1,_that.clienteProvisionalDireccion2,_that.clienteProvisionalCodigoPostal,_that.clienteProvisionalPoblacion,_that.clienteProvisionalProvinciaId,_that.clienteProvisionalRegionId,_that.clienteProvisionalPaisId,_that.numEmpl,_that.contacto,_that.atendidoPor,_that.resumen,_that.marcasCompetencia,_that.ofertaRealizada,_that.interesCliente,_that.pedidoRealizado,_that.codigoMotivoNoInteres,_that.codigoMotivoNoPedido,_that.codigoSector,_that.codigoCompetencia,_that.almacenPropio,_that.capacidad,_that.frecuenciaPedido,_that.latitud,_that.longitud,_that.enviada,_that.tratada,_that.errorSyncMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'COD_VISITA_APP')  String? visitaAppId, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'CLIENTE_ID')  String? clienteId, @JsonKey(name: 'CLIENTE_POTENCIAL_SN')  String isClienteProvisional, @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')  String? clienteProvisionalNombre, @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')  String? clienteProvisionalEmail, @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')  String? clienteProvisionalTelefono, @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION1')  String? clienteProvisionalDireccion1, @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION2')  String? clienteProvisionalDireccion2, @JsonKey(name: 'CLIENTE_POTENCIAL_COD_POS')  String? clienteProvisionalCodigoPostal, @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')  String? clienteProvisionalPoblacion, @JsonKey(name: 'CLIENTE_POTENCIAL_PROVINCIA_ID')  String? clienteProvisionalProvinciaId, @JsonKey(name: 'CLIENTE_POTENCIAL_REGION_ID')  String? clienteProvisionalRegionId, @JsonKey(name: 'CLIENTE_POTENCIAL_PAIS_ID')  String? clienteProvisionalPaisId, @JsonKey(name: 'NUM_EMPL')  String numEmpl, @JsonKey(name: 'CONTACTO')  String contacto, @JsonKey(name: 'ATENDIDO_POR')  String? atendidoPor, @JsonKey(name: 'RESUMEN')  String? resumen, @JsonKey(name: 'MARCAS_COMPETENCIA')  String? marcasCompetencia, @JsonKey(name: 'OFERTA_REALIZADA')  String ofertaRealizada, @JsonKey(name: 'INTERES_CLIENTE')  String? interesCliente, @JsonKey(name: 'PEDIDO_REALIZADO')  String pedidoRealizado, @JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES')  int? codigoMotivoNoInteres, @JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO')  int? codigoMotivoNoPedido, @JsonKey(name: 'CODIGO_SECTOR')  int? codigoSector, @JsonKey(name: 'CODIGO_COMPETENCIA')  int? codigoCompetencia, @JsonKey(name: 'ALMACEN_PROPIO')  String? almacenPropio, @JsonKey(name: 'CAPACIDAD')  String? capacidad, @JsonKey(name: 'FRECUENCIA_PEDIDO')  String? frecuenciaPedido, @JsonKey(name: 'LATITUD')  double latitud, @JsonKey(name: 'LONGITUD')  double longitud, @JsonKey(name: 'ENVIADA')  String enviada, @JsonKey(name: 'TRATADA')  String tratada, @JsonKey(name: 'ERROR_SYNC')  String? errorSyncMessage)  $default,) {final _that = this;
switch (_that) {
case _VisitaLocalDTO():
return $default(_that.visitaAppId,_that.fecha,_that.clienteId,_that.isClienteProvisional,_that.clienteProvisionalNombre,_that.clienteProvisionalEmail,_that.clienteProvisionalTelefono,_that.clienteProvisionalDireccion1,_that.clienteProvisionalDireccion2,_that.clienteProvisionalCodigoPostal,_that.clienteProvisionalPoblacion,_that.clienteProvisionalProvinciaId,_that.clienteProvisionalRegionId,_that.clienteProvisionalPaisId,_that.numEmpl,_that.contacto,_that.atendidoPor,_that.resumen,_that.marcasCompetencia,_that.ofertaRealizada,_that.interesCliente,_that.pedidoRealizado,_that.codigoMotivoNoInteres,_that.codigoMotivoNoPedido,_that.codigoSector,_that.codigoCompetencia,_that.almacenPropio,_that.capacidad,_that.frecuenciaPedido,_that.latitud,_that.longitud,_that.enviada,_that.tratada,_that.errorSyncMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'COD_VISITA_APP')  String? visitaAppId, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'CLIENTE_ID')  String? clienteId, @JsonKey(name: 'CLIENTE_POTENCIAL_SN')  String isClienteProvisional, @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')  String? clienteProvisionalNombre, @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')  String? clienteProvisionalEmail, @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')  String? clienteProvisionalTelefono, @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION1')  String? clienteProvisionalDireccion1, @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION2')  String? clienteProvisionalDireccion2, @JsonKey(name: 'CLIENTE_POTENCIAL_COD_POS')  String? clienteProvisionalCodigoPostal, @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')  String? clienteProvisionalPoblacion, @JsonKey(name: 'CLIENTE_POTENCIAL_PROVINCIA_ID')  String? clienteProvisionalProvinciaId, @JsonKey(name: 'CLIENTE_POTENCIAL_REGION_ID')  String? clienteProvisionalRegionId, @JsonKey(name: 'CLIENTE_POTENCIAL_PAIS_ID')  String? clienteProvisionalPaisId, @JsonKey(name: 'NUM_EMPL')  String numEmpl, @JsonKey(name: 'CONTACTO')  String contacto, @JsonKey(name: 'ATENDIDO_POR')  String? atendidoPor, @JsonKey(name: 'RESUMEN')  String? resumen, @JsonKey(name: 'MARCAS_COMPETENCIA')  String? marcasCompetencia, @JsonKey(name: 'OFERTA_REALIZADA')  String ofertaRealizada, @JsonKey(name: 'INTERES_CLIENTE')  String? interesCliente, @JsonKey(name: 'PEDIDO_REALIZADO')  String pedidoRealizado, @JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES')  int? codigoMotivoNoInteres, @JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO')  int? codigoMotivoNoPedido, @JsonKey(name: 'CODIGO_SECTOR')  int? codigoSector, @JsonKey(name: 'CODIGO_COMPETENCIA')  int? codigoCompetencia, @JsonKey(name: 'ALMACEN_PROPIO')  String? almacenPropio, @JsonKey(name: 'CAPACIDAD')  String? capacidad, @JsonKey(name: 'FRECUENCIA_PEDIDO')  String? frecuenciaPedido, @JsonKey(name: 'LATITUD')  double latitud, @JsonKey(name: 'LONGITUD')  double longitud, @JsonKey(name: 'ENVIADA')  String enviada, @JsonKey(name: 'TRATADA')  String tratada, @JsonKey(name: 'ERROR_SYNC')  String? errorSyncMessage)?  $default,) {final _that = this;
switch (_that) {
case _VisitaLocalDTO() when $default != null:
return $default(_that.visitaAppId,_that.fecha,_that.clienteId,_that.isClienteProvisional,_that.clienteProvisionalNombre,_that.clienteProvisionalEmail,_that.clienteProvisionalTelefono,_that.clienteProvisionalDireccion1,_that.clienteProvisionalDireccion2,_that.clienteProvisionalCodigoPostal,_that.clienteProvisionalPoblacion,_that.clienteProvisionalProvinciaId,_that.clienteProvisionalRegionId,_that.clienteProvisionalPaisId,_that.numEmpl,_that.contacto,_that.atendidoPor,_that.resumen,_that.marcasCompetencia,_that.ofertaRealizada,_that.interesCliente,_that.pedidoRealizado,_that.codigoMotivoNoInteres,_that.codigoMotivoNoPedido,_that.codigoSector,_that.codigoCompetencia,_that.almacenPropio,_that.capacidad,_that.frecuenciaPedido,_that.latitud,_that.longitud,_that.enviada,_that.tratada,_that.errorSyncMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisitaLocalDTO extends VisitaLocalDTO {
  const _VisitaLocalDTO({@JsonKey(name: 'COD_VISITA_APP') this.visitaAppId, @JsonKey(name: 'FECHA') required this.fecha, @JsonKey(name: 'CLIENTE_ID') this.clienteId, @JsonKey(name: 'CLIENTE_POTENCIAL_SN') required this.isClienteProvisional, @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') this.clienteProvisionalNombre, @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') this.clienteProvisionalEmail, @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') this.clienteProvisionalTelefono, @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION1') this.clienteProvisionalDireccion1, @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION2') this.clienteProvisionalDireccion2, @JsonKey(name: 'CLIENTE_POTENCIAL_COD_POS') this.clienteProvisionalCodigoPostal, @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') this.clienteProvisionalPoblacion, @JsonKey(name: 'CLIENTE_POTENCIAL_PROVINCIA_ID') this.clienteProvisionalProvinciaId, @JsonKey(name: 'CLIENTE_POTENCIAL_REGION_ID') this.clienteProvisionalRegionId, @JsonKey(name: 'CLIENTE_POTENCIAL_PAIS_ID') this.clienteProvisionalPaisId, @JsonKey(name: 'NUM_EMPL') required this.numEmpl, @JsonKey(name: 'CONTACTO') required this.contacto, @JsonKey(name: 'ATENDIDO_POR') this.atendidoPor, @JsonKey(name: 'RESUMEN') this.resumen, @JsonKey(name: 'MARCAS_COMPETENCIA') this.marcasCompetencia, @JsonKey(name: 'OFERTA_REALIZADA') required this.ofertaRealizada, @JsonKey(name: 'INTERES_CLIENTE') required this.interesCliente, @JsonKey(name: 'PEDIDO_REALIZADO') required this.pedidoRealizado, @JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') this.codigoMotivoNoInteres, @JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') this.codigoMotivoNoPedido, @JsonKey(name: 'CODIGO_SECTOR') this.codigoSector, @JsonKey(name: 'CODIGO_COMPETENCIA') this.codigoCompetencia, @JsonKey(name: 'ALMACEN_PROPIO') required this.almacenPropio, @JsonKey(name: 'CAPACIDAD') required this.capacidad, @JsonKey(name: 'FRECUENCIA_PEDIDO') required this.frecuenciaPedido, @JsonKey(name: 'LATITUD') required this.latitud, @JsonKey(name: 'LONGITUD') required this.longitud, @JsonKey(name: 'ENVIADA') this.enviada = 'N', @JsonKey(name: 'TRATADA') this.tratada = 'N', @JsonKey(name: 'ERROR_SYNC') this.errorSyncMessage}): super._();
  factory _VisitaLocalDTO.fromJson(Map<String, dynamic> json) => _$VisitaLocalDTOFromJson(json);

@override@JsonKey(name: 'COD_VISITA_APP') final  String? visitaAppId;
@override@JsonKey(name: 'FECHA') final  DateTime fecha;
@override@JsonKey(name: 'CLIENTE_ID') final  String? clienteId;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_SN') final  String isClienteProvisional;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') final  String? clienteProvisionalNombre;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') final  String? clienteProvisionalEmail;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') final  String? clienteProvisionalTelefono;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION1') final  String? clienteProvisionalDireccion1;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION2') final  String? clienteProvisionalDireccion2;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_COD_POS') final  String? clienteProvisionalCodigoPostal;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') final  String? clienteProvisionalPoblacion;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_PROVINCIA_ID') final  String? clienteProvisionalProvinciaId;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_REGION_ID') final  String? clienteProvisionalRegionId;
@override@JsonKey(name: 'CLIENTE_POTENCIAL_PAIS_ID') final  String? clienteProvisionalPaisId;
@override@JsonKey(name: 'NUM_EMPL') final  String numEmpl;
@override@JsonKey(name: 'CONTACTO') final  String contacto;
@override@JsonKey(name: 'ATENDIDO_POR') final  String? atendidoPor;
@override@JsonKey(name: 'RESUMEN') final  String? resumen;
@override@JsonKey(name: 'MARCAS_COMPETENCIA') final  String? marcasCompetencia;
@override@JsonKey(name: 'OFERTA_REALIZADA') final  String ofertaRealizada;
@override@JsonKey(name: 'INTERES_CLIENTE') final  String? interesCliente;
@override@JsonKey(name: 'PEDIDO_REALIZADO') final  String pedidoRealizado;
@override@JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') final  int? codigoMotivoNoInteres;
@override@JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') final  int? codigoMotivoNoPedido;
@override@JsonKey(name: 'CODIGO_SECTOR') final  int? codigoSector;
@override@JsonKey(name: 'CODIGO_COMPETENCIA') final  int? codigoCompetencia;
@override@JsonKey(name: 'ALMACEN_PROPIO') final  String? almacenPropio;
@override@JsonKey(name: 'CAPACIDAD') final  String? capacidad;
@override@JsonKey(name: 'FRECUENCIA_PEDIDO') final  String? frecuenciaPedido;
@override@JsonKey(name: 'LATITUD') final  double latitud;
@override@JsonKey(name: 'LONGITUD') final  double longitud;
@override@JsonKey(name: 'ENVIADA') final  String enviada;
@override@JsonKey(name: 'TRATADA') final  String tratada;
@override@JsonKey(name: 'ERROR_SYNC') final  String? errorSyncMessage;

/// Create a copy of VisitaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitaLocalDTOCopyWith<_VisitaLocalDTO> get copyWith => __$VisitaLocalDTOCopyWithImpl<_VisitaLocalDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisitaLocalDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitaLocalDTO&&(identical(other.visitaAppId, visitaAppId) || other.visitaAppId == visitaAppId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.isClienteProvisional, isClienteProvisional) || other.isClienteProvisional == isClienteProvisional)&&(identical(other.clienteProvisionalNombre, clienteProvisionalNombre) || other.clienteProvisionalNombre == clienteProvisionalNombre)&&(identical(other.clienteProvisionalEmail, clienteProvisionalEmail) || other.clienteProvisionalEmail == clienteProvisionalEmail)&&(identical(other.clienteProvisionalTelefono, clienteProvisionalTelefono) || other.clienteProvisionalTelefono == clienteProvisionalTelefono)&&(identical(other.clienteProvisionalDireccion1, clienteProvisionalDireccion1) || other.clienteProvisionalDireccion1 == clienteProvisionalDireccion1)&&(identical(other.clienteProvisionalDireccion2, clienteProvisionalDireccion2) || other.clienteProvisionalDireccion2 == clienteProvisionalDireccion2)&&(identical(other.clienteProvisionalCodigoPostal, clienteProvisionalCodigoPostal) || other.clienteProvisionalCodigoPostal == clienteProvisionalCodigoPostal)&&(identical(other.clienteProvisionalPoblacion, clienteProvisionalPoblacion) || other.clienteProvisionalPoblacion == clienteProvisionalPoblacion)&&(identical(other.clienteProvisionalProvinciaId, clienteProvisionalProvinciaId) || other.clienteProvisionalProvinciaId == clienteProvisionalProvinciaId)&&(identical(other.clienteProvisionalRegionId, clienteProvisionalRegionId) || other.clienteProvisionalRegionId == clienteProvisionalRegionId)&&(identical(other.clienteProvisionalPaisId, clienteProvisionalPaisId) || other.clienteProvisionalPaisId == clienteProvisionalPaisId)&&(identical(other.numEmpl, numEmpl) || other.numEmpl == numEmpl)&&(identical(other.contacto, contacto) || other.contacto == contacto)&&(identical(other.atendidoPor, atendidoPor) || other.atendidoPor == atendidoPor)&&(identical(other.resumen, resumen) || other.resumen == resumen)&&(identical(other.marcasCompetencia, marcasCompetencia) || other.marcasCompetencia == marcasCompetencia)&&(identical(other.ofertaRealizada, ofertaRealizada) || other.ofertaRealizada == ofertaRealizada)&&(identical(other.interesCliente, interesCliente) || other.interesCliente == interesCliente)&&(identical(other.pedidoRealizado, pedidoRealizado) || other.pedidoRealizado == pedidoRealizado)&&(identical(other.codigoMotivoNoInteres, codigoMotivoNoInteres) || other.codigoMotivoNoInteres == codigoMotivoNoInteres)&&(identical(other.codigoMotivoNoPedido, codigoMotivoNoPedido) || other.codigoMotivoNoPedido == codigoMotivoNoPedido)&&(identical(other.codigoSector, codigoSector) || other.codigoSector == codigoSector)&&(identical(other.codigoCompetencia, codigoCompetencia) || other.codigoCompetencia == codigoCompetencia)&&(identical(other.almacenPropio, almacenPropio) || other.almacenPropio == almacenPropio)&&(identical(other.capacidad, capacidad) || other.capacidad == capacidad)&&(identical(other.frecuenciaPedido, frecuenciaPedido) || other.frecuenciaPedido == frecuenciaPedido)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.tratada, tratada) || other.tratada == tratada)&&(identical(other.errorSyncMessage, errorSyncMessage) || other.errorSyncMessage == errorSyncMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,visitaAppId,fecha,clienteId,isClienteProvisional,clienteProvisionalNombre,clienteProvisionalEmail,clienteProvisionalTelefono,clienteProvisionalDireccion1,clienteProvisionalDireccion2,clienteProvisionalCodigoPostal,clienteProvisionalPoblacion,clienteProvisionalProvinciaId,clienteProvisionalRegionId,clienteProvisionalPaisId,numEmpl,contacto,atendidoPor,resumen,marcasCompetencia,ofertaRealizada,interesCliente,pedidoRealizado,codigoMotivoNoInteres,codigoMotivoNoPedido,codigoSector,codigoCompetencia,almacenPropio,capacidad,frecuenciaPedido,latitud,longitud,enviada,tratada,errorSyncMessage]);

@override
String toString() {
  return 'VisitaLocalDTO(visitaAppId: $visitaAppId, fecha: $fecha, clienteId: $clienteId, isClienteProvisional: $isClienteProvisional, clienteProvisionalNombre: $clienteProvisionalNombre, clienteProvisionalEmail: $clienteProvisionalEmail, clienteProvisionalTelefono: $clienteProvisionalTelefono, clienteProvisionalDireccion1: $clienteProvisionalDireccion1, clienteProvisionalDireccion2: $clienteProvisionalDireccion2, clienteProvisionalCodigoPostal: $clienteProvisionalCodigoPostal, clienteProvisionalPoblacion: $clienteProvisionalPoblacion, clienteProvisionalProvinciaId: $clienteProvisionalProvinciaId, clienteProvisionalRegionId: $clienteProvisionalRegionId, clienteProvisionalPaisId: $clienteProvisionalPaisId, numEmpl: $numEmpl, contacto: $contacto, atendidoPor: $atendidoPor, resumen: $resumen, marcasCompetencia: $marcasCompetencia, ofertaRealizada: $ofertaRealizada, interesCliente: $interesCliente, pedidoRealizado: $pedidoRealizado, codigoMotivoNoInteres: $codigoMotivoNoInteres, codigoMotivoNoPedido: $codigoMotivoNoPedido, codigoSector: $codigoSector, codigoCompetencia: $codigoCompetencia, almacenPropio: $almacenPropio, capacidad: $capacidad, frecuenciaPedido: $frecuenciaPedido, latitud: $latitud, longitud: $longitud, enviada: $enviada, tratada: $tratada, errorSyncMessage: $errorSyncMessage)';
}


}

/// @nodoc
abstract mixin class _$VisitaLocalDTOCopyWith<$Res> implements $VisitaLocalDTOCopyWith<$Res> {
  factory _$VisitaLocalDTOCopyWith(_VisitaLocalDTO value, $Res Function(_VisitaLocalDTO) _then) = __$VisitaLocalDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'COD_VISITA_APP') String? visitaAppId,@JsonKey(name: 'FECHA') DateTime fecha,@JsonKey(name: 'CLIENTE_ID') String? clienteId,@JsonKey(name: 'CLIENTE_POTENCIAL_SN') String isClienteProvisional,@JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') String? clienteProvisionalNombre,@JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') String? clienteProvisionalEmail,@JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO') String? clienteProvisionalTelefono,@JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION1') String? clienteProvisionalDireccion1,@JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION2') String? clienteProvisionalDireccion2,@JsonKey(name: 'CLIENTE_POTENCIAL_COD_POS') String? clienteProvisionalCodigoPostal,@JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION') String? clienteProvisionalPoblacion,@JsonKey(name: 'CLIENTE_POTENCIAL_PROVINCIA_ID') String? clienteProvisionalProvinciaId,@JsonKey(name: 'CLIENTE_POTENCIAL_REGION_ID') String? clienteProvisionalRegionId,@JsonKey(name: 'CLIENTE_POTENCIAL_PAIS_ID') String? clienteProvisionalPaisId,@JsonKey(name: 'NUM_EMPL') String numEmpl,@JsonKey(name: 'CONTACTO') String contacto,@JsonKey(name: 'ATENDIDO_POR') String? atendidoPor,@JsonKey(name: 'RESUMEN') String? resumen,@JsonKey(name: 'MARCAS_COMPETENCIA') String? marcasCompetencia,@JsonKey(name: 'OFERTA_REALIZADA') String ofertaRealizada,@JsonKey(name: 'INTERES_CLIENTE') String? interesCliente,@JsonKey(name: 'PEDIDO_REALIZADO') String pedidoRealizado,@JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') int? codigoMotivoNoInteres,@JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') int? codigoMotivoNoPedido,@JsonKey(name: 'CODIGO_SECTOR') int? codigoSector,@JsonKey(name: 'CODIGO_COMPETENCIA') int? codigoCompetencia,@JsonKey(name: 'ALMACEN_PROPIO') String? almacenPropio,@JsonKey(name: 'CAPACIDAD') String? capacidad,@JsonKey(name: 'FRECUENCIA_PEDIDO') String? frecuenciaPedido,@JsonKey(name: 'LATITUD') double latitud,@JsonKey(name: 'LONGITUD') double longitud,@JsonKey(name: 'ENVIADA') String enviada,@JsonKey(name: 'TRATADA') String tratada,@JsonKey(name: 'ERROR_SYNC') String? errorSyncMessage
});




}
/// @nodoc
class __$VisitaLocalDTOCopyWithImpl<$Res>
    implements _$VisitaLocalDTOCopyWith<$Res> {
  __$VisitaLocalDTOCopyWithImpl(this._self, this._then);

  final _VisitaLocalDTO _self;
  final $Res Function(_VisitaLocalDTO) _then;

/// Create a copy of VisitaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visitaAppId = freezed,Object? fecha = null,Object? clienteId = freezed,Object? isClienteProvisional = null,Object? clienteProvisionalNombre = freezed,Object? clienteProvisionalEmail = freezed,Object? clienteProvisionalTelefono = freezed,Object? clienteProvisionalDireccion1 = freezed,Object? clienteProvisionalDireccion2 = freezed,Object? clienteProvisionalCodigoPostal = freezed,Object? clienteProvisionalPoblacion = freezed,Object? clienteProvisionalProvinciaId = freezed,Object? clienteProvisionalRegionId = freezed,Object? clienteProvisionalPaisId = freezed,Object? numEmpl = null,Object? contacto = null,Object? atendidoPor = freezed,Object? resumen = freezed,Object? marcasCompetencia = freezed,Object? ofertaRealizada = null,Object? interesCliente = freezed,Object? pedidoRealizado = null,Object? codigoMotivoNoInteres = freezed,Object? codigoMotivoNoPedido = freezed,Object? codigoSector = freezed,Object? codigoCompetencia = freezed,Object? almacenPropio = freezed,Object? capacidad = freezed,Object? frecuenciaPedido = freezed,Object? latitud = null,Object? longitud = null,Object? enviada = null,Object? tratada = null,Object? errorSyncMessage = freezed,}) {
  return _then(_VisitaLocalDTO(
visitaAppId: freezed == visitaAppId ? _self.visitaAppId : visitaAppId // ignore: cast_nullable_to_non_nullable
as String?,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String?,isClienteProvisional: null == isClienteProvisional ? _self.isClienteProvisional : isClienteProvisional // ignore: cast_nullable_to_non_nullable
as String,clienteProvisionalNombre: freezed == clienteProvisionalNombre ? _self.clienteProvisionalNombre : clienteProvisionalNombre // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalEmail: freezed == clienteProvisionalEmail ? _self.clienteProvisionalEmail : clienteProvisionalEmail // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalTelefono: freezed == clienteProvisionalTelefono ? _self.clienteProvisionalTelefono : clienteProvisionalTelefono // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalDireccion1: freezed == clienteProvisionalDireccion1 ? _self.clienteProvisionalDireccion1 : clienteProvisionalDireccion1 // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalDireccion2: freezed == clienteProvisionalDireccion2 ? _self.clienteProvisionalDireccion2 : clienteProvisionalDireccion2 // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalCodigoPostal: freezed == clienteProvisionalCodigoPostal ? _self.clienteProvisionalCodigoPostal : clienteProvisionalCodigoPostal // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalPoblacion: freezed == clienteProvisionalPoblacion ? _self.clienteProvisionalPoblacion : clienteProvisionalPoblacion // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalProvinciaId: freezed == clienteProvisionalProvinciaId ? _self.clienteProvisionalProvinciaId : clienteProvisionalProvinciaId // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalRegionId: freezed == clienteProvisionalRegionId ? _self.clienteProvisionalRegionId : clienteProvisionalRegionId // ignore: cast_nullable_to_non_nullable
as String?,clienteProvisionalPaisId: freezed == clienteProvisionalPaisId ? _self.clienteProvisionalPaisId : clienteProvisionalPaisId // ignore: cast_nullable_to_non_nullable
as String?,numEmpl: null == numEmpl ? _self.numEmpl : numEmpl // ignore: cast_nullable_to_non_nullable
as String,contacto: null == contacto ? _self.contacto : contacto // ignore: cast_nullable_to_non_nullable
as String,atendidoPor: freezed == atendidoPor ? _self.atendidoPor : atendidoPor // ignore: cast_nullable_to_non_nullable
as String?,resumen: freezed == resumen ? _self.resumen : resumen // ignore: cast_nullable_to_non_nullable
as String?,marcasCompetencia: freezed == marcasCompetencia ? _self.marcasCompetencia : marcasCompetencia // ignore: cast_nullable_to_non_nullable
as String?,ofertaRealizada: null == ofertaRealizada ? _self.ofertaRealizada : ofertaRealizada // ignore: cast_nullable_to_non_nullable
as String,interesCliente: freezed == interesCliente ? _self.interesCliente : interesCliente // ignore: cast_nullable_to_non_nullable
as String?,pedidoRealizado: null == pedidoRealizado ? _self.pedidoRealizado : pedidoRealizado // ignore: cast_nullable_to_non_nullable
as String,codigoMotivoNoInteres: freezed == codigoMotivoNoInteres ? _self.codigoMotivoNoInteres : codigoMotivoNoInteres // ignore: cast_nullable_to_non_nullable
as int?,codigoMotivoNoPedido: freezed == codigoMotivoNoPedido ? _self.codigoMotivoNoPedido : codigoMotivoNoPedido // ignore: cast_nullable_to_non_nullable
as int?,codigoSector: freezed == codigoSector ? _self.codigoSector : codigoSector // ignore: cast_nullable_to_non_nullable
as int?,codigoCompetencia: freezed == codigoCompetencia ? _self.codigoCompetencia : codigoCompetencia // ignore: cast_nullable_to_non_nullable
as int?,almacenPropio: freezed == almacenPropio ? _self.almacenPropio : almacenPropio // ignore: cast_nullable_to_non_nullable
as String?,capacidad: freezed == capacidad ? _self.capacidad : capacidad // ignore: cast_nullable_to_non_nullable
as String?,frecuenciaPedido: freezed == frecuenciaPedido ? _self.frecuenciaPedido : frecuenciaPedido // ignore: cast_nullable_to_non_nullable
as String?,latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as String,tratada: null == tratada ? _self.tratada : tratada // ignore: cast_nullable_to_non_nullable
as String,errorSyncMessage: freezed == errorSyncMessage ? _self.errorSyncMessage : errorSyncMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
