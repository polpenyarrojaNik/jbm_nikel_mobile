import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';
import '../../../core/domain/divisa.dart';
import '../../../core/infrastructure/pais_dto.dart';
import '../../../core/infrastructure/database.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../domain/metodo_cobro.dart';
import '../domain/plazo_cobro.dart';
import '../domain/cliente.dart';
import 'metodo_cobro_dto.dart';
import 'plazo_cobro_dto.dart';

part 'cliente_dto.freezed.dart';
part 'cliente_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteDTO with _$ClienteDTO implements Insertable<ClienteDTO> {
  const ClienteDTO._();
  const factory ClienteDTO({
    @JsonKey(name: 'CLIENTE_ID') required String id,
    @JsonKey(name: 'NOMBRE') String? nombreCliente,
    @JsonKey(name: 'NIF') String? nif,
    @JsonKey(name: 'NOMBRE_FISCAL') String? nombreFiscal,
    @JsonKey(name: 'DIRECCION_FISCAL1') String? direccionFiscal1,
    @JsonKey(name: 'DIRECCION_FISCAL2') String? direccionFiscal2,
    @JsonKey(name: 'CODIGO_POSTAL_FISCAL') String? codigoPostalFiscal,
    @JsonKey(name: 'POBLACION_FISCAL') String? poblacionFiscal,
    @JsonKey(name: 'PAIS_ID_FISCAL') String? paisFiscalId,
    @JsonKey(name: 'PROVINCIA_FISCAL') String? provinciaFiscal,
    @JsonKey(name: 'LATITUD_FISCAL') double? latitudFiscal,
    @JsonKey(name: 'LONGITUD_FISCAL') double? longitudFiscal,
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'IVA_ESPECIAL') double? ivaEspecial,
    @JsonKey(name: 'IVA_EXENTO') String? extentoIva,
    @JsonKey(name: 'VENTAS_ANYO_ACTUAL') double? ventasAnyoActual,
    @JsonKey(name: 'VENTAS_ANYO_ANTERIOR') double? ventasAnyoAnterior,
    @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') double? ventasHaceDosAnyos,
    @JsonKey(name: 'MARGEN_ANYO_ACTUAL') double? margenAnyoActual,
    @JsonKey(name: 'MARGEN_ANYO_ANTERIOR') double? margenAnyoAnterior,
    @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') double? margenHaceDosAnyos,
    @JsonKey(name: 'PORCENTAJE_ABONOS') double? porcentajeAbonos,
    @JsonKey(name: 'PORCENTAJE_GARANTIAS') double? porcentajeGarantias,
    @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') String? centralCompras,
    @JsonKey(name: 'URL_WEB') String? urlWeb,
    @JsonKey(name: 'DIVISA_ID') String? divisaId,
    @JsonKey(name: 'TARIFA_ID') String? tarifaId,
    @JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,
    @JsonKey(name: 'DESCUENTO_GENERAL_ID') String? descuentoGeneral,
    @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
        String? descripcionDescuentoGeneral,
    @JsonKey(name: 'TIPO_CALCULO_PRECIO') required String tipoCalucloPrecio,
    @JsonKey(name: 'PLAZO_COBRO_ID') String? plazoDeCobroId,
    @JsonKey(name: 'METODO_COBRO_ID') String? metodoDeCobroId,
    @JsonKey(name: 'DESCUENTO_PRONTO_PAGO') required double descuentoProntoPago,
    @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
        required double riesgoConcedidoInterno,
    @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
        DateTime? riesgoConcedidoInternoDate,
    @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
        required double riesgoConcedidoCoafe,
    @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
        DateTime? riesgoConcedidoCoafeFecha,
    @JsonKey(name: 'RIESGO_CONCEDIDO') double? riesgoConcedido,
    @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
        double? riesgoPendienteCobroVencido,
    @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
        double? riesgoPendienteCobroNoVencido,
    @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE') double? riesgoPendienteServir,
    @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
        double? riesgoPendienteFacturar,
    @JsonKey(name: 'OBSERVACIONES_INTERNAS') String? obvservacionesInternas,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteDTO;

  factory ClienteDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteDTOFromJson(json);

  Cliente toDomain({
    required Pais? paisFiscal,
    required Divisa? divisa,
    required MetodoDeCobro? metodoDeCobro,
    required PlazoDeCobro? plazoDeCobro,
  }) {
    return Cliente(
      id: id,
      nombreCliente: nombreCliente,
      nif: nif,
      nombreFiscal: nombreFiscal,
      direccionFiscal1: direccionFiscal1,
      direccionFiscal2: direccionFiscal2,
      codigoPostalFiscal: codigoPostalFiscal,
      poblacionFiscal: poblacionFiscal,
      provinciaFiscal: provinciaFiscal,
      paisFiscal: paisFiscal,
      latitudFiscal: latitudFiscal,
      longitudFiscal: longitudFiscal,
      empresaId: empresaId,
      ivaEspecial: ivaEspecial,
      extentoIva: extentoIva,
      ventasAnyoActual: ventasAnyoActual,
      ventasAnyoAnterior: ventasAnyoAnterior,
      ventasHaceDosAnyos: ventasHaceDosAnyos,
      margenAnyoActual: margenAnyoActual,
      margenAnyoAnterior: margenAnyoAnterior,
      margenHaceDosAnyos: margenHaceDosAnyos,
      porcentajeAbonos: porcentajeAbonos,
      porcentajeGarantias: porcentajeGarantias,
      centralCompras: centralCompras,
      urlWeb: urlWeb,
      divisa: divisa,
      tarifaId: tarifaId,
      tarifaDescripcion: tarifaDescripcion,
      descuentoGeneral: descuentoGeneral,
      descripcionDescuentoGeneral: descripcionDescuentoGeneral,
      tipoCalucloPrecio: tipoCalucloPrecio,
      plazoDeCobro: plazoDeCobro,
      metodoDeCobro: metodoDeCobro,
      descuentoProntoPago: descuentoProntoPago,
      riesgoConcedidoInterno: riesgoConcedidoInterno,
      riesgoConcedidoInternoDate: riesgoConcedidoInternoDate,
      riesgoConcedidoCoafe: riesgoConcedidoCoafe,
      riesgoConcedidoCoafeFecha: riesgoConcedidoCoafeFecha,
      riesgoConcedido: riesgoConcedido,
      riesgoPendienteCobroVencido: riesgoPendienteCobroVencido,
      riesgoPendienteCobroNoVencido: riesgoPendienteCobroNoVencido,
      riesgoPendienteServir: riesgoPendienteServir,
      riesgoPendienteFacturar: riesgoPendienteFacturar,
      obvservacionesInternas: obvservacionesInternas,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteTableCompanion(
      id: Value(id),
      nombreCliente: Value(nombreCliente),
      nif: Value(nif),
      nombreFiscal: Value(nombreFiscal),
      direccionFiscal1: Value(direccionFiscal1),
      direccionFiscal2: Value(direccionFiscal2),
      codigoPostalFiscal: Value(codigoPostalFiscal),
      poblacionFiscal: Value(poblacionFiscal),
      provinciaFiscal: Value(provinciaFiscal),
      paisFiscalId: Value(paisFiscalId),
      latitudFiscal: Value(latitudFiscal),
      longitudFiscal: Value(longitudFiscal),
      empresaId: Value(empresaId),
      ivaEspecial: Value(ivaEspecial),
      ventasAnyoActual: Value(ventasAnyoActual),
      ventasHaceDosAnyos: Value(ventasHaceDosAnyos),
      margenAnyoAnterior: Value(ventasHaceDosAnyos),
      margenHaceDosAnyos: Value(margenHaceDosAnyos),
      porcentajeAbonos: Value(porcentajeAbonos),
      porcentajeGarantias: Value(porcentajeGarantias),
      centralCompras: Value(centralCompras),
      urlWeb: Value(urlWeb),
      divisaId: Value(divisaId),
      tarifaId: Value(tarifaId),
      tarifaDescripcion: Value(tarifaDescripcion),
      descuentoGeneral: Value(descuentoGeneral),
      descripcionDescuentoGeneral: Value(descripcionDescuentoGeneral),
      tipoCalucloPrecio: Value(tipoCalucloPrecio),
      plazoDeCobroId: Value(plazoDeCobroId),
      metodoDeCobroId: Value(metodoDeCobroId),
      descuentoProntoPago: Value(descuentoProntoPago),
      riesgoConcedidoInterno: Value(riesgoConcedidoInterno),
      riesgoConcedidoInternoDate: Value(riesgoConcedidoInternoDate),
      riesgoConcedidoCoafe: Value(riesgoConcedidoCoafe),
      riesgoConcedidoCoafeFecha: Value(riesgoConcedidoCoafeFecha),
      riesgoConcedido: Value(riesgoConcedido),
      riesgoPendienteCobroVencido: Value(riesgoPendienteCobroVencido),
      riesgoPendienteCobroNoVencido: Value(riesgoPendienteCobroNoVencido),
      riesgoPendienteServir: Value(riesgoPendienteServir),
      riesgoPendienteFacturar: Value(riesgoPendienteFacturar),
      obvservacionesInternas: Value(obvservacionesInternas),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteDTO)
class ClienteTable extends Table {
  @override
  String get tableName => 'CLIENTES';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('CLIENTE_ID')();
  TextColumn get nombreCliente => text().nullable().named('NOMBRE')();
  TextColumn get nif => text().nullable().named('NIF')();
  TextColumn get nombreFiscal => text().nullable().named('NOMBRE_FISCAL')();
  TextColumn get direccionFiscal1 =>
      text().nullable().named('DIRECCION_FISCAL1')();
  TextColumn get direccionFiscal2 =>
      text().nullable().named('DIRECCION_FISCAL2')();
  TextColumn get codigoPostalFiscal =>
      text().nullable().named('CODIGO_POSTAL_FISCAL')();
  TextColumn get poblacionFiscal =>
      text().nullable().named('POBLACION_FISCAL')();
  TextColumn get provinciaFiscal =>
      text().nullable().named('PROVINCIA_FISCAL')();
  TextColumn get paisFiscalId =>
      text().references(PaisTable, #id).nullable().named('PAIS_ID_FISCAL')();
  RealColumn get latitudFiscal => real().nullable().named('LATITUD_FISCAL')();
  RealColumn get longitudFiscal => real().nullable().named('LONGITUD_FISCAL')();
  TextColumn get empresaId => text().named('EMPRESA_ID')();
  RealColumn get ivaEspecial => real().nullable().named('IVA_ESPECIAL')();
  TextColumn get extentoIva => text().nullable().named('IVA_EXENTO')();
  RealColumn get ventasAnyoActual =>
      real().nullable().named('VENTAS_ANYO_ACTUAL')();
  RealColumn get ventasAnyoAnterior =>
      real().nullable().named('VENTAS_ANYO_ANTERIOR')();
  RealColumn get ventasHaceDosAnyos =>
      real().nullable().named('VENTAS_HACE_DOS_ANYOS')();
  RealColumn get margenAnyoActual =>
      real().nullable().named('MARGEN_ANYO_ACTUAL')();
  RealColumn get margenAnyoAnterior =>
      real().nullable().named('MARGEN_ANYO_ANTERIOR')();
  RealColumn get margenHaceDosAnyos =>
      real().nullable().named('MARGEN_HACE_DOS_ANYOS')();
  RealColumn get porcentajeAbonos =>
      real().nullable().named('PORCENTAJE_ABONOS')();
  RealColumn get porcentajeGarantias =>
      real().nullable().named('PORCENTAJE_GARANTIAS')();
  TextColumn get centralCompras =>
      text().nullable().named('CENTRAL_COMPRAS_NOMBRE')();
  TextColumn get urlWeb => text().nullable().named('URL_WEB')();
  TextColumn get divisaId =>
      text().references(DivisaTable, #id).nullable().named('DIVISA_ID')();
  TextColumn get tarifaId => text().nullable().named('TARIFA_ID')();
  TextColumn get tarifaDescripcion =>
      text().nullable().named('TARIFA_DESCRIPCION')();
  TextColumn get descuentoGeneral =>
      text().nullable().named('DESCUENTO_GENERAL_ID')();
  TextColumn get descripcionDescuentoGeneral =>
      text().nullable().named('DESCUENTO_GENERAL_DESCRIPCION')();
  TextColumn get tipoCalucloPrecio => text().named('TIPO_CALCULO_PRECIO')();
  TextColumn get plazoDeCobroId => text()
      .references(PlazoDeCobroTable, #id)
      .nullable()
      .named('PLAZO_COBRO_ID')();
  TextColumn get metodoDeCobroId => text()
      .references(MetodoDeCobroTable, #id)
      .nullable()
      .named('METODO_COBRO_ID')();
  RealColumn get descuentoProntoPago => real().named('DESCUENTO_PRONTO_PAGO')();
  RealColumn get riesgoConcedidoInterno =>
      real().named('RIESGO_CONCEDIDO_INTERNO')();
  DateTimeColumn get riesgoConcedidoInternoDate =>
      dateTime().nullable().named('RIESGO_CONCEDIDO_INTERNO_FECHA')();
  RealColumn get riesgoConcedidoCoafe =>
      real().named('RIESGO_CONCEDIDO_COFACE')();
  DateTimeColumn get riesgoConcedidoCoafeFecha =>
      dateTime().nullable().named('RIESGO_CONCEDIDO_COFACE_FECHA')();
  RealColumn get riesgoConcedido =>
      real().nullable().named('RIESGO_CONCEDIDO')();
  RealColumn get riesgoPendienteCobroVencido =>
      real().nullable().named('RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')();
  RealColumn get riesgoPendienteCobroNoVencido =>
      real().nullable().named('RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')();
  RealColumn get riesgoPendienteServir =>
      real().nullable().named('RIESGO_PDTE_SERVIR_CLIENTE')();
  RealColumn get riesgoPendienteFacturar =>
      real().nullable().named('RIESGO_PDTE_FACTURAR_CLIENTE')();
  TextColumn get obvservacionesInternas =>
      text().nullable().named('OBSERVACIONES_INTERNAS')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
