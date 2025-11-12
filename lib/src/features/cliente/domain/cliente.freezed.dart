// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Cliente {

 String get id; String get nombreCliente; String get nombreFiscal; String? get nif; String? get direccionFiscal1; String? get direccionFiscal2; String? get codigoPostalFiscal; String? get poblacionFiscal; String? get provinciaFiscal; Pais? get paisFiscal; double get latitudFiscal; double get longitudFiscal; String? get direccionPredeterminada1; String? get direccionPredeterminada2; String? get codigoPostalPredeterminada; String? get poblacionPredeterminada; String? get provinciaPredeterminada; Pais? get paisPredeterminada; double? get latitudPredeterminada; double? get longitudPredeterminada; String get empresaId; double get iva; Money get ventasAnyoActual; Money get ventasAnyoAnterior; Money get ventasHaceDosAnyos; double get margenAnyoActual; double get margenAnyoAnterior; double get margenHaceDosAnyos; double get porcentajeAbonos; double get porcentajeGarantias; String? get centralCompras; String? get urlWeb; Divisa? get divisa; String? get tarifaId; String? get tarifaDescripcion; String? get descuentoGeneralId; String? get descripcionDescuentoGeneral; String get tipoCalculoPrecio; PlazoDeCobro? get plazoDeCobro; MetodoDeCobro? get metodoDeCobro; double get descuentoProntoPago; Money get riesgoConcedidoInterno; DateTime? get riesgoConcedidoInternoDate; Money get riesgoConcedidoCoafe; DateTime? get riesgoConcedidoCoafeFecha; Money get riesgoActual; Money? get riesgoConcedido; Money? get riesgoPendienteCobroVencido; Money? get riesgoPendienteCobroNoVencido; Money? get riesgoPendienteServir; Money? get riesgoPendienteFacturar; Money get riesgoExcedido; String? get obvservacionesInternas; bool? get clientePotencial; ClienteEstadoPotencial? get clienteEstadoPotencial; ClienteTipoPotencial? get clienteTipoPotencial; String? get representante1Id; String? get representante1Nombre; String? get representante2Id; String? get representante2Nombre; String? get telefonoMovil; String? get telefonoFijo; String? get email; Sector? get sector; Subsector? get subsector; int? get franqPortes1; int? get franqPortes2; int? get franqPortes3; double? get importePortes1; double? get importePortes2; double? get importePortes3; double? get ventasPeriodoActual; double? get ventasPeriodoAnterior; DateTime? get lastUpdated; bool get deleted;
/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteCopyWith<Cliente> get copyWith => _$ClienteCopyWithImpl<Cliente>(this as Cliente, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cliente&&(identical(other.id, id) || other.id == id)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.nombreFiscal, nombreFiscal) || other.nombreFiscal == nombreFiscal)&&(identical(other.nif, nif) || other.nif == nif)&&(identical(other.direccionFiscal1, direccionFiscal1) || other.direccionFiscal1 == direccionFiscal1)&&(identical(other.direccionFiscal2, direccionFiscal2) || other.direccionFiscal2 == direccionFiscal2)&&(identical(other.codigoPostalFiscal, codigoPostalFiscal) || other.codigoPostalFiscal == codigoPostalFiscal)&&(identical(other.poblacionFiscal, poblacionFiscal) || other.poblacionFiscal == poblacionFiscal)&&(identical(other.provinciaFiscal, provinciaFiscal) || other.provinciaFiscal == provinciaFiscal)&&(identical(other.paisFiscal, paisFiscal) || other.paisFiscal == paisFiscal)&&(identical(other.latitudFiscal, latitudFiscal) || other.latitudFiscal == latitudFiscal)&&(identical(other.longitudFiscal, longitudFiscal) || other.longitudFiscal == longitudFiscal)&&(identical(other.direccionPredeterminada1, direccionPredeterminada1) || other.direccionPredeterminada1 == direccionPredeterminada1)&&(identical(other.direccionPredeterminada2, direccionPredeterminada2) || other.direccionPredeterminada2 == direccionPredeterminada2)&&(identical(other.codigoPostalPredeterminada, codigoPostalPredeterminada) || other.codigoPostalPredeterminada == codigoPostalPredeterminada)&&(identical(other.poblacionPredeterminada, poblacionPredeterminada) || other.poblacionPredeterminada == poblacionPredeterminada)&&(identical(other.provinciaPredeterminada, provinciaPredeterminada) || other.provinciaPredeterminada == provinciaPredeterminada)&&(identical(other.paisPredeterminada, paisPredeterminada) || other.paisPredeterminada == paisPredeterminada)&&(identical(other.latitudPredeterminada, latitudPredeterminada) || other.latitudPredeterminada == latitudPredeterminada)&&(identical(other.longitudPredeterminada, longitudPredeterminada) || other.longitudPredeterminada == longitudPredeterminada)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.ventasAnyoActual, ventasAnyoActual) || other.ventasAnyoActual == ventasAnyoActual)&&(identical(other.ventasAnyoAnterior, ventasAnyoAnterior) || other.ventasAnyoAnterior == ventasAnyoAnterior)&&(identical(other.ventasHaceDosAnyos, ventasHaceDosAnyos) || other.ventasHaceDosAnyos == ventasHaceDosAnyos)&&(identical(other.margenAnyoActual, margenAnyoActual) || other.margenAnyoActual == margenAnyoActual)&&(identical(other.margenAnyoAnterior, margenAnyoAnterior) || other.margenAnyoAnterior == margenAnyoAnterior)&&(identical(other.margenHaceDosAnyos, margenHaceDosAnyos) || other.margenHaceDosAnyos == margenHaceDosAnyos)&&(identical(other.porcentajeAbonos, porcentajeAbonos) || other.porcentajeAbonos == porcentajeAbonos)&&(identical(other.porcentajeGarantias, porcentajeGarantias) || other.porcentajeGarantias == porcentajeGarantias)&&(identical(other.centralCompras, centralCompras) || other.centralCompras == centralCompras)&&(identical(other.urlWeb, urlWeb) || other.urlWeb == urlWeb)&&(identical(other.divisa, divisa) || other.divisa == divisa)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.tarifaDescripcion, tarifaDescripcion) || other.tarifaDescripcion == tarifaDescripcion)&&(identical(other.descuentoGeneralId, descuentoGeneralId) || other.descuentoGeneralId == descuentoGeneralId)&&(identical(other.descripcionDescuentoGeneral, descripcionDescuentoGeneral) || other.descripcionDescuentoGeneral == descripcionDescuentoGeneral)&&(identical(other.tipoCalculoPrecio, tipoCalculoPrecio) || other.tipoCalculoPrecio == tipoCalculoPrecio)&&(identical(other.plazoDeCobro, plazoDeCobro) || other.plazoDeCobro == plazoDeCobro)&&(identical(other.metodoDeCobro, metodoDeCobro) || other.metodoDeCobro == metodoDeCobro)&&(identical(other.descuentoProntoPago, descuentoProntoPago) || other.descuentoProntoPago == descuentoProntoPago)&&(identical(other.riesgoConcedidoInterno, riesgoConcedidoInterno) || other.riesgoConcedidoInterno == riesgoConcedidoInterno)&&(identical(other.riesgoConcedidoInternoDate, riesgoConcedidoInternoDate) || other.riesgoConcedidoInternoDate == riesgoConcedidoInternoDate)&&(identical(other.riesgoConcedidoCoafe, riesgoConcedidoCoafe) || other.riesgoConcedidoCoafe == riesgoConcedidoCoafe)&&(identical(other.riesgoConcedidoCoafeFecha, riesgoConcedidoCoafeFecha) || other.riesgoConcedidoCoafeFecha == riesgoConcedidoCoafeFecha)&&(identical(other.riesgoActual, riesgoActual) || other.riesgoActual == riesgoActual)&&(identical(other.riesgoConcedido, riesgoConcedido) || other.riesgoConcedido == riesgoConcedido)&&(identical(other.riesgoPendienteCobroVencido, riesgoPendienteCobroVencido) || other.riesgoPendienteCobroVencido == riesgoPendienteCobroVencido)&&(identical(other.riesgoPendienteCobroNoVencido, riesgoPendienteCobroNoVencido) || other.riesgoPendienteCobroNoVencido == riesgoPendienteCobroNoVencido)&&(identical(other.riesgoPendienteServir, riesgoPendienteServir) || other.riesgoPendienteServir == riesgoPendienteServir)&&(identical(other.riesgoPendienteFacturar, riesgoPendienteFacturar) || other.riesgoPendienteFacturar == riesgoPendienteFacturar)&&(identical(other.riesgoExcedido, riesgoExcedido) || other.riesgoExcedido == riesgoExcedido)&&(identical(other.obvservacionesInternas, obvservacionesInternas) || other.obvservacionesInternas == obvservacionesInternas)&&(identical(other.clientePotencial, clientePotencial) || other.clientePotencial == clientePotencial)&&(identical(other.clienteEstadoPotencial, clienteEstadoPotencial) || other.clienteEstadoPotencial == clienteEstadoPotencial)&&(identical(other.clienteTipoPotencial, clienteTipoPotencial) || other.clienteTipoPotencial == clienteTipoPotencial)&&(identical(other.representante1Id, representante1Id) || other.representante1Id == representante1Id)&&(identical(other.representante1Nombre, representante1Nombre) || other.representante1Nombre == representante1Nombre)&&(identical(other.representante2Id, representante2Id) || other.representante2Id == representante2Id)&&(identical(other.representante2Nombre, representante2Nombre) || other.representante2Nombre == representante2Nombre)&&(identical(other.telefonoMovil, telefonoMovil) || other.telefonoMovil == telefonoMovil)&&(identical(other.telefonoFijo, telefonoFijo) || other.telefonoFijo == telefonoFijo)&&(identical(other.email, email) || other.email == email)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.subsector, subsector) || other.subsector == subsector)&&(identical(other.franqPortes1, franqPortes1) || other.franqPortes1 == franqPortes1)&&(identical(other.franqPortes2, franqPortes2) || other.franqPortes2 == franqPortes2)&&(identical(other.franqPortes3, franqPortes3) || other.franqPortes3 == franqPortes3)&&(identical(other.importePortes1, importePortes1) || other.importePortes1 == importePortes1)&&(identical(other.importePortes2, importePortes2) || other.importePortes2 == importePortes2)&&(identical(other.importePortes3, importePortes3) || other.importePortes3 == importePortes3)&&(identical(other.ventasPeriodoActual, ventasPeriodoActual) || other.ventasPeriodoActual == ventasPeriodoActual)&&(identical(other.ventasPeriodoAnterior, ventasPeriodoAnterior) || other.ventasPeriodoAnterior == ventasPeriodoAnterior)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,nombreCliente,nombreFiscal,nif,direccionFiscal1,direccionFiscal2,codigoPostalFiscal,poblacionFiscal,provinciaFiscal,paisFiscal,latitudFiscal,longitudFiscal,direccionPredeterminada1,direccionPredeterminada2,codigoPostalPredeterminada,poblacionPredeterminada,provinciaPredeterminada,paisPredeterminada,latitudPredeterminada,longitudPredeterminada,empresaId,iva,ventasAnyoActual,ventasAnyoAnterior,ventasHaceDosAnyos,margenAnyoActual,margenAnyoAnterior,margenHaceDosAnyos,porcentajeAbonos,porcentajeGarantias,centralCompras,urlWeb,divisa,tarifaId,tarifaDescripcion,descuentoGeneralId,descripcionDescuentoGeneral,tipoCalculoPrecio,plazoDeCobro,metodoDeCobro,descuentoProntoPago,riesgoConcedidoInterno,riesgoConcedidoInternoDate,riesgoConcedidoCoafe,riesgoConcedidoCoafeFecha,riesgoActual,riesgoConcedido,riesgoPendienteCobroVencido,riesgoPendienteCobroNoVencido,riesgoPendienteServir,riesgoPendienteFacturar,riesgoExcedido,obvservacionesInternas,clientePotencial,clienteEstadoPotencial,clienteTipoPotencial,representante1Id,representante1Nombre,representante2Id,representante2Nombre,telefonoMovil,telefonoFijo,email,sector,subsector,franqPortes1,franqPortes2,franqPortes3,importePortes1,importePortes2,importePortes3,ventasPeriodoActual,ventasPeriodoAnterior,lastUpdated,deleted]);

@override
String toString() {
  return 'Cliente(id: $id, nombreCliente: $nombreCliente, nombreFiscal: $nombreFiscal, nif: $nif, direccionFiscal1: $direccionFiscal1, direccionFiscal2: $direccionFiscal2, codigoPostalFiscal: $codigoPostalFiscal, poblacionFiscal: $poblacionFiscal, provinciaFiscal: $provinciaFiscal, paisFiscal: $paisFiscal, latitudFiscal: $latitudFiscal, longitudFiscal: $longitudFiscal, direccionPredeterminada1: $direccionPredeterminada1, direccionPredeterminada2: $direccionPredeterminada2, codigoPostalPredeterminada: $codigoPostalPredeterminada, poblacionPredeterminada: $poblacionPredeterminada, provinciaPredeterminada: $provinciaPredeterminada, paisPredeterminada: $paisPredeterminada, latitudPredeterminada: $latitudPredeterminada, longitudPredeterminada: $longitudPredeterminada, empresaId: $empresaId, iva: $iva, ventasAnyoActual: $ventasAnyoActual, ventasAnyoAnterior: $ventasAnyoAnterior, ventasHaceDosAnyos: $ventasHaceDosAnyos, margenAnyoActual: $margenAnyoActual, margenAnyoAnterior: $margenAnyoAnterior, margenHaceDosAnyos: $margenHaceDosAnyos, porcentajeAbonos: $porcentajeAbonos, porcentajeGarantias: $porcentajeGarantias, centralCompras: $centralCompras, urlWeb: $urlWeb, divisa: $divisa, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, descuentoGeneralId: $descuentoGeneralId, descripcionDescuentoGeneral: $descripcionDescuentoGeneral, tipoCalculoPrecio: $tipoCalculoPrecio, plazoDeCobro: $plazoDeCobro, metodoDeCobro: $metodoDeCobro, descuentoProntoPago: $descuentoProntoPago, riesgoConcedidoInterno: $riesgoConcedidoInterno, riesgoConcedidoInternoDate: $riesgoConcedidoInternoDate, riesgoConcedidoCoafe: $riesgoConcedidoCoafe, riesgoConcedidoCoafeFecha: $riesgoConcedidoCoafeFecha, riesgoActual: $riesgoActual, riesgoConcedido: $riesgoConcedido, riesgoPendienteCobroVencido: $riesgoPendienteCobroVencido, riesgoPendienteCobroNoVencido: $riesgoPendienteCobroNoVencido, riesgoPendienteServir: $riesgoPendienteServir, riesgoPendienteFacturar: $riesgoPendienteFacturar, riesgoExcedido: $riesgoExcedido, obvservacionesInternas: $obvservacionesInternas, clientePotencial: $clientePotencial, clienteEstadoPotencial: $clienteEstadoPotencial, clienteTipoPotencial: $clienteTipoPotencial, representante1Id: $representante1Id, representante1Nombre: $representante1Nombre, representante2Id: $representante2Id, representante2Nombre: $representante2Nombre, telefonoMovil: $telefonoMovil, telefonoFijo: $telefonoFijo, email: $email, sector: $sector, subsector: $subsector, franqPortes1: $franqPortes1, franqPortes2: $franqPortes2, franqPortes3: $franqPortes3, importePortes1: $importePortes1, importePortes2: $importePortes2, importePortes3: $importePortes3, ventasPeriodoActual: $ventasPeriodoActual, ventasPeriodoAnterior: $ventasPeriodoAnterior, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteCopyWith<$Res>  {
  factory $ClienteCopyWith(Cliente value, $Res Function(Cliente) _then) = _$ClienteCopyWithImpl;
@useResult
$Res call({
 String id, String nombreCliente, String nombreFiscal, String? nif, String? direccionFiscal1, String? direccionFiscal2, String? codigoPostalFiscal, String? poblacionFiscal, String? provinciaFiscal, Pais? paisFiscal, double latitudFiscal, double longitudFiscal, String? direccionPredeterminada1, String? direccionPredeterminada2, String? codigoPostalPredeterminada, String? poblacionPredeterminada, String? provinciaPredeterminada, Pais? paisPredeterminada, double? latitudPredeterminada, double? longitudPredeterminada, String empresaId, double iva, Money ventasAnyoActual, Money ventasAnyoAnterior, Money ventasHaceDosAnyos, double margenAnyoActual, double margenAnyoAnterior, double margenHaceDosAnyos, double porcentajeAbonos, double porcentajeGarantias, String? centralCompras, String? urlWeb, Divisa? divisa, String? tarifaId, String? tarifaDescripcion, String? descuentoGeneralId, String? descripcionDescuentoGeneral, String tipoCalculoPrecio, PlazoDeCobro? plazoDeCobro, MetodoDeCobro? metodoDeCobro, double descuentoProntoPago, Money riesgoConcedidoInterno, DateTime? riesgoConcedidoInternoDate, Money riesgoConcedidoCoafe, DateTime? riesgoConcedidoCoafeFecha, Money riesgoActual, Money? riesgoConcedido, Money? riesgoPendienteCobroVencido, Money? riesgoPendienteCobroNoVencido, Money? riesgoPendienteServir, Money? riesgoPendienteFacturar, Money riesgoExcedido, String? obvservacionesInternas, bool? clientePotencial, ClienteEstadoPotencial? clienteEstadoPotencial, ClienteTipoPotencial? clienteTipoPotencial, String? representante1Id, String? representante1Nombre, String? representante2Id, String? representante2Nombre, String? telefonoMovil, String? telefonoFijo, String? email, Sector? sector, Subsector? subsector, int? franqPortes1, int? franqPortes2, int? franqPortes3, double? importePortes1, double? importePortes2, double? importePortes3, double? ventasPeriodoActual, double? ventasPeriodoAnterior, DateTime? lastUpdated, bool deleted
});


$PaisCopyWith<$Res>? get paisFiscal;$PaisCopyWith<$Res>? get paisPredeterminada;$DivisaCopyWith<$Res>? get divisa;$PlazoDeCobroCopyWith<$Res>? get plazoDeCobro;$MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;$ClienteEstadoPotencialCopyWith<$Res>? get clienteEstadoPotencial;$ClienteTipoPotencialCopyWith<$Res>? get clienteTipoPotencial;$SectorCopyWith<$Res>? get sector;$SubsectorCopyWith<$Res>? get subsector;

}
/// @nodoc
class _$ClienteCopyWithImpl<$Res>
    implements $ClienteCopyWith<$Res> {
  _$ClienteCopyWithImpl(this._self, this._then);

  final Cliente _self;
  final $Res Function(Cliente) _then;

/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nombreCliente = null,Object? nombreFiscal = null,Object? nif = freezed,Object? direccionFiscal1 = freezed,Object? direccionFiscal2 = freezed,Object? codigoPostalFiscal = freezed,Object? poblacionFiscal = freezed,Object? provinciaFiscal = freezed,Object? paisFiscal = freezed,Object? latitudFiscal = null,Object? longitudFiscal = null,Object? direccionPredeterminada1 = freezed,Object? direccionPredeterminada2 = freezed,Object? codigoPostalPredeterminada = freezed,Object? poblacionPredeterminada = freezed,Object? provinciaPredeterminada = freezed,Object? paisPredeterminada = freezed,Object? latitudPredeterminada = freezed,Object? longitudPredeterminada = freezed,Object? empresaId = null,Object? iva = null,Object? ventasAnyoActual = null,Object? ventasAnyoAnterior = null,Object? ventasHaceDosAnyos = null,Object? margenAnyoActual = null,Object? margenAnyoAnterior = null,Object? margenHaceDosAnyos = null,Object? porcentajeAbonos = null,Object? porcentajeGarantias = null,Object? centralCompras = freezed,Object? urlWeb = freezed,Object? divisa = freezed,Object? tarifaId = freezed,Object? tarifaDescripcion = freezed,Object? descuentoGeneralId = freezed,Object? descripcionDescuentoGeneral = freezed,Object? tipoCalculoPrecio = null,Object? plazoDeCobro = freezed,Object? metodoDeCobro = freezed,Object? descuentoProntoPago = null,Object? riesgoConcedidoInterno = null,Object? riesgoConcedidoInternoDate = freezed,Object? riesgoConcedidoCoafe = null,Object? riesgoConcedidoCoafeFecha = freezed,Object? riesgoActual = null,Object? riesgoConcedido = freezed,Object? riesgoPendienteCobroVencido = freezed,Object? riesgoPendienteCobroNoVencido = freezed,Object? riesgoPendienteServir = freezed,Object? riesgoPendienteFacturar = freezed,Object? riesgoExcedido = null,Object? obvservacionesInternas = freezed,Object? clientePotencial = freezed,Object? clienteEstadoPotencial = freezed,Object? clienteTipoPotencial = freezed,Object? representante1Id = freezed,Object? representante1Nombre = freezed,Object? representante2Id = freezed,Object? representante2Nombre = freezed,Object? telefonoMovil = freezed,Object? telefonoFijo = freezed,Object? email = freezed,Object? sector = freezed,Object? subsector = freezed,Object? franqPortes1 = freezed,Object? franqPortes2 = freezed,Object? franqPortes3 = freezed,Object? importePortes1 = freezed,Object? importePortes2 = freezed,Object? importePortes3 = freezed,Object? ventasPeriodoActual = freezed,Object? ventasPeriodoAnterior = freezed,Object? lastUpdated = freezed,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,nombreFiscal: null == nombreFiscal ? _self.nombreFiscal : nombreFiscal // ignore: cast_nullable_to_non_nullable
as String,nif: freezed == nif ? _self.nif : nif // ignore: cast_nullable_to_non_nullable
as String?,direccionFiscal1: freezed == direccionFiscal1 ? _self.direccionFiscal1 : direccionFiscal1 // ignore: cast_nullable_to_non_nullable
as String?,direccionFiscal2: freezed == direccionFiscal2 ? _self.direccionFiscal2 : direccionFiscal2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostalFiscal: freezed == codigoPostalFiscal ? _self.codigoPostalFiscal : codigoPostalFiscal // ignore: cast_nullable_to_non_nullable
as String?,poblacionFiscal: freezed == poblacionFiscal ? _self.poblacionFiscal : poblacionFiscal // ignore: cast_nullable_to_non_nullable
as String?,provinciaFiscal: freezed == provinciaFiscal ? _self.provinciaFiscal : provinciaFiscal // ignore: cast_nullable_to_non_nullable
as String?,paisFiscal: freezed == paisFiscal ? _self.paisFiscal : paisFiscal // ignore: cast_nullable_to_non_nullable
as Pais?,latitudFiscal: null == latitudFiscal ? _self.latitudFiscal : latitudFiscal // ignore: cast_nullable_to_non_nullable
as double,longitudFiscal: null == longitudFiscal ? _self.longitudFiscal : longitudFiscal // ignore: cast_nullable_to_non_nullable
as double,direccionPredeterminada1: freezed == direccionPredeterminada1 ? _self.direccionPredeterminada1 : direccionPredeterminada1 // ignore: cast_nullable_to_non_nullable
as String?,direccionPredeterminada2: freezed == direccionPredeterminada2 ? _self.direccionPredeterminada2 : direccionPredeterminada2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostalPredeterminada: freezed == codigoPostalPredeterminada ? _self.codigoPostalPredeterminada : codigoPostalPredeterminada // ignore: cast_nullable_to_non_nullable
as String?,poblacionPredeterminada: freezed == poblacionPredeterminada ? _self.poblacionPredeterminada : poblacionPredeterminada // ignore: cast_nullable_to_non_nullable
as String?,provinciaPredeterminada: freezed == provinciaPredeterminada ? _self.provinciaPredeterminada : provinciaPredeterminada // ignore: cast_nullable_to_non_nullable
as String?,paisPredeterminada: freezed == paisPredeterminada ? _self.paisPredeterminada : paisPredeterminada // ignore: cast_nullable_to_non_nullable
as Pais?,latitudPredeterminada: freezed == latitudPredeterminada ? _self.latitudPredeterminada : latitudPredeterminada // ignore: cast_nullable_to_non_nullable
as double?,longitudPredeterminada: freezed == longitudPredeterminada ? _self.longitudPredeterminada : longitudPredeterminada // ignore: cast_nullable_to_non_nullable
as double?,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,ventasAnyoActual: null == ventasAnyoActual ? _self.ventasAnyoActual : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
as Money,ventasAnyoAnterior: null == ventasAnyoAnterior ? _self.ventasAnyoAnterior : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
as Money,ventasHaceDosAnyos: null == ventasHaceDosAnyos ? _self.ventasHaceDosAnyos : ventasHaceDosAnyos // ignore: cast_nullable_to_non_nullable
as Money,margenAnyoActual: null == margenAnyoActual ? _self.margenAnyoActual : margenAnyoActual // ignore: cast_nullable_to_non_nullable
as double,margenAnyoAnterior: null == margenAnyoAnterior ? _self.margenAnyoAnterior : margenAnyoAnterior // ignore: cast_nullable_to_non_nullable
as double,margenHaceDosAnyos: null == margenHaceDosAnyos ? _self.margenHaceDosAnyos : margenHaceDosAnyos // ignore: cast_nullable_to_non_nullable
as double,porcentajeAbonos: null == porcentajeAbonos ? _self.porcentajeAbonos : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
as double,porcentajeGarantias: null == porcentajeGarantias ? _self.porcentajeGarantias : porcentajeGarantias // ignore: cast_nullable_to_non_nullable
as double,centralCompras: freezed == centralCompras ? _self.centralCompras : centralCompras // ignore: cast_nullable_to_non_nullable
as String?,urlWeb: freezed == urlWeb ? _self.urlWeb : urlWeb // ignore: cast_nullable_to_non_nullable
as String?,divisa: freezed == divisa ? _self.divisa : divisa // ignore: cast_nullable_to_non_nullable
as Divisa?,tarifaId: freezed == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String?,tarifaDescripcion: freezed == tarifaDescripcion ? _self.tarifaDescripcion : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
as String?,descuentoGeneralId: freezed == descuentoGeneralId ? _self.descuentoGeneralId : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
as String?,descripcionDescuentoGeneral: freezed == descripcionDescuentoGeneral ? _self.descripcionDescuentoGeneral : descripcionDescuentoGeneral // ignore: cast_nullable_to_non_nullable
as String?,tipoCalculoPrecio: null == tipoCalculoPrecio ? _self.tipoCalculoPrecio : tipoCalculoPrecio // ignore: cast_nullable_to_non_nullable
as String,plazoDeCobro: freezed == plazoDeCobro ? _self.plazoDeCobro : plazoDeCobro // ignore: cast_nullable_to_non_nullable
as PlazoDeCobro?,metodoDeCobro: freezed == metodoDeCobro ? _self.metodoDeCobro : metodoDeCobro // ignore: cast_nullable_to_non_nullable
as MetodoDeCobro?,descuentoProntoPago: null == descuentoProntoPago ? _self.descuentoProntoPago : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
as double,riesgoConcedidoInterno: null == riesgoConcedidoInterno ? _self.riesgoConcedidoInterno : riesgoConcedidoInterno // ignore: cast_nullable_to_non_nullable
as Money,riesgoConcedidoInternoDate: freezed == riesgoConcedidoInternoDate ? _self.riesgoConcedidoInternoDate : riesgoConcedidoInternoDate // ignore: cast_nullable_to_non_nullable
as DateTime?,riesgoConcedidoCoafe: null == riesgoConcedidoCoafe ? _self.riesgoConcedidoCoafe : riesgoConcedidoCoafe // ignore: cast_nullable_to_non_nullable
as Money,riesgoConcedidoCoafeFecha: freezed == riesgoConcedidoCoafeFecha ? _self.riesgoConcedidoCoafeFecha : riesgoConcedidoCoafeFecha // ignore: cast_nullable_to_non_nullable
as DateTime?,riesgoActual: null == riesgoActual ? _self.riesgoActual : riesgoActual // ignore: cast_nullable_to_non_nullable
as Money,riesgoConcedido: freezed == riesgoConcedido ? _self.riesgoConcedido : riesgoConcedido // ignore: cast_nullable_to_non_nullable
as Money?,riesgoPendienteCobroVencido: freezed == riesgoPendienteCobroVencido ? _self.riesgoPendienteCobroVencido : riesgoPendienteCobroVencido // ignore: cast_nullable_to_non_nullable
as Money?,riesgoPendienteCobroNoVencido: freezed == riesgoPendienteCobroNoVencido ? _self.riesgoPendienteCobroNoVencido : riesgoPendienteCobroNoVencido // ignore: cast_nullable_to_non_nullable
as Money?,riesgoPendienteServir: freezed == riesgoPendienteServir ? _self.riesgoPendienteServir : riesgoPendienteServir // ignore: cast_nullable_to_non_nullable
as Money?,riesgoPendienteFacturar: freezed == riesgoPendienteFacturar ? _self.riesgoPendienteFacturar : riesgoPendienteFacturar // ignore: cast_nullable_to_non_nullable
as Money?,riesgoExcedido: null == riesgoExcedido ? _self.riesgoExcedido : riesgoExcedido // ignore: cast_nullable_to_non_nullable
as Money,obvservacionesInternas: freezed == obvservacionesInternas ? _self.obvservacionesInternas : obvservacionesInternas // ignore: cast_nullable_to_non_nullable
as String?,clientePotencial: freezed == clientePotencial ? _self.clientePotencial : clientePotencial // ignore: cast_nullable_to_non_nullable
as bool?,clienteEstadoPotencial: freezed == clienteEstadoPotencial ? _self.clienteEstadoPotencial : clienteEstadoPotencial // ignore: cast_nullable_to_non_nullable
as ClienteEstadoPotencial?,clienteTipoPotencial: freezed == clienteTipoPotencial ? _self.clienteTipoPotencial : clienteTipoPotencial // ignore: cast_nullable_to_non_nullable
as ClienteTipoPotencial?,representante1Id: freezed == representante1Id ? _self.representante1Id : representante1Id // ignore: cast_nullable_to_non_nullable
as String?,representante1Nombre: freezed == representante1Nombre ? _self.representante1Nombre : representante1Nombre // ignore: cast_nullable_to_non_nullable
as String?,representante2Id: freezed == representante2Id ? _self.representante2Id : representante2Id // ignore: cast_nullable_to_non_nullable
as String?,representante2Nombre: freezed == representante2Nombre ? _self.representante2Nombre : representante2Nombre // ignore: cast_nullable_to_non_nullable
as String?,telefonoMovil: freezed == telefonoMovil ? _self.telefonoMovil : telefonoMovil // ignore: cast_nullable_to_non_nullable
as String?,telefonoFijo: freezed == telefonoFijo ? _self.telefonoFijo : telefonoFijo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,sector: freezed == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as Sector?,subsector: freezed == subsector ? _self.subsector : subsector // ignore: cast_nullable_to_non_nullable
as Subsector?,franqPortes1: freezed == franqPortes1 ? _self.franqPortes1 : franqPortes1 // ignore: cast_nullable_to_non_nullable
as int?,franqPortes2: freezed == franqPortes2 ? _self.franqPortes2 : franqPortes2 // ignore: cast_nullable_to_non_nullable
as int?,franqPortes3: freezed == franqPortes3 ? _self.franqPortes3 : franqPortes3 // ignore: cast_nullable_to_non_nullable
as int?,importePortes1: freezed == importePortes1 ? _self.importePortes1 : importePortes1 // ignore: cast_nullable_to_non_nullable
as double?,importePortes2: freezed == importePortes2 ? _self.importePortes2 : importePortes2 // ignore: cast_nullable_to_non_nullable
as double?,importePortes3: freezed == importePortes3 ? _self.importePortes3 : importePortes3 // ignore: cast_nullable_to_non_nullable
as double?,ventasPeriodoActual: freezed == ventasPeriodoActual ? _self.ventasPeriodoActual : ventasPeriodoActual // ignore: cast_nullable_to_non_nullable
as double?,ventasPeriodoAnterior: freezed == ventasPeriodoAnterior ? _self.ventasPeriodoAnterior : ventasPeriodoAnterior // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get paisFiscal {
    if (_self.paisFiscal == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.paisFiscal!, (value) {
    return _then(_self.copyWith(paisFiscal: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get paisPredeterminada {
    if (_self.paisPredeterminada == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.paisPredeterminada!, (value) {
    return _then(_self.copyWith(paisPredeterminada: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisaCopyWith<$Res>? get divisa {
    if (_self.divisa == null) {
    return null;
  }

  return $DivisaCopyWith<$Res>(_self.divisa!, (value) {
    return _then(_self.copyWith(divisa: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlazoDeCobroCopyWith<$Res>? get plazoDeCobro {
    if (_self.plazoDeCobro == null) {
    return null;
  }

  return $PlazoDeCobroCopyWith<$Res>(_self.plazoDeCobro!, (value) {
    return _then(_self.copyWith(plazoDeCobro: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetodoDeCobroCopyWith<$Res>? get metodoDeCobro {
    if (_self.metodoDeCobro == null) {
    return null;
  }

  return $MetodoDeCobroCopyWith<$Res>(_self.metodoDeCobro!, (value) {
    return _then(_self.copyWith(metodoDeCobro: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteEstadoPotencialCopyWith<$Res>? get clienteEstadoPotencial {
    if (_self.clienteEstadoPotencial == null) {
    return null;
  }

  return $ClienteEstadoPotencialCopyWith<$Res>(_self.clienteEstadoPotencial!, (value) {
    return _then(_self.copyWith(clienteEstadoPotencial: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteTipoPotencialCopyWith<$Res>? get clienteTipoPotencial {
    if (_self.clienteTipoPotencial == null) {
    return null;
  }

  return $ClienteTipoPotencialCopyWith<$Res>(_self.clienteTipoPotencial!, (value) {
    return _then(_self.copyWith(clienteTipoPotencial: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorCopyWith<$Res>? get sector {
    if (_self.sector == null) {
    return null;
  }

  return $SectorCopyWith<$Res>(_self.sector!, (value) {
    return _then(_self.copyWith(sector: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubsectorCopyWith<$Res>? get subsector {
    if (_self.subsector == null) {
    return null;
  }

  return $SubsectorCopyWith<$Res>(_self.subsector!, (value) {
    return _then(_self.copyWith(subsector: value));
  });
}
}


/// Adds pattern-matching-related methods to [Cliente].
extension ClientePatterns on Cliente {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cliente value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cliente() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cliente value)  $default,){
final _that = this;
switch (_that) {
case _Cliente():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cliente value)?  $default,){
final _that = this;
switch (_that) {
case _Cliente() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nombreCliente,  String nombreFiscal,  String? nif,  String? direccionFiscal1,  String? direccionFiscal2,  String? codigoPostalFiscal,  String? poblacionFiscal,  String? provinciaFiscal,  Pais? paisFiscal,  double latitudFiscal,  double longitudFiscal,  String? direccionPredeterminada1,  String? direccionPredeterminada2,  String? codigoPostalPredeterminada,  String? poblacionPredeterminada,  String? provinciaPredeterminada,  Pais? paisPredeterminada,  double? latitudPredeterminada,  double? longitudPredeterminada,  String empresaId,  double iva,  Money ventasAnyoActual,  Money ventasAnyoAnterior,  Money ventasHaceDosAnyos,  double margenAnyoActual,  double margenAnyoAnterior,  double margenHaceDosAnyos,  double porcentajeAbonos,  double porcentajeGarantias,  String? centralCompras,  String? urlWeb,  Divisa? divisa,  String? tarifaId,  String? tarifaDescripcion,  String? descuentoGeneralId,  String? descripcionDescuentoGeneral,  String tipoCalculoPrecio,  PlazoDeCobro? plazoDeCobro,  MetodoDeCobro? metodoDeCobro,  double descuentoProntoPago,  Money riesgoConcedidoInterno,  DateTime? riesgoConcedidoInternoDate,  Money riesgoConcedidoCoafe,  DateTime? riesgoConcedidoCoafeFecha,  Money riesgoActual,  Money? riesgoConcedido,  Money? riesgoPendienteCobroVencido,  Money? riesgoPendienteCobroNoVencido,  Money? riesgoPendienteServir,  Money? riesgoPendienteFacturar,  Money riesgoExcedido,  String? obvservacionesInternas,  bool? clientePotencial,  ClienteEstadoPotencial? clienteEstadoPotencial,  ClienteTipoPotencial? clienteTipoPotencial,  String? representante1Id,  String? representante1Nombre,  String? representante2Id,  String? representante2Nombre,  String? telefonoMovil,  String? telefonoFijo,  String? email,  Sector? sector,  Subsector? subsector,  int? franqPortes1,  int? franqPortes2,  int? franqPortes3,  double? importePortes1,  double? importePortes2,  double? importePortes3,  double? ventasPeriodoActual,  double? ventasPeriodoAnterior,  DateTime? lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cliente() when $default != null:
return $default(_that.id,_that.nombreCliente,_that.nombreFiscal,_that.nif,_that.direccionFiscal1,_that.direccionFiscal2,_that.codigoPostalFiscal,_that.poblacionFiscal,_that.provinciaFiscal,_that.paisFiscal,_that.latitudFiscal,_that.longitudFiscal,_that.direccionPredeterminada1,_that.direccionPredeterminada2,_that.codigoPostalPredeterminada,_that.poblacionPredeterminada,_that.provinciaPredeterminada,_that.paisPredeterminada,_that.latitudPredeterminada,_that.longitudPredeterminada,_that.empresaId,_that.iva,_that.ventasAnyoActual,_that.ventasAnyoAnterior,_that.ventasHaceDosAnyos,_that.margenAnyoActual,_that.margenAnyoAnterior,_that.margenHaceDosAnyos,_that.porcentajeAbonos,_that.porcentajeGarantias,_that.centralCompras,_that.urlWeb,_that.divisa,_that.tarifaId,_that.tarifaDescripcion,_that.descuentoGeneralId,_that.descripcionDescuentoGeneral,_that.tipoCalculoPrecio,_that.plazoDeCobro,_that.metodoDeCobro,_that.descuentoProntoPago,_that.riesgoConcedidoInterno,_that.riesgoConcedidoInternoDate,_that.riesgoConcedidoCoafe,_that.riesgoConcedidoCoafeFecha,_that.riesgoActual,_that.riesgoConcedido,_that.riesgoPendienteCobroVencido,_that.riesgoPendienteCobroNoVencido,_that.riesgoPendienteServir,_that.riesgoPendienteFacturar,_that.riesgoExcedido,_that.obvservacionesInternas,_that.clientePotencial,_that.clienteEstadoPotencial,_that.clienteTipoPotencial,_that.representante1Id,_that.representante1Nombre,_that.representante2Id,_that.representante2Nombre,_that.telefonoMovil,_that.telefonoFijo,_that.email,_that.sector,_that.subsector,_that.franqPortes1,_that.franqPortes2,_that.franqPortes3,_that.importePortes1,_that.importePortes2,_that.importePortes3,_that.ventasPeriodoActual,_that.ventasPeriodoAnterior,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nombreCliente,  String nombreFiscal,  String? nif,  String? direccionFiscal1,  String? direccionFiscal2,  String? codigoPostalFiscal,  String? poblacionFiscal,  String? provinciaFiscal,  Pais? paisFiscal,  double latitudFiscal,  double longitudFiscal,  String? direccionPredeterminada1,  String? direccionPredeterminada2,  String? codigoPostalPredeterminada,  String? poblacionPredeterminada,  String? provinciaPredeterminada,  Pais? paisPredeterminada,  double? latitudPredeterminada,  double? longitudPredeterminada,  String empresaId,  double iva,  Money ventasAnyoActual,  Money ventasAnyoAnterior,  Money ventasHaceDosAnyos,  double margenAnyoActual,  double margenAnyoAnterior,  double margenHaceDosAnyos,  double porcentajeAbonos,  double porcentajeGarantias,  String? centralCompras,  String? urlWeb,  Divisa? divisa,  String? tarifaId,  String? tarifaDescripcion,  String? descuentoGeneralId,  String? descripcionDescuentoGeneral,  String tipoCalculoPrecio,  PlazoDeCobro? plazoDeCobro,  MetodoDeCobro? metodoDeCobro,  double descuentoProntoPago,  Money riesgoConcedidoInterno,  DateTime? riesgoConcedidoInternoDate,  Money riesgoConcedidoCoafe,  DateTime? riesgoConcedidoCoafeFecha,  Money riesgoActual,  Money? riesgoConcedido,  Money? riesgoPendienteCobroVencido,  Money? riesgoPendienteCobroNoVencido,  Money? riesgoPendienteServir,  Money? riesgoPendienteFacturar,  Money riesgoExcedido,  String? obvservacionesInternas,  bool? clientePotencial,  ClienteEstadoPotencial? clienteEstadoPotencial,  ClienteTipoPotencial? clienteTipoPotencial,  String? representante1Id,  String? representante1Nombre,  String? representante2Id,  String? representante2Nombre,  String? telefonoMovil,  String? telefonoFijo,  String? email,  Sector? sector,  Subsector? subsector,  int? franqPortes1,  int? franqPortes2,  int? franqPortes3,  double? importePortes1,  double? importePortes2,  double? importePortes3,  double? ventasPeriodoActual,  double? ventasPeriodoAnterior,  DateTime? lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _Cliente():
return $default(_that.id,_that.nombreCliente,_that.nombreFiscal,_that.nif,_that.direccionFiscal1,_that.direccionFiscal2,_that.codigoPostalFiscal,_that.poblacionFiscal,_that.provinciaFiscal,_that.paisFiscal,_that.latitudFiscal,_that.longitudFiscal,_that.direccionPredeterminada1,_that.direccionPredeterminada2,_that.codigoPostalPredeterminada,_that.poblacionPredeterminada,_that.provinciaPredeterminada,_that.paisPredeterminada,_that.latitudPredeterminada,_that.longitudPredeterminada,_that.empresaId,_that.iva,_that.ventasAnyoActual,_that.ventasAnyoAnterior,_that.ventasHaceDosAnyos,_that.margenAnyoActual,_that.margenAnyoAnterior,_that.margenHaceDosAnyos,_that.porcentajeAbonos,_that.porcentajeGarantias,_that.centralCompras,_that.urlWeb,_that.divisa,_that.tarifaId,_that.tarifaDescripcion,_that.descuentoGeneralId,_that.descripcionDescuentoGeneral,_that.tipoCalculoPrecio,_that.plazoDeCobro,_that.metodoDeCobro,_that.descuentoProntoPago,_that.riesgoConcedidoInterno,_that.riesgoConcedidoInternoDate,_that.riesgoConcedidoCoafe,_that.riesgoConcedidoCoafeFecha,_that.riesgoActual,_that.riesgoConcedido,_that.riesgoPendienteCobroVencido,_that.riesgoPendienteCobroNoVencido,_that.riesgoPendienteServir,_that.riesgoPendienteFacturar,_that.riesgoExcedido,_that.obvservacionesInternas,_that.clientePotencial,_that.clienteEstadoPotencial,_that.clienteTipoPotencial,_that.representante1Id,_that.representante1Nombre,_that.representante2Id,_that.representante2Nombre,_that.telefonoMovil,_that.telefonoFijo,_that.email,_that.sector,_that.subsector,_that.franqPortes1,_that.franqPortes2,_that.franqPortes3,_that.importePortes1,_that.importePortes2,_that.importePortes3,_that.ventasPeriodoActual,_that.ventasPeriodoAnterior,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nombreCliente,  String nombreFiscal,  String? nif,  String? direccionFiscal1,  String? direccionFiscal2,  String? codigoPostalFiscal,  String? poblacionFiscal,  String? provinciaFiscal,  Pais? paisFiscal,  double latitudFiscal,  double longitudFiscal,  String? direccionPredeterminada1,  String? direccionPredeterminada2,  String? codigoPostalPredeterminada,  String? poblacionPredeterminada,  String? provinciaPredeterminada,  Pais? paisPredeterminada,  double? latitudPredeterminada,  double? longitudPredeterminada,  String empresaId,  double iva,  Money ventasAnyoActual,  Money ventasAnyoAnterior,  Money ventasHaceDosAnyos,  double margenAnyoActual,  double margenAnyoAnterior,  double margenHaceDosAnyos,  double porcentajeAbonos,  double porcentajeGarantias,  String? centralCompras,  String? urlWeb,  Divisa? divisa,  String? tarifaId,  String? tarifaDescripcion,  String? descuentoGeneralId,  String? descripcionDescuentoGeneral,  String tipoCalculoPrecio,  PlazoDeCobro? plazoDeCobro,  MetodoDeCobro? metodoDeCobro,  double descuentoProntoPago,  Money riesgoConcedidoInterno,  DateTime? riesgoConcedidoInternoDate,  Money riesgoConcedidoCoafe,  DateTime? riesgoConcedidoCoafeFecha,  Money riesgoActual,  Money? riesgoConcedido,  Money? riesgoPendienteCobroVencido,  Money? riesgoPendienteCobroNoVencido,  Money? riesgoPendienteServir,  Money? riesgoPendienteFacturar,  Money riesgoExcedido,  String? obvservacionesInternas,  bool? clientePotencial,  ClienteEstadoPotencial? clienteEstadoPotencial,  ClienteTipoPotencial? clienteTipoPotencial,  String? representante1Id,  String? representante1Nombre,  String? representante2Id,  String? representante2Nombre,  String? telefonoMovil,  String? telefonoFijo,  String? email,  Sector? sector,  Subsector? subsector,  int? franqPortes1,  int? franqPortes2,  int? franqPortes3,  double? importePortes1,  double? importePortes2,  double? importePortes3,  double? ventasPeriodoActual,  double? ventasPeriodoAnterior,  DateTime? lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _Cliente() when $default != null:
return $default(_that.id,_that.nombreCliente,_that.nombreFiscal,_that.nif,_that.direccionFiscal1,_that.direccionFiscal2,_that.codigoPostalFiscal,_that.poblacionFiscal,_that.provinciaFiscal,_that.paisFiscal,_that.latitudFiscal,_that.longitudFiscal,_that.direccionPredeterminada1,_that.direccionPredeterminada2,_that.codigoPostalPredeterminada,_that.poblacionPredeterminada,_that.provinciaPredeterminada,_that.paisPredeterminada,_that.latitudPredeterminada,_that.longitudPredeterminada,_that.empresaId,_that.iva,_that.ventasAnyoActual,_that.ventasAnyoAnterior,_that.ventasHaceDosAnyos,_that.margenAnyoActual,_that.margenAnyoAnterior,_that.margenHaceDosAnyos,_that.porcentajeAbonos,_that.porcentajeGarantias,_that.centralCompras,_that.urlWeb,_that.divisa,_that.tarifaId,_that.tarifaDescripcion,_that.descuentoGeneralId,_that.descripcionDescuentoGeneral,_that.tipoCalculoPrecio,_that.plazoDeCobro,_that.metodoDeCobro,_that.descuentoProntoPago,_that.riesgoConcedidoInterno,_that.riesgoConcedidoInternoDate,_that.riesgoConcedidoCoafe,_that.riesgoConcedidoCoafeFecha,_that.riesgoActual,_that.riesgoConcedido,_that.riesgoPendienteCobroVencido,_that.riesgoPendienteCobroNoVencido,_that.riesgoPendienteServir,_that.riesgoPendienteFacturar,_that.riesgoExcedido,_that.obvservacionesInternas,_that.clientePotencial,_that.clienteEstadoPotencial,_that.clienteTipoPotencial,_that.representante1Id,_that.representante1Nombre,_that.representante2Id,_that.representante2Nombre,_that.telefonoMovil,_that.telefonoFijo,_that.email,_that.sector,_that.subsector,_that.franqPortes1,_that.franqPortes2,_that.franqPortes3,_that.importePortes1,_that.importePortes2,_that.importePortes3,_that.ventasPeriodoActual,_that.ventasPeriodoAnterior,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _Cliente extends Cliente {
  const _Cliente({required this.id, required this.nombreCliente, required this.nombreFiscal, this.nif, this.direccionFiscal1, this.direccionFiscal2, this.codigoPostalFiscal, this.poblacionFiscal, this.provinciaFiscal, this.paisFiscal, required this.latitudFiscal, required this.longitudFiscal, this.direccionPredeterminada1, this.direccionPredeterminada2, this.codigoPostalPredeterminada, this.poblacionPredeterminada, this.provinciaPredeterminada, this.paisPredeterminada, this.latitudPredeterminada, this.longitudPredeterminada, required this.empresaId, required this.iva, required this.ventasAnyoActual, required this.ventasAnyoAnterior, required this.ventasHaceDosAnyos, required this.margenAnyoActual, required this.margenAnyoAnterior, required this.margenHaceDosAnyos, required this.porcentajeAbonos, required this.porcentajeGarantias, this.centralCompras, this.urlWeb, this.divisa, this.tarifaId, this.tarifaDescripcion, this.descuentoGeneralId, this.descripcionDescuentoGeneral, required this.tipoCalculoPrecio, this.plazoDeCobro, this.metodoDeCobro, required this.descuentoProntoPago, required this.riesgoConcedidoInterno, this.riesgoConcedidoInternoDate, required this.riesgoConcedidoCoafe, this.riesgoConcedidoCoafeFecha, required this.riesgoActual, this.riesgoConcedido, this.riesgoPendienteCobroVencido, this.riesgoPendienteCobroNoVencido, this.riesgoPendienteServir, this.riesgoPendienteFacturar, required this.riesgoExcedido, this.obvservacionesInternas, this.clientePotencial, this.clienteEstadoPotencial, this.clienteTipoPotencial, this.representante1Id, this.representante1Nombre, this.representante2Id, this.representante2Nombre, this.telefonoMovil, this.telefonoFijo, this.email, this.sector, this.subsector, this.franqPortes1, this.franqPortes2, this.franqPortes3, this.importePortes1, this.importePortes2, this.importePortes3, this.ventasPeriodoActual, this.ventasPeriodoAnterior, this.lastUpdated, required this.deleted}): super._();
  

@override final  String id;
@override final  String nombreCliente;
@override final  String nombreFiscal;
@override final  String? nif;
@override final  String? direccionFiscal1;
@override final  String? direccionFiscal2;
@override final  String? codigoPostalFiscal;
@override final  String? poblacionFiscal;
@override final  String? provinciaFiscal;
@override final  Pais? paisFiscal;
@override final  double latitudFiscal;
@override final  double longitudFiscal;
@override final  String? direccionPredeterminada1;
@override final  String? direccionPredeterminada2;
@override final  String? codigoPostalPredeterminada;
@override final  String? poblacionPredeterminada;
@override final  String? provinciaPredeterminada;
@override final  Pais? paisPredeterminada;
@override final  double? latitudPredeterminada;
@override final  double? longitudPredeterminada;
@override final  String empresaId;
@override final  double iva;
@override final  Money ventasAnyoActual;
@override final  Money ventasAnyoAnterior;
@override final  Money ventasHaceDosAnyos;
@override final  double margenAnyoActual;
@override final  double margenAnyoAnterior;
@override final  double margenHaceDosAnyos;
@override final  double porcentajeAbonos;
@override final  double porcentajeGarantias;
@override final  String? centralCompras;
@override final  String? urlWeb;
@override final  Divisa? divisa;
@override final  String? tarifaId;
@override final  String? tarifaDescripcion;
@override final  String? descuentoGeneralId;
@override final  String? descripcionDescuentoGeneral;
@override final  String tipoCalculoPrecio;
@override final  PlazoDeCobro? plazoDeCobro;
@override final  MetodoDeCobro? metodoDeCobro;
@override final  double descuentoProntoPago;
@override final  Money riesgoConcedidoInterno;
@override final  DateTime? riesgoConcedidoInternoDate;
@override final  Money riesgoConcedidoCoafe;
@override final  DateTime? riesgoConcedidoCoafeFecha;
@override final  Money riesgoActual;
@override final  Money? riesgoConcedido;
@override final  Money? riesgoPendienteCobroVencido;
@override final  Money? riesgoPendienteCobroNoVencido;
@override final  Money? riesgoPendienteServir;
@override final  Money? riesgoPendienteFacturar;
@override final  Money riesgoExcedido;
@override final  String? obvservacionesInternas;
@override final  bool? clientePotencial;
@override final  ClienteEstadoPotencial? clienteEstadoPotencial;
@override final  ClienteTipoPotencial? clienteTipoPotencial;
@override final  String? representante1Id;
@override final  String? representante1Nombre;
@override final  String? representante2Id;
@override final  String? representante2Nombre;
@override final  String? telefonoMovil;
@override final  String? telefonoFijo;
@override final  String? email;
@override final  Sector? sector;
@override final  Subsector? subsector;
@override final  int? franqPortes1;
@override final  int? franqPortes2;
@override final  int? franqPortes3;
@override final  double? importePortes1;
@override final  double? importePortes2;
@override final  double? importePortes3;
@override final  double? ventasPeriodoActual;
@override final  double? ventasPeriodoAnterior;
@override final  DateTime? lastUpdated;
@override final  bool deleted;

/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteCopyWith<_Cliente> get copyWith => __$ClienteCopyWithImpl<_Cliente>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cliente&&(identical(other.id, id) || other.id == id)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.nombreFiscal, nombreFiscal) || other.nombreFiscal == nombreFiscal)&&(identical(other.nif, nif) || other.nif == nif)&&(identical(other.direccionFiscal1, direccionFiscal1) || other.direccionFiscal1 == direccionFiscal1)&&(identical(other.direccionFiscal2, direccionFiscal2) || other.direccionFiscal2 == direccionFiscal2)&&(identical(other.codigoPostalFiscal, codigoPostalFiscal) || other.codigoPostalFiscal == codigoPostalFiscal)&&(identical(other.poblacionFiscal, poblacionFiscal) || other.poblacionFiscal == poblacionFiscal)&&(identical(other.provinciaFiscal, provinciaFiscal) || other.provinciaFiscal == provinciaFiscal)&&(identical(other.paisFiscal, paisFiscal) || other.paisFiscal == paisFiscal)&&(identical(other.latitudFiscal, latitudFiscal) || other.latitudFiscal == latitudFiscal)&&(identical(other.longitudFiscal, longitudFiscal) || other.longitudFiscal == longitudFiscal)&&(identical(other.direccionPredeterminada1, direccionPredeterminada1) || other.direccionPredeterminada1 == direccionPredeterminada1)&&(identical(other.direccionPredeterminada2, direccionPredeterminada2) || other.direccionPredeterminada2 == direccionPredeterminada2)&&(identical(other.codigoPostalPredeterminada, codigoPostalPredeterminada) || other.codigoPostalPredeterminada == codigoPostalPredeterminada)&&(identical(other.poblacionPredeterminada, poblacionPredeterminada) || other.poblacionPredeterminada == poblacionPredeterminada)&&(identical(other.provinciaPredeterminada, provinciaPredeterminada) || other.provinciaPredeterminada == provinciaPredeterminada)&&(identical(other.paisPredeterminada, paisPredeterminada) || other.paisPredeterminada == paisPredeterminada)&&(identical(other.latitudPredeterminada, latitudPredeterminada) || other.latitudPredeterminada == latitudPredeterminada)&&(identical(other.longitudPredeterminada, longitudPredeterminada) || other.longitudPredeterminada == longitudPredeterminada)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.ventasAnyoActual, ventasAnyoActual) || other.ventasAnyoActual == ventasAnyoActual)&&(identical(other.ventasAnyoAnterior, ventasAnyoAnterior) || other.ventasAnyoAnterior == ventasAnyoAnterior)&&(identical(other.ventasHaceDosAnyos, ventasHaceDosAnyos) || other.ventasHaceDosAnyos == ventasHaceDosAnyos)&&(identical(other.margenAnyoActual, margenAnyoActual) || other.margenAnyoActual == margenAnyoActual)&&(identical(other.margenAnyoAnterior, margenAnyoAnterior) || other.margenAnyoAnterior == margenAnyoAnterior)&&(identical(other.margenHaceDosAnyos, margenHaceDosAnyos) || other.margenHaceDosAnyos == margenHaceDosAnyos)&&(identical(other.porcentajeAbonos, porcentajeAbonos) || other.porcentajeAbonos == porcentajeAbonos)&&(identical(other.porcentajeGarantias, porcentajeGarantias) || other.porcentajeGarantias == porcentajeGarantias)&&(identical(other.centralCompras, centralCompras) || other.centralCompras == centralCompras)&&(identical(other.urlWeb, urlWeb) || other.urlWeb == urlWeb)&&(identical(other.divisa, divisa) || other.divisa == divisa)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.tarifaDescripcion, tarifaDescripcion) || other.tarifaDescripcion == tarifaDescripcion)&&(identical(other.descuentoGeneralId, descuentoGeneralId) || other.descuentoGeneralId == descuentoGeneralId)&&(identical(other.descripcionDescuentoGeneral, descripcionDescuentoGeneral) || other.descripcionDescuentoGeneral == descripcionDescuentoGeneral)&&(identical(other.tipoCalculoPrecio, tipoCalculoPrecio) || other.tipoCalculoPrecio == tipoCalculoPrecio)&&(identical(other.plazoDeCobro, plazoDeCobro) || other.plazoDeCobro == plazoDeCobro)&&(identical(other.metodoDeCobro, metodoDeCobro) || other.metodoDeCobro == metodoDeCobro)&&(identical(other.descuentoProntoPago, descuentoProntoPago) || other.descuentoProntoPago == descuentoProntoPago)&&(identical(other.riesgoConcedidoInterno, riesgoConcedidoInterno) || other.riesgoConcedidoInterno == riesgoConcedidoInterno)&&(identical(other.riesgoConcedidoInternoDate, riesgoConcedidoInternoDate) || other.riesgoConcedidoInternoDate == riesgoConcedidoInternoDate)&&(identical(other.riesgoConcedidoCoafe, riesgoConcedidoCoafe) || other.riesgoConcedidoCoafe == riesgoConcedidoCoafe)&&(identical(other.riesgoConcedidoCoafeFecha, riesgoConcedidoCoafeFecha) || other.riesgoConcedidoCoafeFecha == riesgoConcedidoCoafeFecha)&&(identical(other.riesgoActual, riesgoActual) || other.riesgoActual == riesgoActual)&&(identical(other.riesgoConcedido, riesgoConcedido) || other.riesgoConcedido == riesgoConcedido)&&(identical(other.riesgoPendienteCobroVencido, riesgoPendienteCobroVencido) || other.riesgoPendienteCobroVencido == riesgoPendienteCobroVencido)&&(identical(other.riesgoPendienteCobroNoVencido, riesgoPendienteCobroNoVencido) || other.riesgoPendienteCobroNoVencido == riesgoPendienteCobroNoVencido)&&(identical(other.riesgoPendienteServir, riesgoPendienteServir) || other.riesgoPendienteServir == riesgoPendienteServir)&&(identical(other.riesgoPendienteFacturar, riesgoPendienteFacturar) || other.riesgoPendienteFacturar == riesgoPendienteFacturar)&&(identical(other.riesgoExcedido, riesgoExcedido) || other.riesgoExcedido == riesgoExcedido)&&(identical(other.obvservacionesInternas, obvservacionesInternas) || other.obvservacionesInternas == obvservacionesInternas)&&(identical(other.clientePotencial, clientePotencial) || other.clientePotencial == clientePotencial)&&(identical(other.clienteEstadoPotencial, clienteEstadoPotencial) || other.clienteEstadoPotencial == clienteEstadoPotencial)&&(identical(other.clienteTipoPotencial, clienteTipoPotencial) || other.clienteTipoPotencial == clienteTipoPotencial)&&(identical(other.representante1Id, representante1Id) || other.representante1Id == representante1Id)&&(identical(other.representante1Nombre, representante1Nombre) || other.representante1Nombre == representante1Nombre)&&(identical(other.representante2Id, representante2Id) || other.representante2Id == representante2Id)&&(identical(other.representante2Nombre, representante2Nombre) || other.representante2Nombre == representante2Nombre)&&(identical(other.telefonoMovil, telefonoMovil) || other.telefonoMovil == telefonoMovil)&&(identical(other.telefonoFijo, telefonoFijo) || other.telefonoFijo == telefonoFijo)&&(identical(other.email, email) || other.email == email)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.subsector, subsector) || other.subsector == subsector)&&(identical(other.franqPortes1, franqPortes1) || other.franqPortes1 == franqPortes1)&&(identical(other.franqPortes2, franqPortes2) || other.franqPortes2 == franqPortes2)&&(identical(other.franqPortes3, franqPortes3) || other.franqPortes3 == franqPortes3)&&(identical(other.importePortes1, importePortes1) || other.importePortes1 == importePortes1)&&(identical(other.importePortes2, importePortes2) || other.importePortes2 == importePortes2)&&(identical(other.importePortes3, importePortes3) || other.importePortes3 == importePortes3)&&(identical(other.ventasPeriodoActual, ventasPeriodoActual) || other.ventasPeriodoActual == ventasPeriodoActual)&&(identical(other.ventasPeriodoAnterior, ventasPeriodoAnterior) || other.ventasPeriodoAnterior == ventasPeriodoAnterior)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,nombreCliente,nombreFiscal,nif,direccionFiscal1,direccionFiscal2,codigoPostalFiscal,poblacionFiscal,provinciaFiscal,paisFiscal,latitudFiscal,longitudFiscal,direccionPredeterminada1,direccionPredeterminada2,codigoPostalPredeterminada,poblacionPredeterminada,provinciaPredeterminada,paisPredeterminada,latitudPredeterminada,longitudPredeterminada,empresaId,iva,ventasAnyoActual,ventasAnyoAnterior,ventasHaceDosAnyos,margenAnyoActual,margenAnyoAnterior,margenHaceDosAnyos,porcentajeAbonos,porcentajeGarantias,centralCompras,urlWeb,divisa,tarifaId,tarifaDescripcion,descuentoGeneralId,descripcionDescuentoGeneral,tipoCalculoPrecio,plazoDeCobro,metodoDeCobro,descuentoProntoPago,riesgoConcedidoInterno,riesgoConcedidoInternoDate,riesgoConcedidoCoafe,riesgoConcedidoCoafeFecha,riesgoActual,riesgoConcedido,riesgoPendienteCobroVencido,riesgoPendienteCobroNoVencido,riesgoPendienteServir,riesgoPendienteFacturar,riesgoExcedido,obvservacionesInternas,clientePotencial,clienteEstadoPotencial,clienteTipoPotencial,representante1Id,representante1Nombre,representante2Id,representante2Nombre,telefonoMovil,telefonoFijo,email,sector,subsector,franqPortes1,franqPortes2,franqPortes3,importePortes1,importePortes2,importePortes3,ventasPeriodoActual,ventasPeriodoAnterior,lastUpdated,deleted]);

@override
String toString() {
  return 'Cliente(id: $id, nombreCliente: $nombreCliente, nombreFiscal: $nombreFiscal, nif: $nif, direccionFiscal1: $direccionFiscal1, direccionFiscal2: $direccionFiscal2, codigoPostalFiscal: $codigoPostalFiscal, poblacionFiscal: $poblacionFiscal, provinciaFiscal: $provinciaFiscal, paisFiscal: $paisFiscal, latitudFiscal: $latitudFiscal, longitudFiscal: $longitudFiscal, direccionPredeterminada1: $direccionPredeterminada1, direccionPredeterminada2: $direccionPredeterminada2, codigoPostalPredeterminada: $codigoPostalPredeterminada, poblacionPredeterminada: $poblacionPredeterminada, provinciaPredeterminada: $provinciaPredeterminada, paisPredeterminada: $paisPredeterminada, latitudPredeterminada: $latitudPredeterminada, longitudPredeterminada: $longitudPredeterminada, empresaId: $empresaId, iva: $iva, ventasAnyoActual: $ventasAnyoActual, ventasAnyoAnterior: $ventasAnyoAnterior, ventasHaceDosAnyos: $ventasHaceDosAnyos, margenAnyoActual: $margenAnyoActual, margenAnyoAnterior: $margenAnyoAnterior, margenHaceDosAnyos: $margenHaceDosAnyos, porcentajeAbonos: $porcentajeAbonos, porcentajeGarantias: $porcentajeGarantias, centralCompras: $centralCompras, urlWeb: $urlWeb, divisa: $divisa, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, descuentoGeneralId: $descuentoGeneralId, descripcionDescuentoGeneral: $descripcionDescuentoGeneral, tipoCalculoPrecio: $tipoCalculoPrecio, plazoDeCobro: $plazoDeCobro, metodoDeCobro: $metodoDeCobro, descuentoProntoPago: $descuentoProntoPago, riesgoConcedidoInterno: $riesgoConcedidoInterno, riesgoConcedidoInternoDate: $riesgoConcedidoInternoDate, riesgoConcedidoCoafe: $riesgoConcedidoCoafe, riesgoConcedidoCoafeFecha: $riesgoConcedidoCoafeFecha, riesgoActual: $riesgoActual, riesgoConcedido: $riesgoConcedido, riesgoPendienteCobroVencido: $riesgoPendienteCobroVencido, riesgoPendienteCobroNoVencido: $riesgoPendienteCobroNoVencido, riesgoPendienteServir: $riesgoPendienteServir, riesgoPendienteFacturar: $riesgoPendienteFacturar, riesgoExcedido: $riesgoExcedido, obvservacionesInternas: $obvservacionesInternas, clientePotencial: $clientePotencial, clienteEstadoPotencial: $clienteEstadoPotencial, clienteTipoPotencial: $clienteTipoPotencial, representante1Id: $representante1Id, representante1Nombre: $representante1Nombre, representante2Id: $representante2Id, representante2Nombre: $representante2Nombre, telefonoMovil: $telefonoMovil, telefonoFijo: $telefonoFijo, email: $email, sector: $sector, subsector: $subsector, franqPortes1: $franqPortes1, franqPortes2: $franqPortes2, franqPortes3: $franqPortes3, importePortes1: $importePortes1, importePortes2: $importePortes2, importePortes3: $importePortes3, ventasPeriodoActual: $ventasPeriodoActual, ventasPeriodoAnterior: $ventasPeriodoAnterior, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteCopyWith<$Res> implements $ClienteCopyWith<$Res> {
  factory _$ClienteCopyWith(_Cliente value, $Res Function(_Cliente) _then) = __$ClienteCopyWithImpl;
@override @useResult
$Res call({
 String id, String nombreCliente, String nombreFiscal, String? nif, String? direccionFiscal1, String? direccionFiscal2, String? codigoPostalFiscal, String? poblacionFiscal, String? provinciaFiscal, Pais? paisFiscal, double latitudFiscal, double longitudFiscal, String? direccionPredeterminada1, String? direccionPredeterminada2, String? codigoPostalPredeterminada, String? poblacionPredeterminada, String? provinciaPredeterminada, Pais? paisPredeterminada, double? latitudPredeterminada, double? longitudPredeterminada, String empresaId, double iva, Money ventasAnyoActual, Money ventasAnyoAnterior, Money ventasHaceDosAnyos, double margenAnyoActual, double margenAnyoAnterior, double margenHaceDosAnyos, double porcentajeAbonos, double porcentajeGarantias, String? centralCompras, String? urlWeb, Divisa? divisa, String? tarifaId, String? tarifaDescripcion, String? descuentoGeneralId, String? descripcionDescuentoGeneral, String tipoCalculoPrecio, PlazoDeCobro? plazoDeCobro, MetodoDeCobro? metodoDeCobro, double descuentoProntoPago, Money riesgoConcedidoInterno, DateTime? riesgoConcedidoInternoDate, Money riesgoConcedidoCoafe, DateTime? riesgoConcedidoCoafeFecha, Money riesgoActual, Money? riesgoConcedido, Money? riesgoPendienteCobroVencido, Money? riesgoPendienteCobroNoVencido, Money? riesgoPendienteServir, Money? riesgoPendienteFacturar, Money riesgoExcedido, String? obvservacionesInternas, bool? clientePotencial, ClienteEstadoPotencial? clienteEstadoPotencial, ClienteTipoPotencial? clienteTipoPotencial, String? representante1Id, String? representante1Nombre, String? representante2Id, String? representante2Nombre, String? telefonoMovil, String? telefonoFijo, String? email, Sector? sector, Subsector? subsector, int? franqPortes1, int? franqPortes2, int? franqPortes3, double? importePortes1, double? importePortes2, double? importePortes3, double? ventasPeriodoActual, double? ventasPeriodoAnterior, DateTime? lastUpdated, bool deleted
});


@override $PaisCopyWith<$Res>? get paisFiscal;@override $PaisCopyWith<$Res>? get paisPredeterminada;@override $DivisaCopyWith<$Res>? get divisa;@override $PlazoDeCobroCopyWith<$Res>? get plazoDeCobro;@override $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;@override $ClienteEstadoPotencialCopyWith<$Res>? get clienteEstadoPotencial;@override $ClienteTipoPotencialCopyWith<$Res>? get clienteTipoPotencial;@override $SectorCopyWith<$Res>? get sector;@override $SubsectorCopyWith<$Res>? get subsector;

}
/// @nodoc
class __$ClienteCopyWithImpl<$Res>
    implements _$ClienteCopyWith<$Res> {
  __$ClienteCopyWithImpl(this._self, this._then);

  final _Cliente _self;
  final $Res Function(_Cliente) _then;

/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nombreCliente = null,Object? nombreFiscal = null,Object? nif = freezed,Object? direccionFiscal1 = freezed,Object? direccionFiscal2 = freezed,Object? codigoPostalFiscal = freezed,Object? poblacionFiscal = freezed,Object? provinciaFiscal = freezed,Object? paisFiscal = freezed,Object? latitudFiscal = null,Object? longitudFiscal = null,Object? direccionPredeterminada1 = freezed,Object? direccionPredeterminada2 = freezed,Object? codigoPostalPredeterminada = freezed,Object? poblacionPredeterminada = freezed,Object? provinciaPredeterminada = freezed,Object? paisPredeterminada = freezed,Object? latitudPredeterminada = freezed,Object? longitudPredeterminada = freezed,Object? empresaId = null,Object? iva = null,Object? ventasAnyoActual = null,Object? ventasAnyoAnterior = null,Object? ventasHaceDosAnyos = null,Object? margenAnyoActual = null,Object? margenAnyoAnterior = null,Object? margenHaceDosAnyos = null,Object? porcentajeAbonos = null,Object? porcentajeGarantias = null,Object? centralCompras = freezed,Object? urlWeb = freezed,Object? divisa = freezed,Object? tarifaId = freezed,Object? tarifaDescripcion = freezed,Object? descuentoGeneralId = freezed,Object? descripcionDescuentoGeneral = freezed,Object? tipoCalculoPrecio = null,Object? plazoDeCobro = freezed,Object? metodoDeCobro = freezed,Object? descuentoProntoPago = null,Object? riesgoConcedidoInterno = null,Object? riesgoConcedidoInternoDate = freezed,Object? riesgoConcedidoCoafe = null,Object? riesgoConcedidoCoafeFecha = freezed,Object? riesgoActual = null,Object? riesgoConcedido = freezed,Object? riesgoPendienteCobroVencido = freezed,Object? riesgoPendienteCobroNoVencido = freezed,Object? riesgoPendienteServir = freezed,Object? riesgoPendienteFacturar = freezed,Object? riesgoExcedido = null,Object? obvservacionesInternas = freezed,Object? clientePotencial = freezed,Object? clienteEstadoPotencial = freezed,Object? clienteTipoPotencial = freezed,Object? representante1Id = freezed,Object? representante1Nombre = freezed,Object? representante2Id = freezed,Object? representante2Nombre = freezed,Object? telefonoMovil = freezed,Object? telefonoFijo = freezed,Object? email = freezed,Object? sector = freezed,Object? subsector = freezed,Object? franqPortes1 = freezed,Object? franqPortes2 = freezed,Object? franqPortes3 = freezed,Object? importePortes1 = freezed,Object? importePortes2 = freezed,Object? importePortes3 = freezed,Object? ventasPeriodoActual = freezed,Object? ventasPeriodoAnterior = freezed,Object? lastUpdated = freezed,Object? deleted = null,}) {
  return _then(_Cliente(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,nombreFiscal: null == nombreFiscal ? _self.nombreFiscal : nombreFiscal // ignore: cast_nullable_to_non_nullable
as String,nif: freezed == nif ? _self.nif : nif // ignore: cast_nullable_to_non_nullable
as String?,direccionFiscal1: freezed == direccionFiscal1 ? _self.direccionFiscal1 : direccionFiscal1 // ignore: cast_nullable_to_non_nullable
as String?,direccionFiscal2: freezed == direccionFiscal2 ? _self.direccionFiscal2 : direccionFiscal2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostalFiscal: freezed == codigoPostalFiscal ? _self.codigoPostalFiscal : codigoPostalFiscal // ignore: cast_nullable_to_non_nullable
as String?,poblacionFiscal: freezed == poblacionFiscal ? _self.poblacionFiscal : poblacionFiscal // ignore: cast_nullable_to_non_nullable
as String?,provinciaFiscal: freezed == provinciaFiscal ? _self.provinciaFiscal : provinciaFiscal // ignore: cast_nullable_to_non_nullable
as String?,paisFiscal: freezed == paisFiscal ? _self.paisFiscal : paisFiscal // ignore: cast_nullable_to_non_nullable
as Pais?,latitudFiscal: null == latitudFiscal ? _self.latitudFiscal : latitudFiscal // ignore: cast_nullable_to_non_nullable
as double,longitudFiscal: null == longitudFiscal ? _self.longitudFiscal : longitudFiscal // ignore: cast_nullable_to_non_nullable
as double,direccionPredeterminada1: freezed == direccionPredeterminada1 ? _self.direccionPredeterminada1 : direccionPredeterminada1 // ignore: cast_nullable_to_non_nullable
as String?,direccionPredeterminada2: freezed == direccionPredeterminada2 ? _self.direccionPredeterminada2 : direccionPredeterminada2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostalPredeterminada: freezed == codigoPostalPredeterminada ? _self.codigoPostalPredeterminada : codigoPostalPredeterminada // ignore: cast_nullable_to_non_nullable
as String?,poblacionPredeterminada: freezed == poblacionPredeterminada ? _self.poblacionPredeterminada : poblacionPredeterminada // ignore: cast_nullable_to_non_nullable
as String?,provinciaPredeterminada: freezed == provinciaPredeterminada ? _self.provinciaPredeterminada : provinciaPredeterminada // ignore: cast_nullable_to_non_nullable
as String?,paisPredeterminada: freezed == paisPredeterminada ? _self.paisPredeterminada : paisPredeterminada // ignore: cast_nullable_to_non_nullable
as Pais?,latitudPredeterminada: freezed == latitudPredeterminada ? _self.latitudPredeterminada : latitudPredeterminada // ignore: cast_nullable_to_non_nullable
as double?,longitudPredeterminada: freezed == longitudPredeterminada ? _self.longitudPredeterminada : longitudPredeterminada // ignore: cast_nullable_to_non_nullable
as double?,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,ventasAnyoActual: null == ventasAnyoActual ? _self.ventasAnyoActual : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
as Money,ventasAnyoAnterior: null == ventasAnyoAnterior ? _self.ventasAnyoAnterior : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
as Money,ventasHaceDosAnyos: null == ventasHaceDosAnyos ? _self.ventasHaceDosAnyos : ventasHaceDosAnyos // ignore: cast_nullable_to_non_nullable
as Money,margenAnyoActual: null == margenAnyoActual ? _self.margenAnyoActual : margenAnyoActual // ignore: cast_nullable_to_non_nullable
as double,margenAnyoAnterior: null == margenAnyoAnterior ? _self.margenAnyoAnterior : margenAnyoAnterior // ignore: cast_nullable_to_non_nullable
as double,margenHaceDosAnyos: null == margenHaceDosAnyos ? _self.margenHaceDosAnyos : margenHaceDosAnyos // ignore: cast_nullable_to_non_nullable
as double,porcentajeAbonos: null == porcentajeAbonos ? _self.porcentajeAbonos : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
as double,porcentajeGarantias: null == porcentajeGarantias ? _self.porcentajeGarantias : porcentajeGarantias // ignore: cast_nullable_to_non_nullable
as double,centralCompras: freezed == centralCompras ? _self.centralCompras : centralCompras // ignore: cast_nullable_to_non_nullable
as String?,urlWeb: freezed == urlWeb ? _self.urlWeb : urlWeb // ignore: cast_nullable_to_non_nullable
as String?,divisa: freezed == divisa ? _self.divisa : divisa // ignore: cast_nullable_to_non_nullable
as Divisa?,tarifaId: freezed == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String?,tarifaDescripcion: freezed == tarifaDescripcion ? _self.tarifaDescripcion : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
as String?,descuentoGeneralId: freezed == descuentoGeneralId ? _self.descuentoGeneralId : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
as String?,descripcionDescuentoGeneral: freezed == descripcionDescuentoGeneral ? _self.descripcionDescuentoGeneral : descripcionDescuentoGeneral // ignore: cast_nullable_to_non_nullable
as String?,tipoCalculoPrecio: null == tipoCalculoPrecio ? _self.tipoCalculoPrecio : tipoCalculoPrecio // ignore: cast_nullable_to_non_nullable
as String,plazoDeCobro: freezed == plazoDeCobro ? _self.plazoDeCobro : plazoDeCobro // ignore: cast_nullable_to_non_nullable
as PlazoDeCobro?,metodoDeCobro: freezed == metodoDeCobro ? _self.metodoDeCobro : metodoDeCobro // ignore: cast_nullable_to_non_nullable
as MetodoDeCobro?,descuentoProntoPago: null == descuentoProntoPago ? _self.descuentoProntoPago : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
as double,riesgoConcedidoInterno: null == riesgoConcedidoInterno ? _self.riesgoConcedidoInterno : riesgoConcedidoInterno // ignore: cast_nullable_to_non_nullable
as Money,riesgoConcedidoInternoDate: freezed == riesgoConcedidoInternoDate ? _self.riesgoConcedidoInternoDate : riesgoConcedidoInternoDate // ignore: cast_nullable_to_non_nullable
as DateTime?,riesgoConcedidoCoafe: null == riesgoConcedidoCoafe ? _self.riesgoConcedidoCoafe : riesgoConcedidoCoafe // ignore: cast_nullable_to_non_nullable
as Money,riesgoConcedidoCoafeFecha: freezed == riesgoConcedidoCoafeFecha ? _self.riesgoConcedidoCoafeFecha : riesgoConcedidoCoafeFecha // ignore: cast_nullable_to_non_nullable
as DateTime?,riesgoActual: null == riesgoActual ? _self.riesgoActual : riesgoActual // ignore: cast_nullable_to_non_nullable
as Money,riesgoConcedido: freezed == riesgoConcedido ? _self.riesgoConcedido : riesgoConcedido // ignore: cast_nullable_to_non_nullable
as Money?,riesgoPendienteCobroVencido: freezed == riesgoPendienteCobroVencido ? _self.riesgoPendienteCobroVencido : riesgoPendienteCobroVencido // ignore: cast_nullable_to_non_nullable
as Money?,riesgoPendienteCobroNoVencido: freezed == riesgoPendienteCobroNoVencido ? _self.riesgoPendienteCobroNoVencido : riesgoPendienteCobroNoVencido // ignore: cast_nullable_to_non_nullable
as Money?,riesgoPendienteServir: freezed == riesgoPendienteServir ? _self.riesgoPendienteServir : riesgoPendienteServir // ignore: cast_nullable_to_non_nullable
as Money?,riesgoPendienteFacturar: freezed == riesgoPendienteFacturar ? _self.riesgoPendienteFacturar : riesgoPendienteFacturar // ignore: cast_nullable_to_non_nullable
as Money?,riesgoExcedido: null == riesgoExcedido ? _self.riesgoExcedido : riesgoExcedido // ignore: cast_nullable_to_non_nullable
as Money,obvservacionesInternas: freezed == obvservacionesInternas ? _self.obvservacionesInternas : obvservacionesInternas // ignore: cast_nullable_to_non_nullable
as String?,clientePotencial: freezed == clientePotencial ? _self.clientePotencial : clientePotencial // ignore: cast_nullable_to_non_nullable
as bool?,clienteEstadoPotencial: freezed == clienteEstadoPotencial ? _self.clienteEstadoPotencial : clienteEstadoPotencial // ignore: cast_nullable_to_non_nullable
as ClienteEstadoPotencial?,clienteTipoPotencial: freezed == clienteTipoPotencial ? _self.clienteTipoPotencial : clienteTipoPotencial // ignore: cast_nullable_to_non_nullable
as ClienteTipoPotencial?,representante1Id: freezed == representante1Id ? _self.representante1Id : representante1Id // ignore: cast_nullable_to_non_nullable
as String?,representante1Nombre: freezed == representante1Nombre ? _self.representante1Nombre : representante1Nombre // ignore: cast_nullable_to_non_nullable
as String?,representante2Id: freezed == representante2Id ? _self.representante2Id : representante2Id // ignore: cast_nullable_to_non_nullable
as String?,representante2Nombre: freezed == representante2Nombre ? _self.representante2Nombre : representante2Nombre // ignore: cast_nullable_to_non_nullable
as String?,telefonoMovil: freezed == telefonoMovil ? _self.telefonoMovil : telefonoMovil // ignore: cast_nullable_to_non_nullable
as String?,telefonoFijo: freezed == telefonoFijo ? _self.telefonoFijo : telefonoFijo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,sector: freezed == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as Sector?,subsector: freezed == subsector ? _self.subsector : subsector // ignore: cast_nullable_to_non_nullable
as Subsector?,franqPortes1: freezed == franqPortes1 ? _self.franqPortes1 : franqPortes1 // ignore: cast_nullable_to_non_nullable
as int?,franqPortes2: freezed == franqPortes2 ? _self.franqPortes2 : franqPortes2 // ignore: cast_nullable_to_non_nullable
as int?,franqPortes3: freezed == franqPortes3 ? _self.franqPortes3 : franqPortes3 // ignore: cast_nullable_to_non_nullable
as int?,importePortes1: freezed == importePortes1 ? _self.importePortes1 : importePortes1 // ignore: cast_nullable_to_non_nullable
as double?,importePortes2: freezed == importePortes2 ? _self.importePortes2 : importePortes2 // ignore: cast_nullable_to_non_nullable
as double?,importePortes3: freezed == importePortes3 ? _self.importePortes3 : importePortes3 // ignore: cast_nullable_to_non_nullable
as double?,ventasPeriodoActual: freezed == ventasPeriodoActual ? _self.ventasPeriodoActual : ventasPeriodoActual // ignore: cast_nullable_to_non_nullable
as double?,ventasPeriodoAnterior: freezed == ventasPeriodoAnterior ? _self.ventasPeriodoAnterior : ventasPeriodoAnterior // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get paisFiscal {
    if (_self.paisFiscal == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.paisFiscal!, (value) {
    return _then(_self.copyWith(paisFiscal: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get paisPredeterminada {
    if (_self.paisPredeterminada == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.paisPredeterminada!, (value) {
    return _then(_self.copyWith(paisPredeterminada: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisaCopyWith<$Res>? get divisa {
    if (_self.divisa == null) {
    return null;
  }

  return $DivisaCopyWith<$Res>(_self.divisa!, (value) {
    return _then(_self.copyWith(divisa: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlazoDeCobroCopyWith<$Res>? get plazoDeCobro {
    if (_self.plazoDeCobro == null) {
    return null;
  }

  return $PlazoDeCobroCopyWith<$Res>(_self.plazoDeCobro!, (value) {
    return _then(_self.copyWith(plazoDeCobro: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetodoDeCobroCopyWith<$Res>? get metodoDeCobro {
    if (_self.metodoDeCobro == null) {
    return null;
  }

  return $MetodoDeCobroCopyWith<$Res>(_self.metodoDeCobro!, (value) {
    return _then(_self.copyWith(metodoDeCobro: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteEstadoPotencialCopyWith<$Res>? get clienteEstadoPotencial {
    if (_self.clienteEstadoPotencial == null) {
    return null;
  }

  return $ClienteEstadoPotencialCopyWith<$Res>(_self.clienteEstadoPotencial!, (value) {
    return _then(_self.copyWith(clienteEstadoPotencial: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteTipoPotencialCopyWith<$Res>? get clienteTipoPotencial {
    if (_self.clienteTipoPotencial == null) {
    return null;
  }

  return $ClienteTipoPotencialCopyWith<$Res>(_self.clienteTipoPotencial!, (value) {
    return _then(_self.copyWith(clienteTipoPotencial: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorCopyWith<$Res>? get sector {
    if (_self.sector == null) {
    return null;
  }

  return $SectorCopyWith<$Res>(_self.sector!, (value) {
    return _then(_self.copyWith(sector: value));
  });
}/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubsectorCopyWith<$Res>? get subsector {
    if (_self.subsector == null) {
    return null;
  }

  return $SubsectorCopyWith<$Res>(_self.subsector!, (value) {
    return _then(_self.copyWith(subsector: value));
  });
}
}

// dart format on
