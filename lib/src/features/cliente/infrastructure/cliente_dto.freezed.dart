// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteDTO {

@JsonKey(name: 'CLIENTE_ID') String get id;@JsonKey(name: 'NOMBRE') String get nombreCliente;@JsonKey(name: 'NIF') String? get nif;@JsonKey(name: 'NOMBRE_FISCAL') String get nombreFiscal;@JsonKey(name: 'DIRECCION_FISCAL1') String? get direccionFiscal1;@JsonKey(name: 'DIRECCION_FISCAL2') String? get direccionFiscal2;@JsonKey(name: 'CODIGO_POSTAL_FISCAL') String? get codigoPostalFiscal;@JsonKey(name: 'POBLACION_FISCAL') String? get poblacionFiscal;@JsonKey(name: 'PAIS_ID_FISCAL') String? get paisFiscalId;@JsonKey(name: 'PROVINCIA_FISCAL') String? get provinciaFiscal;@JsonKey(name: 'LATITUD_FISCAL') double get latitudFiscal;@JsonKey(name: 'LONGITUD_FISCAL') double get longitudFiscal;@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'IVA') double get iva;@JsonKey(name: 'VENTAS_ANYO_ACTUAL') double get ventasAnyoActual;@JsonKey(name: 'VENTAS_ANYO_ANTERIOR') double get ventasAnyoAnterior;@JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') double get ventasHaceDosAnyos;@JsonKey(name: 'MARGEN_ANYO_ACTUAL') double get margenAnyoActual;@JsonKey(name: 'MARGEN_ANYO_ANTERIOR') double get margenAnyoAnterior;@JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') double get margenHaceDosAnyos;@JsonKey(name: 'PORCENTAJE_ABONOS') double get porcentajeAbonos;@JsonKey(name: 'PORCENTAJE_GARANTIAS') double get porcentajeGarantias;@JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') String? get centralCompras;@JsonKey(name: 'URL_WEB') String? get urlWeb;@JsonKey(name: 'DIVISA_ID') String? get divisaId;@JsonKey(name: 'TARIFA_ID') String? get tarifaId;@JsonKey(name: 'TARIFA_DESCRIPCION') String? get tarifaDescripcion;@JsonKey(name: 'DESCUENTO_GENERAL_ID') String? get descuentoGeneralId;@JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION') String? get descripcionDescuentoGeneral;@JsonKey(name: 'TIPO_CALCULO_PRECIO') String get tipoCalculoPrecio;@JsonKey(name: 'PLAZO_COBRO_ID') String? get plazoDeCobroId;@JsonKey(name: 'METODO_COBRO_ID') String? get metodoDeCobroId;@JsonKey(name: 'DESCUENTO_PRONTO_PAGO') double get descuentoProntoPago;@JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO') double get riesgoConcedidoInterno;@JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA') DateTime? get riesgoConcedidoInternoDate;@JsonKey(name: 'RIESGO_CONCEDIDO_COFACE') double get riesgoConcedidoCoafe;@JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA') DateTime? get riesgoConcedidoCoafeFecha;@JsonKey(name: 'RIESGO_CONCEDIDO') double? get riesgoConcedido;@JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE') double? get riesgoPendienteCobroVencido;@JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE') double? get riesgoPendienteCobroNoVencido;@JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE') double? get riesgoPendienteServir;@JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE') double? get riesgoPendienteFacturar;@JsonKey(name: 'OBSERVACIONES_INTERNAS') String? get obvservacionesInternas;@JsonKey(name: 'CLIENTE_POTENCIAL') String? get clientePotencial;@JsonKey(name: 'ESTADO_POTENCIAL_ID') String? get clienteEstadoPotencialId;@JsonKey(name: 'TIPO_POTENCIAL_ID') String? get clienteTipoPotencialId;@JsonKey(name: 'REPRESENTANTE1_ID') String? get representante1Id;@JsonKey(name: 'REPRESENTANTE1_NOMBRE') String? get representante1Nombre;@JsonKey(name: 'REPRESENTANTE2_ID') String? get representante2Id;@JsonKey(name: 'REPRESENTANTE2_NOMBRE') String? get representante2Nombre;@JsonKey(name: 'TELEFONO_FIJO') String? get telefonoFijo;@JsonKey(name: 'TELEFONO_MOVIL') String? get telefonoMovil;@JsonKey(name: 'E_MAIL') String? get email;@JsonKey(name: 'SECTOR_ID') String? get sectorId;@JsonKey(name: 'SUBSECTOR_ID') String? get subsectorId;@JsonKey(name: 'FRANQ_PORTES1') int? get franqPortes1;@JsonKey(name: 'FRANQ_PORTES2') int? get franqPortes2;@JsonKey(name: 'FRANQ_PORTES3') int? get franqPortes3;@JsonKey(name: 'IMPORTE_PORTES1') double? get importePortes1;@JsonKey(name: 'IMPORTE_PORTES2') double? get importePortes2;@JsonKey(name: 'IMPORTE_PORTES3') double? get importePortes3;@JsonKey(name: 'VENTAS_PERIODO') double? get ventasPeriodoActual;@JsonKey(name: 'VENTAS_PERIODO_ANTERIOR') double? get ventasPeriodoAnterior;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ClienteDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteDTOCopyWith<ClienteDTO> get copyWith => _$ClienteDTOCopyWithImpl<ClienteDTO>(this as ClienteDTO, _$identity);

  /// Serializes this ClienteDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.nif, nif) || other.nif == nif)&&(identical(other.nombreFiscal, nombreFiscal) || other.nombreFiscal == nombreFiscal)&&(identical(other.direccionFiscal1, direccionFiscal1) || other.direccionFiscal1 == direccionFiscal1)&&(identical(other.direccionFiscal2, direccionFiscal2) || other.direccionFiscal2 == direccionFiscal2)&&(identical(other.codigoPostalFiscal, codigoPostalFiscal) || other.codigoPostalFiscal == codigoPostalFiscal)&&(identical(other.poblacionFiscal, poblacionFiscal) || other.poblacionFiscal == poblacionFiscal)&&(identical(other.paisFiscalId, paisFiscalId) || other.paisFiscalId == paisFiscalId)&&(identical(other.provinciaFiscal, provinciaFiscal) || other.provinciaFiscal == provinciaFiscal)&&(identical(other.latitudFiscal, latitudFiscal) || other.latitudFiscal == latitudFiscal)&&(identical(other.longitudFiscal, longitudFiscal) || other.longitudFiscal == longitudFiscal)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.ventasAnyoActual, ventasAnyoActual) || other.ventasAnyoActual == ventasAnyoActual)&&(identical(other.ventasAnyoAnterior, ventasAnyoAnterior) || other.ventasAnyoAnterior == ventasAnyoAnterior)&&(identical(other.ventasHaceDosAnyos, ventasHaceDosAnyos) || other.ventasHaceDosAnyos == ventasHaceDosAnyos)&&(identical(other.margenAnyoActual, margenAnyoActual) || other.margenAnyoActual == margenAnyoActual)&&(identical(other.margenAnyoAnterior, margenAnyoAnterior) || other.margenAnyoAnterior == margenAnyoAnterior)&&(identical(other.margenHaceDosAnyos, margenHaceDosAnyos) || other.margenHaceDosAnyos == margenHaceDosAnyos)&&(identical(other.porcentajeAbonos, porcentajeAbonos) || other.porcentajeAbonos == porcentajeAbonos)&&(identical(other.porcentajeGarantias, porcentajeGarantias) || other.porcentajeGarantias == porcentajeGarantias)&&(identical(other.centralCompras, centralCompras) || other.centralCompras == centralCompras)&&(identical(other.urlWeb, urlWeb) || other.urlWeb == urlWeb)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.tarifaDescripcion, tarifaDescripcion) || other.tarifaDescripcion == tarifaDescripcion)&&(identical(other.descuentoGeneralId, descuentoGeneralId) || other.descuentoGeneralId == descuentoGeneralId)&&(identical(other.descripcionDescuentoGeneral, descripcionDescuentoGeneral) || other.descripcionDescuentoGeneral == descripcionDescuentoGeneral)&&(identical(other.tipoCalculoPrecio, tipoCalculoPrecio) || other.tipoCalculoPrecio == tipoCalculoPrecio)&&(identical(other.plazoDeCobroId, plazoDeCobroId) || other.plazoDeCobroId == plazoDeCobroId)&&(identical(other.metodoDeCobroId, metodoDeCobroId) || other.metodoDeCobroId == metodoDeCobroId)&&(identical(other.descuentoProntoPago, descuentoProntoPago) || other.descuentoProntoPago == descuentoProntoPago)&&(identical(other.riesgoConcedidoInterno, riesgoConcedidoInterno) || other.riesgoConcedidoInterno == riesgoConcedidoInterno)&&(identical(other.riesgoConcedidoInternoDate, riesgoConcedidoInternoDate) || other.riesgoConcedidoInternoDate == riesgoConcedidoInternoDate)&&(identical(other.riesgoConcedidoCoafe, riesgoConcedidoCoafe) || other.riesgoConcedidoCoafe == riesgoConcedidoCoafe)&&(identical(other.riesgoConcedidoCoafeFecha, riesgoConcedidoCoafeFecha) || other.riesgoConcedidoCoafeFecha == riesgoConcedidoCoafeFecha)&&(identical(other.riesgoConcedido, riesgoConcedido) || other.riesgoConcedido == riesgoConcedido)&&(identical(other.riesgoPendienteCobroVencido, riesgoPendienteCobroVencido) || other.riesgoPendienteCobroVencido == riesgoPendienteCobroVencido)&&(identical(other.riesgoPendienteCobroNoVencido, riesgoPendienteCobroNoVencido) || other.riesgoPendienteCobroNoVencido == riesgoPendienteCobroNoVencido)&&(identical(other.riesgoPendienteServir, riesgoPendienteServir) || other.riesgoPendienteServir == riesgoPendienteServir)&&(identical(other.riesgoPendienteFacturar, riesgoPendienteFacturar) || other.riesgoPendienteFacturar == riesgoPendienteFacturar)&&(identical(other.obvservacionesInternas, obvservacionesInternas) || other.obvservacionesInternas == obvservacionesInternas)&&(identical(other.clientePotencial, clientePotencial) || other.clientePotencial == clientePotencial)&&(identical(other.clienteEstadoPotencialId, clienteEstadoPotencialId) || other.clienteEstadoPotencialId == clienteEstadoPotencialId)&&(identical(other.clienteTipoPotencialId, clienteTipoPotencialId) || other.clienteTipoPotencialId == clienteTipoPotencialId)&&(identical(other.representante1Id, representante1Id) || other.representante1Id == representante1Id)&&(identical(other.representante1Nombre, representante1Nombre) || other.representante1Nombre == representante1Nombre)&&(identical(other.representante2Id, representante2Id) || other.representante2Id == representante2Id)&&(identical(other.representante2Nombre, representante2Nombre) || other.representante2Nombre == representante2Nombre)&&(identical(other.telefonoFijo, telefonoFijo) || other.telefonoFijo == telefonoFijo)&&(identical(other.telefonoMovil, telefonoMovil) || other.telefonoMovil == telefonoMovil)&&(identical(other.email, email) || other.email == email)&&(identical(other.sectorId, sectorId) || other.sectorId == sectorId)&&(identical(other.subsectorId, subsectorId) || other.subsectorId == subsectorId)&&(identical(other.franqPortes1, franqPortes1) || other.franqPortes1 == franqPortes1)&&(identical(other.franqPortes2, franqPortes2) || other.franqPortes2 == franqPortes2)&&(identical(other.franqPortes3, franqPortes3) || other.franqPortes3 == franqPortes3)&&(identical(other.importePortes1, importePortes1) || other.importePortes1 == importePortes1)&&(identical(other.importePortes2, importePortes2) || other.importePortes2 == importePortes2)&&(identical(other.importePortes3, importePortes3) || other.importePortes3 == importePortes3)&&(identical(other.ventasPeriodoActual, ventasPeriodoActual) || other.ventasPeriodoActual == ventasPeriodoActual)&&(identical(other.ventasPeriodoAnterior, ventasPeriodoAnterior) || other.ventasPeriodoAnterior == ventasPeriodoAnterior)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,nombreCliente,nif,nombreFiscal,direccionFiscal1,direccionFiscal2,codigoPostalFiscal,poblacionFiscal,paisFiscalId,provinciaFiscal,latitudFiscal,longitudFiscal,empresaId,iva,ventasAnyoActual,ventasAnyoAnterior,ventasHaceDosAnyos,margenAnyoActual,margenAnyoAnterior,margenHaceDosAnyos,porcentajeAbonos,porcentajeGarantias,centralCompras,urlWeb,divisaId,tarifaId,tarifaDescripcion,descuentoGeneralId,descripcionDescuentoGeneral,tipoCalculoPrecio,plazoDeCobroId,metodoDeCobroId,descuentoProntoPago,riesgoConcedidoInterno,riesgoConcedidoInternoDate,riesgoConcedidoCoafe,riesgoConcedidoCoafeFecha,riesgoConcedido,riesgoPendienteCobroVencido,riesgoPendienteCobroNoVencido,riesgoPendienteServir,riesgoPendienteFacturar,obvservacionesInternas,clientePotencial,clienteEstadoPotencialId,clienteTipoPotencialId,representante1Id,representante1Nombre,representante2Id,representante2Nombre,telefonoFijo,telefonoMovil,email,sectorId,subsectorId,franqPortes1,franqPortes2,franqPortes3,importePortes1,importePortes2,importePortes3,ventasPeriodoActual,ventasPeriodoAnterior,lastUpdated,deleted]);

@override
String toString() {
  return 'ClienteDTO(id: $id, nombreCliente: $nombreCliente, nif: $nif, nombreFiscal: $nombreFiscal, direccionFiscal1: $direccionFiscal1, direccionFiscal2: $direccionFiscal2, codigoPostalFiscal: $codigoPostalFiscal, poblacionFiscal: $poblacionFiscal, paisFiscalId: $paisFiscalId, provinciaFiscal: $provinciaFiscal, latitudFiscal: $latitudFiscal, longitudFiscal: $longitudFiscal, empresaId: $empresaId, iva: $iva, ventasAnyoActual: $ventasAnyoActual, ventasAnyoAnterior: $ventasAnyoAnterior, ventasHaceDosAnyos: $ventasHaceDosAnyos, margenAnyoActual: $margenAnyoActual, margenAnyoAnterior: $margenAnyoAnterior, margenHaceDosAnyos: $margenHaceDosAnyos, porcentajeAbonos: $porcentajeAbonos, porcentajeGarantias: $porcentajeGarantias, centralCompras: $centralCompras, urlWeb: $urlWeb, divisaId: $divisaId, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, descuentoGeneralId: $descuentoGeneralId, descripcionDescuentoGeneral: $descripcionDescuentoGeneral, tipoCalculoPrecio: $tipoCalculoPrecio, plazoDeCobroId: $plazoDeCobroId, metodoDeCobroId: $metodoDeCobroId, descuentoProntoPago: $descuentoProntoPago, riesgoConcedidoInterno: $riesgoConcedidoInterno, riesgoConcedidoInternoDate: $riesgoConcedidoInternoDate, riesgoConcedidoCoafe: $riesgoConcedidoCoafe, riesgoConcedidoCoafeFecha: $riesgoConcedidoCoafeFecha, riesgoConcedido: $riesgoConcedido, riesgoPendienteCobroVencido: $riesgoPendienteCobroVencido, riesgoPendienteCobroNoVencido: $riesgoPendienteCobroNoVencido, riesgoPendienteServir: $riesgoPendienteServir, riesgoPendienteFacturar: $riesgoPendienteFacturar, obvservacionesInternas: $obvservacionesInternas, clientePotencial: $clientePotencial, clienteEstadoPotencialId: $clienteEstadoPotencialId, clienteTipoPotencialId: $clienteTipoPotencialId, representante1Id: $representante1Id, representante1Nombre: $representante1Nombre, representante2Id: $representante2Id, representante2Nombre: $representante2Nombre, telefonoFijo: $telefonoFijo, telefonoMovil: $telefonoMovil, email: $email, sectorId: $sectorId, subsectorId: $subsectorId, franqPortes1: $franqPortes1, franqPortes2: $franqPortes2, franqPortes3: $franqPortes3, importePortes1: $importePortes1, importePortes2: $importePortes2, importePortes3: $importePortes3, ventasPeriodoActual: $ventasPeriodoActual, ventasPeriodoAnterior: $ventasPeriodoAnterior, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteDTOCopyWith<$Res>  {
  factory $ClienteDTOCopyWith(ClienteDTO value, $Res Function(ClienteDTO) _then) = _$ClienteDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String id,@JsonKey(name: 'NOMBRE') String nombreCliente,@JsonKey(name: 'NIF') String? nif,@JsonKey(name: 'NOMBRE_FISCAL') String nombreFiscal,@JsonKey(name: 'DIRECCION_FISCAL1') String? direccionFiscal1,@JsonKey(name: 'DIRECCION_FISCAL2') String? direccionFiscal2,@JsonKey(name: 'CODIGO_POSTAL_FISCAL') String? codigoPostalFiscal,@JsonKey(name: 'POBLACION_FISCAL') String? poblacionFiscal,@JsonKey(name: 'PAIS_ID_FISCAL') String? paisFiscalId,@JsonKey(name: 'PROVINCIA_FISCAL') String? provinciaFiscal,@JsonKey(name: 'LATITUD_FISCAL') double latitudFiscal,@JsonKey(name: 'LONGITUD_FISCAL') double longitudFiscal,@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'VENTAS_ANYO_ACTUAL') double ventasAnyoActual,@JsonKey(name: 'VENTAS_ANYO_ANTERIOR') double ventasAnyoAnterior,@JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') double ventasHaceDosAnyos,@JsonKey(name: 'MARGEN_ANYO_ACTUAL') double margenAnyoActual,@JsonKey(name: 'MARGEN_ANYO_ANTERIOR') double margenAnyoAnterior,@JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') double margenHaceDosAnyos,@JsonKey(name: 'PORCENTAJE_ABONOS') double porcentajeAbonos,@JsonKey(name: 'PORCENTAJE_GARANTIAS') double porcentajeGarantias,@JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') String? centralCompras,@JsonKey(name: 'URL_WEB') String? urlWeb,@JsonKey(name: 'DIVISA_ID') String? divisaId,@JsonKey(name: 'TARIFA_ID') String? tarifaId,@JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,@JsonKey(name: 'DESCUENTO_GENERAL_ID') String? descuentoGeneralId,@JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION') String? descripcionDescuentoGeneral,@JsonKey(name: 'TIPO_CALCULO_PRECIO') String tipoCalculoPrecio,@JsonKey(name: 'PLAZO_COBRO_ID') String? plazoDeCobroId,@JsonKey(name: 'METODO_COBRO_ID') String? metodoDeCobroId,@JsonKey(name: 'DESCUENTO_PRONTO_PAGO') double descuentoProntoPago,@JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO') double riesgoConcedidoInterno,@JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA') DateTime? riesgoConcedidoInternoDate,@JsonKey(name: 'RIESGO_CONCEDIDO_COFACE') double riesgoConcedidoCoafe,@JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA') DateTime? riesgoConcedidoCoafeFecha,@JsonKey(name: 'RIESGO_CONCEDIDO') double? riesgoConcedido,@JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE') double? riesgoPendienteCobroVencido,@JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE') double? riesgoPendienteCobroNoVencido,@JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE') double? riesgoPendienteServir,@JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE') double? riesgoPendienteFacturar,@JsonKey(name: 'OBSERVACIONES_INTERNAS') String? obvservacionesInternas,@JsonKey(name: 'CLIENTE_POTENCIAL') String? clientePotencial,@JsonKey(name: 'ESTADO_POTENCIAL_ID') String? clienteEstadoPotencialId,@JsonKey(name: 'TIPO_POTENCIAL_ID') String? clienteTipoPotencialId,@JsonKey(name: 'REPRESENTANTE1_ID') String? representante1Id,@JsonKey(name: 'REPRESENTANTE1_NOMBRE') String? representante1Nombre,@JsonKey(name: 'REPRESENTANTE2_ID') String? representante2Id,@JsonKey(name: 'REPRESENTANTE2_NOMBRE') String? representante2Nombre,@JsonKey(name: 'TELEFONO_FIJO') String? telefonoFijo,@JsonKey(name: 'TELEFONO_MOVIL') String? telefonoMovil,@JsonKey(name: 'E_MAIL') String? email,@JsonKey(name: 'SECTOR_ID') String? sectorId,@JsonKey(name: 'SUBSECTOR_ID') String? subsectorId,@JsonKey(name: 'FRANQ_PORTES1') int? franqPortes1,@JsonKey(name: 'FRANQ_PORTES2') int? franqPortes2,@JsonKey(name: 'FRANQ_PORTES3') int? franqPortes3,@JsonKey(name: 'IMPORTE_PORTES1') double? importePortes1,@JsonKey(name: 'IMPORTE_PORTES2') double? importePortes2,@JsonKey(name: 'IMPORTE_PORTES3') double? importePortes3,@JsonKey(name: 'VENTAS_PERIODO') double? ventasPeriodoActual,@JsonKey(name: 'VENTAS_PERIODO_ANTERIOR') double? ventasPeriodoAnterior,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ClienteDTOCopyWithImpl<$Res>
    implements $ClienteDTOCopyWith<$Res> {
  _$ClienteDTOCopyWithImpl(this._self, this._then);

  final ClienteDTO _self;
  final $Res Function(ClienteDTO) _then;

/// Create a copy of ClienteDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nombreCliente = null,Object? nif = freezed,Object? nombreFiscal = null,Object? direccionFiscal1 = freezed,Object? direccionFiscal2 = freezed,Object? codigoPostalFiscal = freezed,Object? poblacionFiscal = freezed,Object? paisFiscalId = freezed,Object? provinciaFiscal = freezed,Object? latitudFiscal = null,Object? longitudFiscal = null,Object? empresaId = null,Object? iva = null,Object? ventasAnyoActual = null,Object? ventasAnyoAnterior = null,Object? ventasHaceDosAnyos = null,Object? margenAnyoActual = null,Object? margenAnyoAnterior = null,Object? margenHaceDosAnyos = null,Object? porcentajeAbonos = null,Object? porcentajeGarantias = null,Object? centralCompras = freezed,Object? urlWeb = freezed,Object? divisaId = freezed,Object? tarifaId = freezed,Object? tarifaDescripcion = freezed,Object? descuentoGeneralId = freezed,Object? descripcionDescuentoGeneral = freezed,Object? tipoCalculoPrecio = null,Object? plazoDeCobroId = freezed,Object? metodoDeCobroId = freezed,Object? descuentoProntoPago = null,Object? riesgoConcedidoInterno = null,Object? riesgoConcedidoInternoDate = freezed,Object? riesgoConcedidoCoafe = null,Object? riesgoConcedidoCoafeFecha = freezed,Object? riesgoConcedido = freezed,Object? riesgoPendienteCobroVencido = freezed,Object? riesgoPendienteCobroNoVencido = freezed,Object? riesgoPendienteServir = freezed,Object? riesgoPendienteFacturar = freezed,Object? obvservacionesInternas = freezed,Object? clientePotencial = freezed,Object? clienteEstadoPotencialId = freezed,Object? clienteTipoPotencialId = freezed,Object? representante1Id = freezed,Object? representante1Nombre = freezed,Object? representante2Id = freezed,Object? representante2Nombre = freezed,Object? telefonoFijo = freezed,Object? telefonoMovil = freezed,Object? email = freezed,Object? sectorId = freezed,Object? subsectorId = freezed,Object? franqPortes1 = freezed,Object? franqPortes2 = freezed,Object? franqPortes3 = freezed,Object? importePortes1 = freezed,Object? importePortes2 = freezed,Object? importePortes3 = freezed,Object? ventasPeriodoActual = freezed,Object? ventasPeriodoAnterior = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,nif: freezed == nif ? _self.nif : nif // ignore: cast_nullable_to_non_nullable
as String?,nombreFiscal: null == nombreFiscal ? _self.nombreFiscal : nombreFiscal // ignore: cast_nullable_to_non_nullable
as String,direccionFiscal1: freezed == direccionFiscal1 ? _self.direccionFiscal1 : direccionFiscal1 // ignore: cast_nullable_to_non_nullable
as String?,direccionFiscal2: freezed == direccionFiscal2 ? _self.direccionFiscal2 : direccionFiscal2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostalFiscal: freezed == codigoPostalFiscal ? _self.codigoPostalFiscal : codigoPostalFiscal // ignore: cast_nullable_to_non_nullable
as String?,poblacionFiscal: freezed == poblacionFiscal ? _self.poblacionFiscal : poblacionFiscal // ignore: cast_nullable_to_non_nullable
as String?,paisFiscalId: freezed == paisFiscalId ? _self.paisFiscalId : paisFiscalId // ignore: cast_nullable_to_non_nullable
as String?,provinciaFiscal: freezed == provinciaFiscal ? _self.provinciaFiscal : provinciaFiscal // ignore: cast_nullable_to_non_nullable
as String?,latitudFiscal: null == latitudFiscal ? _self.latitudFiscal : latitudFiscal // ignore: cast_nullable_to_non_nullable
as double,longitudFiscal: null == longitudFiscal ? _self.longitudFiscal : longitudFiscal // ignore: cast_nullable_to_non_nullable
as double,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,ventasAnyoActual: null == ventasAnyoActual ? _self.ventasAnyoActual : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
as double,ventasAnyoAnterior: null == ventasAnyoAnterior ? _self.ventasAnyoAnterior : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
as double,ventasHaceDosAnyos: null == ventasHaceDosAnyos ? _self.ventasHaceDosAnyos : ventasHaceDosAnyos // ignore: cast_nullable_to_non_nullable
as double,margenAnyoActual: null == margenAnyoActual ? _self.margenAnyoActual : margenAnyoActual // ignore: cast_nullable_to_non_nullable
as double,margenAnyoAnterior: null == margenAnyoAnterior ? _self.margenAnyoAnterior : margenAnyoAnterior // ignore: cast_nullable_to_non_nullable
as double,margenHaceDosAnyos: null == margenHaceDosAnyos ? _self.margenHaceDosAnyos : margenHaceDosAnyos // ignore: cast_nullable_to_non_nullable
as double,porcentajeAbonos: null == porcentajeAbonos ? _self.porcentajeAbonos : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
as double,porcentajeGarantias: null == porcentajeGarantias ? _self.porcentajeGarantias : porcentajeGarantias // ignore: cast_nullable_to_non_nullable
as double,centralCompras: freezed == centralCompras ? _self.centralCompras : centralCompras // ignore: cast_nullable_to_non_nullable
as String?,urlWeb: freezed == urlWeb ? _self.urlWeb : urlWeb // ignore: cast_nullable_to_non_nullable
as String?,divisaId: freezed == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String?,tarifaId: freezed == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String?,tarifaDescripcion: freezed == tarifaDescripcion ? _self.tarifaDescripcion : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
as String?,descuentoGeneralId: freezed == descuentoGeneralId ? _self.descuentoGeneralId : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
as String?,descripcionDescuentoGeneral: freezed == descripcionDescuentoGeneral ? _self.descripcionDescuentoGeneral : descripcionDescuentoGeneral // ignore: cast_nullable_to_non_nullable
as String?,tipoCalculoPrecio: null == tipoCalculoPrecio ? _self.tipoCalculoPrecio : tipoCalculoPrecio // ignore: cast_nullable_to_non_nullable
as String,plazoDeCobroId: freezed == plazoDeCobroId ? _self.plazoDeCobroId : plazoDeCobroId // ignore: cast_nullable_to_non_nullable
as String?,metodoDeCobroId: freezed == metodoDeCobroId ? _self.metodoDeCobroId : metodoDeCobroId // ignore: cast_nullable_to_non_nullable
as String?,descuentoProntoPago: null == descuentoProntoPago ? _self.descuentoProntoPago : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
as double,riesgoConcedidoInterno: null == riesgoConcedidoInterno ? _self.riesgoConcedidoInterno : riesgoConcedidoInterno // ignore: cast_nullable_to_non_nullable
as double,riesgoConcedidoInternoDate: freezed == riesgoConcedidoInternoDate ? _self.riesgoConcedidoInternoDate : riesgoConcedidoInternoDate // ignore: cast_nullable_to_non_nullable
as DateTime?,riesgoConcedidoCoafe: null == riesgoConcedidoCoafe ? _self.riesgoConcedidoCoafe : riesgoConcedidoCoafe // ignore: cast_nullable_to_non_nullable
as double,riesgoConcedidoCoafeFecha: freezed == riesgoConcedidoCoafeFecha ? _self.riesgoConcedidoCoafeFecha : riesgoConcedidoCoafeFecha // ignore: cast_nullable_to_non_nullable
as DateTime?,riesgoConcedido: freezed == riesgoConcedido ? _self.riesgoConcedido : riesgoConcedido // ignore: cast_nullable_to_non_nullable
as double?,riesgoPendienteCobroVencido: freezed == riesgoPendienteCobroVencido ? _self.riesgoPendienteCobroVencido : riesgoPendienteCobroVencido // ignore: cast_nullable_to_non_nullable
as double?,riesgoPendienteCobroNoVencido: freezed == riesgoPendienteCobroNoVencido ? _self.riesgoPendienteCobroNoVencido : riesgoPendienteCobroNoVencido // ignore: cast_nullable_to_non_nullable
as double?,riesgoPendienteServir: freezed == riesgoPendienteServir ? _self.riesgoPendienteServir : riesgoPendienteServir // ignore: cast_nullable_to_non_nullable
as double?,riesgoPendienteFacturar: freezed == riesgoPendienteFacturar ? _self.riesgoPendienteFacturar : riesgoPendienteFacturar // ignore: cast_nullable_to_non_nullable
as double?,obvservacionesInternas: freezed == obvservacionesInternas ? _self.obvservacionesInternas : obvservacionesInternas // ignore: cast_nullable_to_non_nullable
as String?,clientePotencial: freezed == clientePotencial ? _self.clientePotencial : clientePotencial // ignore: cast_nullable_to_non_nullable
as String?,clienteEstadoPotencialId: freezed == clienteEstadoPotencialId ? _self.clienteEstadoPotencialId : clienteEstadoPotencialId // ignore: cast_nullable_to_non_nullable
as String?,clienteTipoPotencialId: freezed == clienteTipoPotencialId ? _self.clienteTipoPotencialId : clienteTipoPotencialId // ignore: cast_nullable_to_non_nullable
as String?,representante1Id: freezed == representante1Id ? _self.representante1Id : representante1Id // ignore: cast_nullable_to_non_nullable
as String?,representante1Nombre: freezed == representante1Nombre ? _self.representante1Nombre : representante1Nombre // ignore: cast_nullable_to_non_nullable
as String?,representante2Id: freezed == representante2Id ? _self.representante2Id : representante2Id // ignore: cast_nullable_to_non_nullable
as String?,representante2Nombre: freezed == representante2Nombre ? _self.representante2Nombre : representante2Nombre // ignore: cast_nullable_to_non_nullable
as String?,telefonoFijo: freezed == telefonoFijo ? _self.telefonoFijo : telefonoFijo // ignore: cast_nullable_to_non_nullable
as String?,telefonoMovil: freezed == telefonoMovil ? _self.telefonoMovil : telefonoMovil // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,sectorId: freezed == sectorId ? _self.sectorId : sectorId // ignore: cast_nullable_to_non_nullable
as String?,subsectorId: freezed == subsectorId ? _self.subsectorId : subsectorId // ignore: cast_nullable_to_non_nullable
as String?,franqPortes1: freezed == franqPortes1 ? _self.franqPortes1 : franqPortes1 // ignore: cast_nullable_to_non_nullable
as int?,franqPortes2: freezed == franqPortes2 ? _self.franqPortes2 : franqPortes2 // ignore: cast_nullable_to_non_nullable
as int?,franqPortes3: freezed == franqPortes3 ? _self.franqPortes3 : franqPortes3 // ignore: cast_nullable_to_non_nullable
as int?,importePortes1: freezed == importePortes1 ? _self.importePortes1 : importePortes1 // ignore: cast_nullable_to_non_nullable
as double?,importePortes2: freezed == importePortes2 ? _self.importePortes2 : importePortes2 // ignore: cast_nullable_to_non_nullable
as double?,importePortes3: freezed == importePortes3 ? _self.importePortes3 : importePortes3 // ignore: cast_nullable_to_non_nullable
as double?,ventasPeriodoActual: freezed == ventasPeriodoActual ? _self.ventasPeriodoActual : ventasPeriodoActual // ignore: cast_nullable_to_non_nullable
as double?,ventasPeriodoAnterior: freezed == ventasPeriodoAnterior ? _self.ventasPeriodoAnterior : ventasPeriodoAnterior // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteDTO].
extension ClienteDTOPatterns on ClienteDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String id, @JsonKey(name: 'NOMBRE')  String nombreCliente, @JsonKey(name: 'NIF')  String? nif, @JsonKey(name: 'NOMBRE_FISCAL')  String nombreFiscal, @JsonKey(name: 'DIRECCION_FISCAL1')  String? direccionFiscal1, @JsonKey(name: 'DIRECCION_FISCAL2')  String? direccionFiscal2, @JsonKey(name: 'CODIGO_POSTAL_FISCAL')  String? codigoPostalFiscal, @JsonKey(name: 'POBLACION_FISCAL')  String? poblacionFiscal, @JsonKey(name: 'PAIS_ID_FISCAL')  String? paisFiscalId, @JsonKey(name: 'PROVINCIA_FISCAL')  String? provinciaFiscal, @JsonKey(name: 'LATITUD_FISCAL')  double latitudFiscal, @JsonKey(name: 'LONGITUD_FISCAL')  double longitudFiscal, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'VENTAS_ANYO_ACTUAL')  double ventasAnyoActual, @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')  double ventasAnyoAnterior, @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')  double ventasHaceDosAnyos, @JsonKey(name: 'MARGEN_ANYO_ACTUAL')  double margenAnyoActual, @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')  double margenAnyoAnterior, @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')  double margenHaceDosAnyos, @JsonKey(name: 'PORCENTAJE_ABONOS')  double porcentajeAbonos, @JsonKey(name: 'PORCENTAJE_GARANTIAS')  double porcentajeGarantias, @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')  String? centralCompras, @JsonKey(name: 'URL_WEB')  String? urlWeb, @JsonKey(name: 'DIVISA_ID')  String? divisaId, @JsonKey(name: 'TARIFA_ID')  String? tarifaId, @JsonKey(name: 'TARIFA_DESCRIPCION')  String? tarifaDescripcion, @JsonKey(name: 'DESCUENTO_GENERAL_ID')  String? descuentoGeneralId, @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')  String? descripcionDescuentoGeneral, @JsonKey(name: 'TIPO_CALCULO_PRECIO')  String tipoCalculoPrecio, @JsonKey(name: 'PLAZO_COBRO_ID')  String? plazoDeCobroId, @JsonKey(name: 'METODO_COBRO_ID')  String? metodoDeCobroId, @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')  double descuentoProntoPago, @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')  double riesgoConcedidoInterno, @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')  DateTime? riesgoConcedidoInternoDate, @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')  double riesgoConcedidoCoafe, @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')  DateTime? riesgoConcedidoCoafeFecha, @JsonKey(name: 'RIESGO_CONCEDIDO')  double? riesgoConcedido, @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')  double? riesgoPendienteCobroVencido, @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')  double? riesgoPendienteCobroNoVencido, @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')  double? riesgoPendienteServir, @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')  double? riesgoPendienteFacturar, @JsonKey(name: 'OBSERVACIONES_INTERNAS')  String? obvservacionesInternas, @JsonKey(name: 'CLIENTE_POTENCIAL')  String? clientePotencial, @JsonKey(name: 'ESTADO_POTENCIAL_ID')  String? clienteEstadoPotencialId, @JsonKey(name: 'TIPO_POTENCIAL_ID')  String? clienteTipoPotencialId, @JsonKey(name: 'REPRESENTANTE1_ID')  String? representante1Id, @JsonKey(name: 'REPRESENTANTE1_NOMBRE')  String? representante1Nombre, @JsonKey(name: 'REPRESENTANTE2_ID')  String? representante2Id, @JsonKey(name: 'REPRESENTANTE2_NOMBRE')  String? representante2Nombre, @JsonKey(name: 'TELEFONO_FIJO')  String? telefonoFijo, @JsonKey(name: 'TELEFONO_MOVIL')  String? telefonoMovil, @JsonKey(name: 'E_MAIL')  String? email, @JsonKey(name: 'SECTOR_ID')  String? sectorId, @JsonKey(name: 'SUBSECTOR_ID')  String? subsectorId, @JsonKey(name: 'FRANQ_PORTES1')  int? franqPortes1, @JsonKey(name: 'FRANQ_PORTES2')  int? franqPortes2, @JsonKey(name: 'FRANQ_PORTES3')  int? franqPortes3, @JsonKey(name: 'IMPORTE_PORTES1')  double? importePortes1, @JsonKey(name: 'IMPORTE_PORTES2')  double? importePortes2, @JsonKey(name: 'IMPORTE_PORTES3')  double? importePortes3, @JsonKey(name: 'VENTAS_PERIODO')  double? ventasPeriodoActual, @JsonKey(name: 'VENTAS_PERIODO_ANTERIOR')  double? ventasPeriodoAnterior, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteDTO() when $default != null:
return $default(_that.id,_that.nombreCliente,_that.nif,_that.nombreFiscal,_that.direccionFiscal1,_that.direccionFiscal2,_that.codigoPostalFiscal,_that.poblacionFiscal,_that.paisFiscalId,_that.provinciaFiscal,_that.latitudFiscal,_that.longitudFiscal,_that.empresaId,_that.iva,_that.ventasAnyoActual,_that.ventasAnyoAnterior,_that.ventasHaceDosAnyos,_that.margenAnyoActual,_that.margenAnyoAnterior,_that.margenHaceDosAnyos,_that.porcentajeAbonos,_that.porcentajeGarantias,_that.centralCompras,_that.urlWeb,_that.divisaId,_that.tarifaId,_that.tarifaDescripcion,_that.descuentoGeneralId,_that.descripcionDescuentoGeneral,_that.tipoCalculoPrecio,_that.plazoDeCobroId,_that.metodoDeCobroId,_that.descuentoProntoPago,_that.riesgoConcedidoInterno,_that.riesgoConcedidoInternoDate,_that.riesgoConcedidoCoafe,_that.riesgoConcedidoCoafeFecha,_that.riesgoConcedido,_that.riesgoPendienteCobroVencido,_that.riesgoPendienteCobroNoVencido,_that.riesgoPendienteServir,_that.riesgoPendienteFacturar,_that.obvservacionesInternas,_that.clientePotencial,_that.clienteEstadoPotencialId,_that.clienteTipoPotencialId,_that.representante1Id,_that.representante1Nombre,_that.representante2Id,_that.representante2Nombre,_that.telefonoFijo,_that.telefonoMovil,_that.email,_that.sectorId,_that.subsectorId,_that.franqPortes1,_that.franqPortes2,_that.franqPortes3,_that.importePortes1,_that.importePortes2,_that.importePortes3,_that.ventasPeriodoActual,_that.ventasPeriodoAnterior,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String id, @JsonKey(name: 'NOMBRE')  String nombreCliente, @JsonKey(name: 'NIF')  String? nif, @JsonKey(name: 'NOMBRE_FISCAL')  String nombreFiscal, @JsonKey(name: 'DIRECCION_FISCAL1')  String? direccionFiscal1, @JsonKey(name: 'DIRECCION_FISCAL2')  String? direccionFiscal2, @JsonKey(name: 'CODIGO_POSTAL_FISCAL')  String? codigoPostalFiscal, @JsonKey(name: 'POBLACION_FISCAL')  String? poblacionFiscal, @JsonKey(name: 'PAIS_ID_FISCAL')  String? paisFiscalId, @JsonKey(name: 'PROVINCIA_FISCAL')  String? provinciaFiscal, @JsonKey(name: 'LATITUD_FISCAL')  double latitudFiscal, @JsonKey(name: 'LONGITUD_FISCAL')  double longitudFiscal, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'VENTAS_ANYO_ACTUAL')  double ventasAnyoActual, @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')  double ventasAnyoAnterior, @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')  double ventasHaceDosAnyos, @JsonKey(name: 'MARGEN_ANYO_ACTUAL')  double margenAnyoActual, @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')  double margenAnyoAnterior, @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')  double margenHaceDosAnyos, @JsonKey(name: 'PORCENTAJE_ABONOS')  double porcentajeAbonos, @JsonKey(name: 'PORCENTAJE_GARANTIAS')  double porcentajeGarantias, @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')  String? centralCompras, @JsonKey(name: 'URL_WEB')  String? urlWeb, @JsonKey(name: 'DIVISA_ID')  String? divisaId, @JsonKey(name: 'TARIFA_ID')  String? tarifaId, @JsonKey(name: 'TARIFA_DESCRIPCION')  String? tarifaDescripcion, @JsonKey(name: 'DESCUENTO_GENERAL_ID')  String? descuentoGeneralId, @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')  String? descripcionDescuentoGeneral, @JsonKey(name: 'TIPO_CALCULO_PRECIO')  String tipoCalculoPrecio, @JsonKey(name: 'PLAZO_COBRO_ID')  String? plazoDeCobroId, @JsonKey(name: 'METODO_COBRO_ID')  String? metodoDeCobroId, @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')  double descuentoProntoPago, @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')  double riesgoConcedidoInterno, @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')  DateTime? riesgoConcedidoInternoDate, @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')  double riesgoConcedidoCoafe, @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')  DateTime? riesgoConcedidoCoafeFecha, @JsonKey(name: 'RIESGO_CONCEDIDO')  double? riesgoConcedido, @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')  double? riesgoPendienteCobroVencido, @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')  double? riesgoPendienteCobroNoVencido, @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')  double? riesgoPendienteServir, @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')  double? riesgoPendienteFacturar, @JsonKey(name: 'OBSERVACIONES_INTERNAS')  String? obvservacionesInternas, @JsonKey(name: 'CLIENTE_POTENCIAL')  String? clientePotencial, @JsonKey(name: 'ESTADO_POTENCIAL_ID')  String? clienteEstadoPotencialId, @JsonKey(name: 'TIPO_POTENCIAL_ID')  String? clienteTipoPotencialId, @JsonKey(name: 'REPRESENTANTE1_ID')  String? representante1Id, @JsonKey(name: 'REPRESENTANTE1_NOMBRE')  String? representante1Nombre, @JsonKey(name: 'REPRESENTANTE2_ID')  String? representante2Id, @JsonKey(name: 'REPRESENTANTE2_NOMBRE')  String? representante2Nombre, @JsonKey(name: 'TELEFONO_FIJO')  String? telefonoFijo, @JsonKey(name: 'TELEFONO_MOVIL')  String? telefonoMovil, @JsonKey(name: 'E_MAIL')  String? email, @JsonKey(name: 'SECTOR_ID')  String? sectorId, @JsonKey(name: 'SUBSECTOR_ID')  String? subsectorId, @JsonKey(name: 'FRANQ_PORTES1')  int? franqPortes1, @JsonKey(name: 'FRANQ_PORTES2')  int? franqPortes2, @JsonKey(name: 'FRANQ_PORTES3')  int? franqPortes3, @JsonKey(name: 'IMPORTE_PORTES1')  double? importePortes1, @JsonKey(name: 'IMPORTE_PORTES2')  double? importePortes2, @JsonKey(name: 'IMPORTE_PORTES3')  double? importePortes3, @JsonKey(name: 'VENTAS_PERIODO')  double? ventasPeriodoActual, @JsonKey(name: 'VENTAS_PERIODO_ANTERIOR')  double? ventasPeriodoAnterior, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteDTO():
return $default(_that.id,_that.nombreCliente,_that.nif,_that.nombreFiscal,_that.direccionFiscal1,_that.direccionFiscal2,_that.codigoPostalFiscal,_that.poblacionFiscal,_that.paisFiscalId,_that.provinciaFiscal,_that.latitudFiscal,_that.longitudFiscal,_that.empresaId,_that.iva,_that.ventasAnyoActual,_that.ventasAnyoAnterior,_that.ventasHaceDosAnyos,_that.margenAnyoActual,_that.margenAnyoAnterior,_that.margenHaceDosAnyos,_that.porcentajeAbonos,_that.porcentajeGarantias,_that.centralCompras,_that.urlWeb,_that.divisaId,_that.tarifaId,_that.tarifaDescripcion,_that.descuentoGeneralId,_that.descripcionDescuentoGeneral,_that.tipoCalculoPrecio,_that.plazoDeCobroId,_that.metodoDeCobroId,_that.descuentoProntoPago,_that.riesgoConcedidoInterno,_that.riesgoConcedidoInternoDate,_that.riesgoConcedidoCoafe,_that.riesgoConcedidoCoafeFecha,_that.riesgoConcedido,_that.riesgoPendienteCobroVencido,_that.riesgoPendienteCobroNoVencido,_that.riesgoPendienteServir,_that.riesgoPendienteFacturar,_that.obvservacionesInternas,_that.clientePotencial,_that.clienteEstadoPotencialId,_that.clienteTipoPotencialId,_that.representante1Id,_that.representante1Nombre,_that.representante2Id,_that.representante2Nombre,_that.telefonoFijo,_that.telefonoMovil,_that.email,_that.sectorId,_that.subsectorId,_that.franqPortes1,_that.franqPortes2,_that.franqPortes3,_that.importePortes1,_that.importePortes2,_that.importePortes3,_that.ventasPeriodoActual,_that.ventasPeriodoAnterior,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String id, @JsonKey(name: 'NOMBRE')  String nombreCliente, @JsonKey(name: 'NIF')  String? nif, @JsonKey(name: 'NOMBRE_FISCAL')  String nombreFiscal, @JsonKey(name: 'DIRECCION_FISCAL1')  String? direccionFiscal1, @JsonKey(name: 'DIRECCION_FISCAL2')  String? direccionFiscal2, @JsonKey(name: 'CODIGO_POSTAL_FISCAL')  String? codigoPostalFiscal, @JsonKey(name: 'POBLACION_FISCAL')  String? poblacionFiscal, @JsonKey(name: 'PAIS_ID_FISCAL')  String? paisFiscalId, @JsonKey(name: 'PROVINCIA_FISCAL')  String? provinciaFiscal, @JsonKey(name: 'LATITUD_FISCAL')  double latitudFiscal, @JsonKey(name: 'LONGITUD_FISCAL')  double longitudFiscal, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'VENTAS_ANYO_ACTUAL')  double ventasAnyoActual, @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')  double ventasAnyoAnterior, @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')  double ventasHaceDosAnyos, @JsonKey(name: 'MARGEN_ANYO_ACTUAL')  double margenAnyoActual, @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')  double margenAnyoAnterior, @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')  double margenHaceDosAnyos, @JsonKey(name: 'PORCENTAJE_ABONOS')  double porcentajeAbonos, @JsonKey(name: 'PORCENTAJE_GARANTIAS')  double porcentajeGarantias, @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')  String? centralCompras, @JsonKey(name: 'URL_WEB')  String? urlWeb, @JsonKey(name: 'DIVISA_ID')  String? divisaId, @JsonKey(name: 'TARIFA_ID')  String? tarifaId, @JsonKey(name: 'TARIFA_DESCRIPCION')  String? tarifaDescripcion, @JsonKey(name: 'DESCUENTO_GENERAL_ID')  String? descuentoGeneralId, @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')  String? descripcionDescuentoGeneral, @JsonKey(name: 'TIPO_CALCULO_PRECIO')  String tipoCalculoPrecio, @JsonKey(name: 'PLAZO_COBRO_ID')  String? plazoDeCobroId, @JsonKey(name: 'METODO_COBRO_ID')  String? metodoDeCobroId, @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')  double descuentoProntoPago, @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')  double riesgoConcedidoInterno, @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')  DateTime? riesgoConcedidoInternoDate, @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')  double riesgoConcedidoCoafe, @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')  DateTime? riesgoConcedidoCoafeFecha, @JsonKey(name: 'RIESGO_CONCEDIDO')  double? riesgoConcedido, @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')  double? riesgoPendienteCobroVencido, @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')  double? riesgoPendienteCobroNoVencido, @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')  double? riesgoPendienteServir, @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')  double? riesgoPendienteFacturar, @JsonKey(name: 'OBSERVACIONES_INTERNAS')  String? obvservacionesInternas, @JsonKey(name: 'CLIENTE_POTENCIAL')  String? clientePotencial, @JsonKey(name: 'ESTADO_POTENCIAL_ID')  String? clienteEstadoPotencialId, @JsonKey(name: 'TIPO_POTENCIAL_ID')  String? clienteTipoPotencialId, @JsonKey(name: 'REPRESENTANTE1_ID')  String? representante1Id, @JsonKey(name: 'REPRESENTANTE1_NOMBRE')  String? representante1Nombre, @JsonKey(name: 'REPRESENTANTE2_ID')  String? representante2Id, @JsonKey(name: 'REPRESENTANTE2_NOMBRE')  String? representante2Nombre, @JsonKey(name: 'TELEFONO_FIJO')  String? telefonoFijo, @JsonKey(name: 'TELEFONO_MOVIL')  String? telefonoMovil, @JsonKey(name: 'E_MAIL')  String? email, @JsonKey(name: 'SECTOR_ID')  String? sectorId, @JsonKey(name: 'SUBSECTOR_ID')  String? subsectorId, @JsonKey(name: 'FRANQ_PORTES1')  int? franqPortes1, @JsonKey(name: 'FRANQ_PORTES2')  int? franqPortes2, @JsonKey(name: 'FRANQ_PORTES3')  int? franqPortes3, @JsonKey(name: 'IMPORTE_PORTES1')  double? importePortes1, @JsonKey(name: 'IMPORTE_PORTES2')  double? importePortes2, @JsonKey(name: 'IMPORTE_PORTES3')  double? importePortes3, @JsonKey(name: 'VENTAS_PERIODO')  double? ventasPeriodoActual, @JsonKey(name: 'VENTAS_PERIODO_ANTERIOR')  double? ventasPeriodoAnterior, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteDTO() when $default != null:
return $default(_that.id,_that.nombreCliente,_that.nif,_that.nombreFiscal,_that.direccionFiscal1,_that.direccionFiscal2,_that.codigoPostalFiscal,_that.poblacionFiscal,_that.paisFiscalId,_that.provinciaFiscal,_that.latitudFiscal,_that.longitudFiscal,_that.empresaId,_that.iva,_that.ventasAnyoActual,_that.ventasAnyoAnterior,_that.ventasHaceDosAnyos,_that.margenAnyoActual,_that.margenAnyoAnterior,_that.margenHaceDosAnyos,_that.porcentajeAbonos,_that.porcentajeGarantias,_that.centralCompras,_that.urlWeb,_that.divisaId,_that.tarifaId,_that.tarifaDescripcion,_that.descuentoGeneralId,_that.descripcionDescuentoGeneral,_that.tipoCalculoPrecio,_that.plazoDeCobroId,_that.metodoDeCobroId,_that.descuentoProntoPago,_that.riesgoConcedidoInterno,_that.riesgoConcedidoInternoDate,_that.riesgoConcedidoCoafe,_that.riesgoConcedidoCoafeFecha,_that.riesgoConcedido,_that.riesgoPendienteCobroVencido,_that.riesgoPendienteCobroNoVencido,_that.riesgoPendienteServir,_that.riesgoPendienteFacturar,_that.obvservacionesInternas,_that.clientePotencial,_that.clienteEstadoPotencialId,_that.clienteTipoPotencialId,_that.representante1Id,_that.representante1Nombre,_that.representante2Id,_that.representante2Nombre,_that.telefonoFijo,_that.telefonoMovil,_that.email,_that.sectorId,_that.subsectorId,_that.franqPortes1,_that.franqPortes2,_that.franqPortes3,_that.importePortes1,_that.importePortes2,_that.importePortes3,_that.ventasPeriodoActual,_that.ventasPeriodoAnterior,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteDTO extends ClienteDTO {
  const _ClienteDTO({@JsonKey(name: 'CLIENTE_ID') required this.id, @JsonKey(name: 'NOMBRE') required this.nombreCliente, @JsonKey(name: 'NIF') this.nif, @JsonKey(name: 'NOMBRE_FISCAL') required this.nombreFiscal, @JsonKey(name: 'DIRECCION_FISCAL1') this.direccionFiscal1, @JsonKey(name: 'DIRECCION_FISCAL2') this.direccionFiscal2, @JsonKey(name: 'CODIGO_POSTAL_FISCAL') this.codigoPostalFiscal, @JsonKey(name: 'POBLACION_FISCAL') this.poblacionFiscal, @JsonKey(name: 'PAIS_ID_FISCAL') this.paisFiscalId, @JsonKey(name: 'PROVINCIA_FISCAL') this.provinciaFiscal, @JsonKey(name: 'LATITUD_FISCAL') required this.latitudFiscal, @JsonKey(name: 'LONGITUD_FISCAL') required this.longitudFiscal, @JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'IVA') required this.iva, @JsonKey(name: 'VENTAS_ANYO_ACTUAL') required this.ventasAnyoActual, @JsonKey(name: 'VENTAS_ANYO_ANTERIOR') required this.ventasAnyoAnterior, @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') required this.ventasHaceDosAnyos, @JsonKey(name: 'MARGEN_ANYO_ACTUAL') required this.margenAnyoActual, @JsonKey(name: 'MARGEN_ANYO_ANTERIOR') required this.margenAnyoAnterior, @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') required this.margenHaceDosAnyos, @JsonKey(name: 'PORCENTAJE_ABONOS') required this.porcentajeAbonos, @JsonKey(name: 'PORCENTAJE_GARANTIAS') required this.porcentajeGarantias, @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') this.centralCompras, @JsonKey(name: 'URL_WEB') this.urlWeb, @JsonKey(name: 'DIVISA_ID') this.divisaId, @JsonKey(name: 'TARIFA_ID') this.tarifaId, @JsonKey(name: 'TARIFA_DESCRIPCION') this.tarifaDescripcion, @JsonKey(name: 'DESCUENTO_GENERAL_ID') this.descuentoGeneralId, @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION') this.descripcionDescuentoGeneral, @JsonKey(name: 'TIPO_CALCULO_PRECIO') required this.tipoCalculoPrecio, @JsonKey(name: 'PLAZO_COBRO_ID') this.plazoDeCobroId, @JsonKey(name: 'METODO_COBRO_ID') this.metodoDeCobroId, @JsonKey(name: 'DESCUENTO_PRONTO_PAGO') required this.descuentoProntoPago, @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO') required this.riesgoConcedidoInterno, @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA') this.riesgoConcedidoInternoDate, @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE') required this.riesgoConcedidoCoafe, @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA') this.riesgoConcedidoCoafeFecha, @JsonKey(name: 'RIESGO_CONCEDIDO') this.riesgoConcedido, @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE') this.riesgoPendienteCobroVencido, @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE') this.riesgoPendienteCobroNoVencido, @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE') this.riesgoPendienteServir, @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE') this.riesgoPendienteFacturar, @JsonKey(name: 'OBSERVACIONES_INTERNAS') this.obvservacionesInternas, @JsonKey(name: 'CLIENTE_POTENCIAL') this.clientePotencial, @JsonKey(name: 'ESTADO_POTENCIAL_ID') this.clienteEstadoPotencialId, @JsonKey(name: 'TIPO_POTENCIAL_ID') this.clienteTipoPotencialId, @JsonKey(name: 'REPRESENTANTE1_ID') this.representante1Id, @JsonKey(name: 'REPRESENTANTE1_NOMBRE') this.representante1Nombre, @JsonKey(name: 'REPRESENTANTE2_ID') this.representante2Id, @JsonKey(name: 'REPRESENTANTE2_NOMBRE') this.representante2Nombre, @JsonKey(name: 'TELEFONO_FIJO') this.telefonoFijo, @JsonKey(name: 'TELEFONO_MOVIL') this.telefonoMovil, @JsonKey(name: 'E_MAIL') this.email, @JsonKey(name: 'SECTOR_ID') this.sectorId, @JsonKey(name: 'SUBSECTOR_ID') this.subsectorId, @JsonKey(name: 'FRANQ_PORTES1') this.franqPortes1, @JsonKey(name: 'FRANQ_PORTES2') this.franqPortes2, @JsonKey(name: 'FRANQ_PORTES3') this.franqPortes3, @JsonKey(name: 'IMPORTE_PORTES1') this.importePortes1, @JsonKey(name: 'IMPORTE_PORTES2') this.importePortes2, @JsonKey(name: 'IMPORTE_PORTES3') this.importePortes3, @JsonKey(name: 'VENTAS_PERIODO') this.ventasPeriodoActual, @JsonKey(name: 'VENTAS_PERIODO_ANTERIOR') this.ventasPeriodoAnterior, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ClienteDTO.fromJson(Map<String, dynamic> json) => _$ClienteDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String id;
@override@JsonKey(name: 'NOMBRE') final  String nombreCliente;
@override@JsonKey(name: 'NIF') final  String? nif;
@override@JsonKey(name: 'NOMBRE_FISCAL') final  String nombreFiscal;
@override@JsonKey(name: 'DIRECCION_FISCAL1') final  String? direccionFiscal1;
@override@JsonKey(name: 'DIRECCION_FISCAL2') final  String? direccionFiscal2;
@override@JsonKey(name: 'CODIGO_POSTAL_FISCAL') final  String? codigoPostalFiscal;
@override@JsonKey(name: 'POBLACION_FISCAL') final  String? poblacionFiscal;
@override@JsonKey(name: 'PAIS_ID_FISCAL') final  String? paisFiscalId;
@override@JsonKey(name: 'PROVINCIA_FISCAL') final  String? provinciaFiscal;
@override@JsonKey(name: 'LATITUD_FISCAL') final  double latitudFiscal;
@override@JsonKey(name: 'LONGITUD_FISCAL') final  double longitudFiscal;
@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'IVA') final  double iva;
@override@JsonKey(name: 'VENTAS_ANYO_ACTUAL') final  double ventasAnyoActual;
@override@JsonKey(name: 'VENTAS_ANYO_ANTERIOR') final  double ventasAnyoAnterior;
@override@JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') final  double ventasHaceDosAnyos;
@override@JsonKey(name: 'MARGEN_ANYO_ACTUAL') final  double margenAnyoActual;
@override@JsonKey(name: 'MARGEN_ANYO_ANTERIOR') final  double margenAnyoAnterior;
@override@JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') final  double margenHaceDosAnyos;
@override@JsonKey(name: 'PORCENTAJE_ABONOS') final  double porcentajeAbonos;
@override@JsonKey(name: 'PORCENTAJE_GARANTIAS') final  double porcentajeGarantias;
@override@JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') final  String? centralCompras;
@override@JsonKey(name: 'URL_WEB') final  String? urlWeb;
@override@JsonKey(name: 'DIVISA_ID') final  String? divisaId;
@override@JsonKey(name: 'TARIFA_ID') final  String? tarifaId;
@override@JsonKey(name: 'TARIFA_DESCRIPCION') final  String? tarifaDescripcion;
@override@JsonKey(name: 'DESCUENTO_GENERAL_ID') final  String? descuentoGeneralId;
@override@JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION') final  String? descripcionDescuentoGeneral;
@override@JsonKey(name: 'TIPO_CALCULO_PRECIO') final  String tipoCalculoPrecio;
@override@JsonKey(name: 'PLAZO_COBRO_ID') final  String? plazoDeCobroId;
@override@JsonKey(name: 'METODO_COBRO_ID') final  String? metodoDeCobroId;
@override@JsonKey(name: 'DESCUENTO_PRONTO_PAGO') final  double descuentoProntoPago;
@override@JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO') final  double riesgoConcedidoInterno;
@override@JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA') final  DateTime? riesgoConcedidoInternoDate;
@override@JsonKey(name: 'RIESGO_CONCEDIDO_COFACE') final  double riesgoConcedidoCoafe;
@override@JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA') final  DateTime? riesgoConcedidoCoafeFecha;
@override@JsonKey(name: 'RIESGO_CONCEDIDO') final  double? riesgoConcedido;
@override@JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE') final  double? riesgoPendienteCobroVencido;
@override@JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE') final  double? riesgoPendienteCobroNoVencido;
@override@JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE') final  double? riesgoPendienteServir;
@override@JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE') final  double? riesgoPendienteFacturar;
@override@JsonKey(name: 'OBSERVACIONES_INTERNAS') final  String? obvservacionesInternas;
@override@JsonKey(name: 'CLIENTE_POTENCIAL') final  String? clientePotencial;
@override@JsonKey(name: 'ESTADO_POTENCIAL_ID') final  String? clienteEstadoPotencialId;
@override@JsonKey(name: 'TIPO_POTENCIAL_ID') final  String? clienteTipoPotencialId;
@override@JsonKey(name: 'REPRESENTANTE1_ID') final  String? representante1Id;
@override@JsonKey(name: 'REPRESENTANTE1_NOMBRE') final  String? representante1Nombre;
@override@JsonKey(name: 'REPRESENTANTE2_ID') final  String? representante2Id;
@override@JsonKey(name: 'REPRESENTANTE2_NOMBRE') final  String? representante2Nombre;
@override@JsonKey(name: 'TELEFONO_FIJO') final  String? telefonoFijo;
@override@JsonKey(name: 'TELEFONO_MOVIL') final  String? telefonoMovil;
@override@JsonKey(name: 'E_MAIL') final  String? email;
@override@JsonKey(name: 'SECTOR_ID') final  String? sectorId;
@override@JsonKey(name: 'SUBSECTOR_ID') final  String? subsectorId;
@override@JsonKey(name: 'FRANQ_PORTES1') final  int? franqPortes1;
@override@JsonKey(name: 'FRANQ_PORTES2') final  int? franqPortes2;
@override@JsonKey(name: 'FRANQ_PORTES3') final  int? franqPortes3;
@override@JsonKey(name: 'IMPORTE_PORTES1') final  double? importePortes1;
@override@JsonKey(name: 'IMPORTE_PORTES2') final  double? importePortes2;
@override@JsonKey(name: 'IMPORTE_PORTES3') final  double? importePortes3;
@override@JsonKey(name: 'VENTAS_PERIODO') final  double? ventasPeriodoActual;
@override@JsonKey(name: 'VENTAS_PERIODO_ANTERIOR') final  double? ventasPeriodoAnterior;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ClienteDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteDTOCopyWith<_ClienteDTO> get copyWith => __$ClienteDTOCopyWithImpl<_ClienteDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.nif, nif) || other.nif == nif)&&(identical(other.nombreFiscal, nombreFiscal) || other.nombreFiscal == nombreFiscal)&&(identical(other.direccionFiscal1, direccionFiscal1) || other.direccionFiscal1 == direccionFiscal1)&&(identical(other.direccionFiscal2, direccionFiscal2) || other.direccionFiscal2 == direccionFiscal2)&&(identical(other.codigoPostalFiscal, codigoPostalFiscal) || other.codigoPostalFiscal == codigoPostalFiscal)&&(identical(other.poblacionFiscal, poblacionFiscal) || other.poblacionFiscal == poblacionFiscal)&&(identical(other.paisFiscalId, paisFiscalId) || other.paisFiscalId == paisFiscalId)&&(identical(other.provinciaFiscal, provinciaFiscal) || other.provinciaFiscal == provinciaFiscal)&&(identical(other.latitudFiscal, latitudFiscal) || other.latitudFiscal == latitudFiscal)&&(identical(other.longitudFiscal, longitudFiscal) || other.longitudFiscal == longitudFiscal)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.ventasAnyoActual, ventasAnyoActual) || other.ventasAnyoActual == ventasAnyoActual)&&(identical(other.ventasAnyoAnterior, ventasAnyoAnterior) || other.ventasAnyoAnterior == ventasAnyoAnterior)&&(identical(other.ventasHaceDosAnyos, ventasHaceDosAnyos) || other.ventasHaceDosAnyos == ventasHaceDosAnyos)&&(identical(other.margenAnyoActual, margenAnyoActual) || other.margenAnyoActual == margenAnyoActual)&&(identical(other.margenAnyoAnterior, margenAnyoAnterior) || other.margenAnyoAnterior == margenAnyoAnterior)&&(identical(other.margenHaceDosAnyos, margenHaceDosAnyos) || other.margenHaceDosAnyos == margenHaceDosAnyos)&&(identical(other.porcentajeAbonos, porcentajeAbonos) || other.porcentajeAbonos == porcentajeAbonos)&&(identical(other.porcentajeGarantias, porcentajeGarantias) || other.porcentajeGarantias == porcentajeGarantias)&&(identical(other.centralCompras, centralCompras) || other.centralCompras == centralCompras)&&(identical(other.urlWeb, urlWeb) || other.urlWeb == urlWeb)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.tarifaDescripcion, tarifaDescripcion) || other.tarifaDescripcion == tarifaDescripcion)&&(identical(other.descuentoGeneralId, descuentoGeneralId) || other.descuentoGeneralId == descuentoGeneralId)&&(identical(other.descripcionDescuentoGeneral, descripcionDescuentoGeneral) || other.descripcionDescuentoGeneral == descripcionDescuentoGeneral)&&(identical(other.tipoCalculoPrecio, tipoCalculoPrecio) || other.tipoCalculoPrecio == tipoCalculoPrecio)&&(identical(other.plazoDeCobroId, plazoDeCobroId) || other.plazoDeCobroId == plazoDeCobroId)&&(identical(other.metodoDeCobroId, metodoDeCobroId) || other.metodoDeCobroId == metodoDeCobroId)&&(identical(other.descuentoProntoPago, descuentoProntoPago) || other.descuentoProntoPago == descuentoProntoPago)&&(identical(other.riesgoConcedidoInterno, riesgoConcedidoInterno) || other.riesgoConcedidoInterno == riesgoConcedidoInterno)&&(identical(other.riesgoConcedidoInternoDate, riesgoConcedidoInternoDate) || other.riesgoConcedidoInternoDate == riesgoConcedidoInternoDate)&&(identical(other.riesgoConcedidoCoafe, riesgoConcedidoCoafe) || other.riesgoConcedidoCoafe == riesgoConcedidoCoafe)&&(identical(other.riesgoConcedidoCoafeFecha, riesgoConcedidoCoafeFecha) || other.riesgoConcedidoCoafeFecha == riesgoConcedidoCoafeFecha)&&(identical(other.riesgoConcedido, riesgoConcedido) || other.riesgoConcedido == riesgoConcedido)&&(identical(other.riesgoPendienteCobroVencido, riesgoPendienteCobroVencido) || other.riesgoPendienteCobroVencido == riesgoPendienteCobroVencido)&&(identical(other.riesgoPendienteCobroNoVencido, riesgoPendienteCobroNoVencido) || other.riesgoPendienteCobroNoVencido == riesgoPendienteCobroNoVencido)&&(identical(other.riesgoPendienteServir, riesgoPendienteServir) || other.riesgoPendienteServir == riesgoPendienteServir)&&(identical(other.riesgoPendienteFacturar, riesgoPendienteFacturar) || other.riesgoPendienteFacturar == riesgoPendienteFacturar)&&(identical(other.obvservacionesInternas, obvservacionesInternas) || other.obvservacionesInternas == obvservacionesInternas)&&(identical(other.clientePotencial, clientePotencial) || other.clientePotencial == clientePotencial)&&(identical(other.clienteEstadoPotencialId, clienteEstadoPotencialId) || other.clienteEstadoPotencialId == clienteEstadoPotencialId)&&(identical(other.clienteTipoPotencialId, clienteTipoPotencialId) || other.clienteTipoPotencialId == clienteTipoPotencialId)&&(identical(other.representante1Id, representante1Id) || other.representante1Id == representante1Id)&&(identical(other.representante1Nombre, representante1Nombre) || other.representante1Nombre == representante1Nombre)&&(identical(other.representante2Id, representante2Id) || other.representante2Id == representante2Id)&&(identical(other.representante2Nombre, representante2Nombre) || other.representante2Nombre == representante2Nombre)&&(identical(other.telefonoFijo, telefonoFijo) || other.telefonoFijo == telefonoFijo)&&(identical(other.telefonoMovil, telefonoMovil) || other.telefonoMovil == telefonoMovil)&&(identical(other.email, email) || other.email == email)&&(identical(other.sectorId, sectorId) || other.sectorId == sectorId)&&(identical(other.subsectorId, subsectorId) || other.subsectorId == subsectorId)&&(identical(other.franqPortes1, franqPortes1) || other.franqPortes1 == franqPortes1)&&(identical(other.franqPortes2, franqPortes2) || other.franqPortes2 == franqPortes2)&&(identical(other.franqPortes3, franqPortes3) || other.franqPortes3 == franqPortes3)&&(identical(other.importePortes1, importePortes1) || other.importePortes1 == importePortes1)&&(identical(other.importePortes2, importePortes2) || other.importePortes2 == importePortes2)&&(identical(other.importePortes3, importePortes3) || other.importePortes3 == importePortes3)&&(identical(other.ventasPeriodoActual, ventasPeriodoActual) || other.ventasPeriodoActual == ventasPeriodoActual)&&(identical(other.ventasPeriodoAnterior, ventasPeriodoAnterior) || other.ventasPeriodoAnterior == ventasPeriodoAnterior)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,nombreCliente,nif,nombreFiscal,direccionFiscal1,direccionFiscal2,codigoPostalFiscal,poblacionFiscal,paisFiscalId,provinciaFiscal,latitudFiscal,longitudFiscal,empresaId,iva,ventasAnyoActual,ventasAnyoAnterior,ventasHaceDosAnyos,margenAnyoActual,margenAnyoAnterior,margenHaceDosAnyos,porcentajeAbonos,porcentajeGarantias,centralCompras,urlWeb,divisaId,tarifaId,tarifaDescripcion,descuentoGeneralId,descripcionDescuentoGeneral,tipoCalculoPrecio,plazoDeCobroId,metodoDeCobroId,descuentoProntoPago,riesgoConcedidoInterno,riesgoConcedidoInternoDate,riesgoConcedidoCoafe,riesgoConcedidoCoafeFecha,riesgoConcedido,riesgoPendienteCobroVencido,riesgoPendienteCobroNoVencido,riesgoPendienteServir,riesgoPendienteFacturar,obvservacionesInternas,clientePotencial,clienteEstadoPotencialId,clienteTipoPotencialId,representante1Id,representante1Nombre,representante2Id,representante2Nombre,telefonoFijo,telefonoMovil,email,sectorId,subsectorId,franqPortes1,franqPortes2,franqPortes3,importePortes1,importePortes2,importePortes3,ventasPeriodoActual,ventasPeriodoAnterior,lastUpdated,deleted]);

@override
String toString() {
  return 'ClienteDTO(id: $id, nombreCliente: $nombreCliente, nif: $nif, nombreFiscal: $nombreFiscal, direccionFiscal1: $direccionFiscal1, direccionFiscal2: $direccionFiscal2, codigoPostalFiscal: $codigoPostalFiscal, poblacionFiscal: $poblacionFiscal, paisFiscalId: $paisFiscalId, provinciaFiscal: $provinciaFiscal, latitudFiscal: $latitudFiscal, longitudFiscal: $longitudFiscal, empresaId: $empresaId, iva: $iva, ventasAnyoActual: $ventasAnyoActual, ventasAnyoAnterior: $ventasAnyoAnterior, ventasHaceDosAnyos: $ventasHaceDosAnyos, margenAnyoActual: $margenAnyoActual, margenAnyoAnterior: $margenAnyoAnterior, margenHaceDosAnyos: $margenHaceDosAnyos, porcentajeAbonos: $porcentajeAbonos, porcentajeGarantias: $porcentajeGarantias, centralCompras: $centralCompras, urlWeb: $urlWeb, divisaId: $divisaId, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, descuentoGeneralId: $descuentoGeneralId, descripcionDescuentoGeneral: $descripcionDescuentoGeneral, tipoCalculoPrecio: $tipoCalculoPrecio, plazoDeCobroId: $plazoDeCobroId, metodoDeCobroId: $metodoDeCobroId, descuentoProntoPago: $descuentoProntoPago, riesgoConcedidoInterno: $riesgoConcedidoInterno, riesgoConcedidoInternoDate: $riesgoConcedidoInternoDate, riesgoConcedidoCoafe: $riesgoConcedidoCoafe, riesgoConcedidoCoafeFecha: $riesgoConcedidoCoafeFecha, riesgoConcedido: $riesgoConcedido, riesgoPendienteCobroVencido: $riesgoPendienteCobroVencido, riesgoPendienteCobroNoVencido: $riesgoPendienteCobroNoVencido, riesgoPendienteServir: $riesgoPendienteServir, riesgoPendienteFacturar: $riesgoPendienteFacturar, obvservacionesInternas: $obvservacionesInternas, clientePotencial: $clientePotencial, clienteEstadoPotencialId: $clienteEstadoPotencialId, clienteTipoPotencialId: $clienteTipoPotencialId, representante1Id: $representante1Id, representante1Nombre: $representante1Nombre, representante2Id: $representante2Id, representante2Nombre: $representante2Nombre, telefonoFijo: $telefonoFijo, telefonoMovil: $telefonoMovil, email: $email, sectorId: $sectorId, subsectorId: $subsectorId, franqPortes1: $franqPortes1, franqPortes2: $franqPortes2, franqPortes3: $franqPortes3, importePortes1: $importePortes1, importePortes2: $importePortes2, importePortes3: $importePortes3, ventasPeriodoActual: $ventasPeriodoActual, ventasPeriodoAnterior: $ventasPeriodoAnterior, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteDTOCopyWith<$Res> implements $ClienteDTOCopyWith<$Res> {
  factory _$ClienteDTOCopyWith(_ClienteDTO value, $Res Function(_ClienteDTO) _then) = __$ClienteDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String id,@JsonKey(name: 'NOMBRE') String nombreCliente,@JsonKey(name: 'NIF') String? nif,@JsonKey(name: 'NOMBRE_FISCAL') String nombreFiscal,@JsonKey(name: 'DIRECCION_FISCAL1') String? direccionFiscal1,@JsonKey(name: 'DIRECCION_FISCAL2') String? direccionFiscal2,@JsonKey(name: 'CODIGO_POSTAL_FISCAL') String? codigoPostalFiscal,@JsonKey(name: 'POBLACION_FISCAL') String? poblacionFiscal,@JsonKey(name: 'PAIS_ID_FISCAL') String? paisFiscalId,@JsonKey(name: 'PROVINCIA_FISCAL') String? provinciaFiscal,@JsonKey(name: 'LATITUD_FISCAL') double latitudFiscal,@JsonKey(name: 'LONGITUD_FISCAL') double longitudFiscal,@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'VENTAS_ANYO_ACTUAL') double ventasAnyoActual,@JsonKey(name: 'VENTAS_ANYO_ANTERIOR') double ventasAnyoAnterior,@JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') double ventasHaceDosAnyos,@JsonKey(name: 'MARGEN_ANYO_ACTUAL') double margenAnyoActual,@JsonKey(name: 'MARGEN_ANYO_ANTERIOR') double margenAnyoAnterior,@JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') double margenHaceDosAnyos,@JsonKey(name: 'PORCENTAJE_ABONOS') double porcentajeAbonos,@JsonKey(name: 'PORCENTAJE_GARANTIAS') double porcentajeGarantias,@JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') String? centralCompras,@JsonKey(name: 'URL_WEB') String? urlWeb,@JsonKey(name: 'DIVISA_ID') String? divisaId,@JsonKey(name: 'TARIFA_ID') String? tarifaId,@JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,@JsonKey(name: 'DESCUENTO_GENERAL_ID') String? descuentoGeneralId,@JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION') String? descripcionDescuentoGeneral,@JsonKey(name: 'TIPO_CALCULO_PRECIO') String tipoCalculoPrecio,@JsonKey(name: 'PLAZO_COBRO_ID') String? plazoDeCobroId,@JsonKey(name: 'METODO_COBRO_ID') String? metodoDeCobroId,@JsonKey(name: 'DESCUENTO_PRONTO_PAGO') double descuentoProntoPago,@JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO') double riesgoConcedidoInterno,@JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA') DateTime? riesgoConcedidoInternoDate,@JsonKey(name: 'RIESGO_CONCEDIDO_COFACE') double riesgoConcedidoCoafe,@JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA') DateTime? riesgoConcedidoCoafeFecha,@JsonKey(name: 'RIESGO_CONCEDIDO') double? riesgoConcedido,@JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE') double? riesgoPendienteCobroVencido,@JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE') double? riesgoPendienteCobroNoVencido,@JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE') double? riesgoPendienteServir,@JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE') double? riesgoPendienteFacturar,@JsonKey(name: 'OBSERVACIONES_INTERNAS') String? obvservacionesInternas,@JsonKey(name: 'CLIENTE_POTENCIAL') String? clientePotencial,@JsonKey(name: 'ESTADO_POTENCIAL_ID') String? clienteEstadoPotencialId,@JsonKey(name: 'TIPO_POTENCIAL_ID') String? clienteTipoPotencialId,@JsonKey(name: 'REPRESENTANTE1_ID') String? representante1Id,@JsonKey(name: 'REPRESENTANTE1_NOMBRE') String? representante1Nombre,@JsonKey(name: 'REPRESENTANTE2_ID') String? representante2Id,@JsonKey(name: 'REPRESENTANTE2_NOMBRE') String? representante2Nombre,@JsonKey(name: 'TELEFONO_FIJO') String? telefonoFijo,@JsonKey(name: 'TELEFONO_MOVIL') String? telefonoMovil,@JsonKey(name: 'E_MAIL') String? email,@JsonKey(name: 'SECTOR_ID') String? sectorId,@JsonKey(name: 'SUBSECTOR_ID') String? subsectorId,@JsonKey(name: 'FRANQ_PORTES1') int? franqPortes1,@JsonKey(name: 'FRANQ_PORTES2') int? franqPortes2,@JsonKey(name: 'FRANQ_PORTES3') int? franqPortes3,@JsonKey(name: 'IMPORTE_PORTES1') double? importePortes1,@JsonKey(name: 'IMPORTE_PORTES2') double? importePortes2,@JsonKey(name: 'IMPORTE_PORTES3') double? importePortes3,@JsonKey(name: 'VENTAS_PERIODO') double? ventasPeriodoActual,@JsonKey(name: 'VENTAS_PERIODO_ANTERIOR') double? ventasPeriodoAnterior,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ClienteDTOCopyWithImpl<$Res>
    implements _$ClienteDTOCopyWith<$Res> {
  __$ClienteDTOCopyWithImpl(this._self, this._then);

  final _ClienteDTO _self;
  final $Res Function(_ClienteDTO) _then;

/// Create a copy of ClienteDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nombreCliente = null,Object? nif = freezed,Object? nombreFiscal = null,Object? direccionFiscal1 = freezed,Object? direccionFiscal2 = freezed,Object? codigoPostalFiscal = freezed,Object? poblacionFiscal = freezed,Object? paisFiscalId = freezed,Object? provinciaFiscal = freezed,Object? latitudFiscal = null,Object? longitudFiscal = null,Object? empresaId = null,Object? iva = null,Object? ventasAnyoActual = null,Object? ventasAnyoAnterior = null,Object? ventasHaceDosAnyos = null,Object? margenAnyoActual = null,Object? margenAnyoAnterior = null,Object? margenHaceDosAnyos = null,Object? porcentajeAbonos = null,Object? porcentajeGarantias = null,Object? centralCompras = freezed,Object? urlWeb = freezed,Object? divisaId = freezed,Object? tarifaId = freezed,Object? tarifaDescripcion = freezed,Object? descuentoGeneralId = freezed,Object? descripcionDescuentoGeneral = freezed,Object? tipoCalculoPrecio = null,Object? plazoDeCobroId = freezed,Object? metodoDeCobroId = freezed,Object? descuentoProntoPago = null,Object? riesgoConcedidoInterno = null,Object? riesgoConcedidoInternoDate = freezed,Object? riesgoConcedidoCoafe = null,Object? riesgoConcedidoCoafeFecha = freezed,Object? riesgoConcedido = freezed,Object? riesgoPendienteCobroVencido = freezed,Object? riesgoPendienteCobroNoVencido = freezed,Object? riesgoPendienteServir = freezed,Object? riesgoPendienteFacturar = freezed,Object? obvservacionesInternas = freezed,Object? clientePotencial = freezed,Object? clienteEstadoPotencialId = freezed,Object? clienteTipoPotencialId = freezed,Object? representante1Id = freezed,Object? representante1Nombre = freezed,Object? representante2Id = freezed,Object? representante2Nombre = freezed,Object? telefonoFijo = freezed,Object? telefonoMovil = freezed,Object? email = freezed,Object? sectorId = freezed,Object? subsectorId = freezed,Object? franqPortes1 = freezed,Object? franqPortes2 = freezed,Object? franqPortes3 = freezed,Object? importePortes1 = freezed,Object? importePortes2 = freezed,Object? importePortes3 = freezed,Object? ventasPeriodoActual = freezed,Object? ventasPeriodoAnterior = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,nif: freezed == nif ? _self.nif : nif // ignore: cast_nullable_to_non_nullable
as String?,nombreFiscal: null == nombreFiscal ? _self.nombreFiscal : nombreFiscal // ignore: cast_nullable_to_non_nullable
as String,direccionFiscal1: freezed == direccionFiscal1 ? _self.direccionFiscal1 : direccionFiscal1 // ignore: cast_nullable_to_non_nullable
as String?,direccionFiscal2: freezed == direccionFiscal2 ? _self.direccionFiscal2 : direccionFiscal2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostalFiscal: freezed == codigoPostalFiscal ? _self.codigoPostalFiscal : codigoPostalFiscal // ignore: cast_nullable_to_non_nullable
as String?,poblacionFiscal: freezed == poblacionFiscal ? _self.poblacionFiscal : poblacionFiscal // ignore: cast_nullable_to_non_nullable
as String?,paisFiscalId: freezed == paisFiscalId ? _self.paisFiscalId : paisFiscalId // ignore: cast_nullable_to_non_nullable
as String?,provinciaFiscal: freezed == provinciaFiscal ? _self.provinciaFiscal : provinciaFiscal // ignore: cast_nullable_to_non_nullable
as String?,latitudFiscal: null == latitudFiscal ? _self.latitudFiscal : latitudFiscal // ignore: cast_nullable_to_non_nullable
as double,longitudFiscal: null == longitudFiscal ? _self.longitudFiscal : longitudFiscal // ignore: cast_nullable_to_non_nullable
as double,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,ventasAnyoActual: null == ventasAnyoActual ? _self.ventasAnyoActual : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
as double,ventasAnyoAnterior: null == ventasAnyoAnterior ? _self.ventasAnyoAnterior : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
as double,ventasHaceDosAnyos: null == ventasHaceDosAnyos ? _self.ventasHaceDosAnyos : ventasHaceDosAnyos // ignore: cast_nullable_to_non_nullable
as double,margenAnyoActual: null == margenAnyoActual ? _self.margenAnyoActual : margenAnyoActual // ignore: cast_nullable_to_non_nullable
as double,margenAnyoAnterior: null == margenAnyoAnterior ? _self.margenAnyoAnterior : margenAnyoAnterior // ignore: cast_nullable_to_non_nullable
as double,margenHaceDosAnyos: null == margenHaceDosAnyos ? _self.margenHaceDosAnyos : margenHaceDosAnyos // ignore: cast_nullable_to_non_nullable
as double,porcentajeAbonos: null == porcentajeAbonos ? _self.porcentajeAbonos : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
as double,porcentajeGarantias: null == porcentajeGarantias ? _self.porcentajeGarantias : porcentajeGarantias // ignore: cast_nullable_to_non_nullable
as double,centralCompras: freezed == centralCompras ? _self.centralCompras : centralCompras // ignore: cast_nullable_to_non_nullable
as String?,urlWeb: freezed == urlWeb ? _self.urlWeb : urlWeb // ignore: cast_nullable_to_non_nullable
as String?,divisaId: freezed == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String?,tarifaId: freezed == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String?,tarifaDescripcion: freezed == tarifaDescripcion ? _self.tarifaDescripcion : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
as String?,descuentoGeneralId: freezed == descuentoGeneralId ? _self.descuentoGeneralId : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
as String?,descripcionDescuentoGeneral: freezed == descripcionDescuentoGeneral ? _self.descripcionDescuentoGeneral : descripcionDescuentoGeneral // ignore: cast_nullable_to_non_nullable
as String?,tipoCalculoPrecio: null == tipoCalculoPrecio ? _self.tipoCalculoPrecio : tipoCalculoPrecio // ignore: cast_nullable_to_non_nullable
as String,plazoDeCobroId: freezed == plazoDeCobroId ? _self.plazoDeCobroId : plazoDeCobroId // ignore: cast_nullable_to_non_nullable
as String?,metodoDeCobroId: freezed == metodoDeCobroId ? _self.metodoDeCobroId : metodoDeCobroId // ignore: cast_nullable_to_non_nullable
as String?,descuentoProntoPago: null == descuentoProntoPago ? _self.descuentoProntoPago : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
as double,riesgoConcedidoInterno: null == riesgoConcedidoInterno ? _self.riesgoConcedidoInterno : riesgoConcedidoInterno // ignore: cast_nullable_to_non_nullable
as double,riesgoConcedidoInternoDate: freezed == riesgoConcedidoInternoDate ? _self.riesgoConcedidoInternoDate : riesgoConcedidoInternoDate // ignore: cast_nullable_to_non_nullable
as DateTime?,riesgoConcedidoCoafe: null == riesgoConcedidoCoafe ? _self.riesgoConcedidoCoafe : riesgoConcedidoCoafe // ignore: cast_nullable_to_non_nullable
as double,riesgoConcedidoCoafeFecha: freezed == riesgoConcedidoCoafeFecha ? _self.riesgoConcedidoCoafeFecha : riesgoConcedidoCoafeFecha // ignore: cast_nullable_to_non_nullable
as DateTime?,riesgoConcedido: freezed == riesgoConcedido ? _self.riesgoConcedido : riesgoConcedido // ignore: cast_nullable_to_non_nullable
as double?,riesgoPendienteCobroVencido: freezed == riesgoPendienteCobroVencido ? _self.riesgoPendienteCobroVencido : riesgoPendienteCobroVencido // ignore: cast_nullable_to_non_nullable
as double?,riesgoPendienteCobroNoVencido: freezed == riesgoPendienteCobroNoVencido ? _self.riesgoPendienteCobroNoVencido : riesgoPendienteCobroNoVencido // ignore: cast_nullable_to_non_nullable
as double?,riesgoPendienteServir: freezed == riesgoPendienteServir ? _self.riesgoPendienteServir : riesgoPendienteServir // ignore: cast_nullable_to_non_nullable
as double?,riesgoPendienteFacturar: freezed == riesgoPendienteFacturar ? _self.riesgoPendienteFacturar : riesgoPendienteFacturar // ignore: cast_nullable_to_non_nullable
as double?,obvservacionesInternas: freezed == obvservacionesInternas ? _self.obvservacionesInternas : obvservacionesInternas // ignore: cast_nullable_to_non_nullable
as String?,clientePotencial: freezed == clientePotencial ? _self.clientePotencial : clientePotencial // ignore: cast_nullable_to_non_nullable
as String?,clienteEstadoPotencialId: freezed == clienteEstadoPotencialId ? _self.clienteEstadoPotencialId : clienteEstadoPotencialId // ignore: cast_nullable_to_non_nullable
as String?,clienteTipoPotencialId: freezed == clienteTipoPotencialId ? _self.clienteTipoPotencialId : clienteTipoPotencialId // ignore: cast_nullable_to_non_nullable
as String?,representante1Id: freezed == representante1Id ? _self.representante1Id : representante1Id // ignore: cast_nullable_to_non_nullable
as String?,representante1Nombre: freezed == representante1Nombre ? _self.representante1Nombre : representante1Nombre // ignore: cast_nullable_to_non_nullable
as String?,representante2Id: freezed == representante2Id ? _self.representante2Id : representante2Id // ignore: cast_nullable_to_non_nullable
as String?,representante2Nombre: freezed == representante2Nombre ? _self.representante2Nombre : representante2Nombre // ignore: cast_nullable_to_non_nullable
as String?,telefonoFijo: freezed == telefonoFijo ? _self.telefonoFijo : telefonoFijo // ignore: cast_nullable_to_non_nullable
as String?,telefonoMovil: freezed == telefonoMovil ? _self.telefonoMovil : telefonoMovil // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,sectorId: freezed == sectorId ? _self.sectorId : sectorId // ignore: cast_nullable_to_non_nullable
as String?,subsectorId: freezed == subsectorId ? _self.subsectorId : subsectorId // ignore: cast_nullable_to_non_nullable
as String?,franqPortes1: freezed == franqPortes1 ? _self.franqPortes1 : franqPortes1 // ignore: cast_nullable_to_non_nullable
as int?,franqPortes2: freezed == franqPortes2 ? _self.franqPortes2 : franqPortes2 // ignore: cast_nullable_to_non_nullable
as int?,franqPortes3: freezed == franqPortes3 ? _self.franqPortes3 : franqPortes3 // ignore: cast_nullable_to_non_nullable
as int?,importePortes1: freezed == importePortes1 ? _self.importePortes1 : importePortes1 // ignore: cast_nullable_to_non_nullable
as double?,importePortes2: freezed == importePortes2 ? _self.importePortes2 : importePortes2 // ignore: cast_nullable_to_non_nullable
as double?,importePortes3: freezed == importePortes3 ? _self.importePortes3 : importePortes3 // ignore: cast_nullable_to_non_nullable
as double?,ventasPeriodoActual: freezed == ventasPeriodoActual ? _self.ventasPeriodoActual : ventasPeriodoActual // ignore: cast_nullable_to_non_nullable
as double?,ventasPeriodoAnterior: freezed == ventasPeriodoAnterior ? _self.ventasPeriodoAnterior : ventasPeriodoAnterior // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
