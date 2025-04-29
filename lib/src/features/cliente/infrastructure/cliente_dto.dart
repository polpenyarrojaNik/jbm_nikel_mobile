import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/domain/divisa.dart';
import '../../../core/domain/pais.dart';
import '../../../core/domain/sector.dart';
import '../../../core/domain/subsector.dart';
import '../../../core/helpers/extension.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../../../core/infrastructure/pais_dto.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../domain/cliente.dart';
import '../domain/cliente_direccion.dart';
import '../domain/cliente_estado_potencial.dart';
import '../domain/cliente_tipo_potencial.dart';
import '../domain/metodo_cobro.dart';
import '../domain/plazo_cobro.dart';
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
    @JsonKey(name: 'NOMBRE') required String nombreCliente,
    @JsonKey(name: 'NIF') String? nif,
    @JsonKey(name: 'NOMBRE_FISCAL') required String nombreFiscal,
    @JsonKey(name: 'DIRECCION_FISCAL1') String? direccionFiscal1,
    @JsonKey(name: 'DIRECCION_FISCAL2') String? direccionFiscal2,
    @JsonKey(name: 'CODIGO_POSTAL_FISCAL') String? codigoPostalFiscal,
    @JsonKey(name: 'POBLACION_FISCAL') String? poblacionFiscal,
    @JsonKey(name: 'PAIS_ID_FISCAL') String? paisFiscalId,
    @JsonKey(name: 'PROVINCIA_FISCAL') String? provinciaFiscal,
    @JsonKey(name: 'LATITUD_FISCAL') required double latitudFiscal,
    @JsonKey(name: 'LONGITUD_FISCAL') required double longitudFiscal,
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'IVA') required double iva,
    @JsonKey(name: 'VENTAS_ANYO_ACTUAL') required double ventasAnyoActual,
    @JsonKey(name: 'VENTAS_ANYO_ANTERIOR') required double ventasAnyoAnterior,
    @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') required double ventasHaceDosAnyos,
    @JsonKey(name: 'MARGEN_ANYO_ACTUAL') required double margenAnyoActual,
    @JsonKey(name: 'MARGEN_ANYO_ANTERIOR') required double margenAnyoAnterior,
    @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') required double margenHaceDosAnyos,
    @JsonKey(name: 'PORCENTAJE_ABONOS') required double porcentajeAbonos,
    @JsonKey(name: 'PORCENTAJE_GARANTIAS') required double porcentajeGarantias,
    @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') String? centralCompras,
    @JsonKey(name: 'URL_WEB') String? urlWeb,
    @JsonKey(name: 'DIVISA_ID') String? divisaId,
    @JsonKey(name: 'TARIFA_ID') String? tarifaId,
    @JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,
    @JsonKey(name: 'DESCUENTO_GENERAL_ID') String? descuentoGeneralId,
    @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
    String? descripcionDescuentoGeneral,
    @JsonKey(name: 'TIPO_CALCULO_PRECIO') required String tipoCalculoPrecio,
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
    @JsonKey(name: 'CLIENTE_POTENCIAL') String? clientePotencial,
    @JsonKey(name: 'ESTADO_POTENCIAL_ID') String? clienteEstadoPotencialId,
    @JsonKey(name: 'TIPO_POTENCIAL_ID') String? clienteTipoPotencialId,
    @JsonKey(name: 'REPRESENTANTE1_ID') String? representante1Id,
    @JsonKey(name: 'REPRESENTANTE1_NOMBRE') String? representante1Nombre,
    @JsonKey(name: 'REPRESENTANTE2_ID') String? representante2Id,
    @JsonKey(name: 'REPRESENTANTE2_NOMBRE') String? representante2Nombre,
    @JsonKey(name: 'TELEFONO_FIJO') String? telefonoFijo,
    @JsonKey(name: 'TELEFONO_MOVIL') String? telefonoMovil,
    @JsonKey(name: 'E_MAIL') String? email,
    @JsonKey(name: 'SECTOR_ID') String? sectorId,
    @JsonKey(name: 'SUBSECTOR_ID') String? subsectorId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteDTO;

  factory ClienteDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteDTOFromJson(json);

  Cliente toDomain({
    Pais? paisFiscal,
    Divisa? divisa,
    MetodoDeCobro? metodoDeCobro,
    PlazoDeCobro? plazoDeCobro,
    ClienteTipoPotencial? clienteTipoPotencial,
    ClienteEstadoPotencial? clienteEstadoPotencial,
    required ClienteDireccion? clienteDireccionPredeterminada,
    Sector? sector,
    Subsector? subsector,
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
      direccionPredeterminada1: clienteDireccionPredeterminada?.direccion1,
      direccionPredeterminada2: clienteDireccionPredeterminada?.direccion2,
      poblacionPredeterminada: clienteDireccionPredeterminada?.poblacion,
      codigoPostalPredeterminada: clienteDireccionPredeterminada?.codigoPostal,
      provinciaPredeterminada: clienteDireccionPredeterminada?.provincia,
      paisPredeterminada: clienteDireccionPredeterminada?.pais,
      latitudPredeterminada: clienteDireccionPredeterminada?.latitud,
      longitudPredeterminada: clienteDireccionPredeterminada?.longitud,
      empresaId: empresaId,
      iva: iva,
      ventasAnyoActual: ventasAnyoActual.toMoney(currencyId: divisaId),
      ventasAnyoAnterior: ventasAnyoAnterior.toMoney(currencyId: divisaId),
      ventasHaceDosAnyos: ventasHaceDosAnyos.toMoney(currencyId: divisaId),
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
      descuentoGeneralId: descuentoGeneralId,
      descripcionDescuentoGeneral: descripcionDescuentoGeneral,
      tipoCalculoPrecio: tipoCalculoPrecio,
      plazoDeCobro: plazoDeCobro,
      metodoDeCobro: metodoDeCobro,
      descuentoProntoPago: descuentoProntoPago,
      riesgoConcedidoInterno: riesgoConcedidoInterno.toMoney(
        currencyId: divisaId,
      ),
      riesgoConcedidoInternoDate: riesgoConcedidoInternoDate,
      riesgoConcedidoCoafe: riesgoConcedidoCoafe.toMoney(currencyId: divisaId),
      riesgoConcedidoCoafeFecha: riesgoConcedidoCoafeFecha,
      riesgoActual: calculateRiesgoActual(
        riesgoPendienteCobroVencido,
        riesgoPendienteCobroNoVencido,
        riesgoPendienteServir,
        riesgoPendienteFacturar,
        divisaId,
      ),
      riesgoConcedido: riesgoConcedido?.toMoney(currencyId: divisaId),
      riesgoPendienteCobroVencido: riesgoPendienteCobroVencido?.toMoney(
        currencyId: divisaId,
      ),
      riesgoPendienteCobroNoVencido: riesgoPendienteCobroNoVencido?.toMoney(
        currencyId: divisaId,
      ),
      riesgoPendienteServir: riesgoPendienteServir?.toMoney(
        currencyId: divisaId,
      ),
      riesgoPendienteFacturar: riesgoPendienteFacturar?.toMoney(
        currencyId: divisaId,
      ),
      riesgoExcedido: calculateRiesgoExcedido(riesgoConcedido, divisaId!),
      obvservacionesInternas: obvservacionesInternas,
      clientePotencial: (clientePotencial == 'S') ? true : false,
      clienteEstadoPotencial: clienteEstadoPotencial,
      clienteTipoPotencial: clienteTipoPotencial,
      representante1Id: representante1Id,
      representante1Nombre: representante1Nombre,
      representante2Id: representante2Id,
      representante2Nombre: representante2Nombre,
      telefonoFijo: telefonoFijo,
      telefonoMovil: telefonoMovil,
      email: email,
      sector: sector,
      subsector: subsector,
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
      iva: Value(iva),
      ventasAnyoActual: Value(ventasAnyoActual),
      ventasAnyoAnterior: Value(ventasAnyoAnterior),
      ventasHaceDosAnyos: Value(ventasHaceDosAnyos),
      margenAnyoActual: Value(margenAnyoActual),
      margenAnyoAnterior: Value(margenAnyoAnterior),
      margenHaceDosAnyos: Value(margenHaceDosAnyos),
      porcentajeAbonos: Value(porcentajeAbonos),
      porcentajeGarantias: Value(porcentajeGarantias),
      centralCompras: Value(centralCompras),
      urlWeb: Value(urlWeb),
      divisaId: Value(divisaId),
      tarifaId: Value(tarifaId),
      tarifaDescripcion: Value(tarifaDescripcion),
      descuentoGeneralId: Value(descuentoGeneralId),
      descripcionDescuentoGeneral: Value(descripcionDescuentoGeneral),
      tipoCalculoPrecio: Value(tipoCalculoPrecio),
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
      clientePotencial: Value(clientePotencial),
      clienteEstadoPotencialId: Value(clienteEstadoPotencialId),
      clienteTipoPotencialId: Value(clienteTipoPotencialId),
      representante1Id: Value(representante1Id),
      representante1Nombre: Value(representante1Nombre),
      representante2Id: Value(representante2Id),
      representante2Nombre: Value(representante2Nombre),
      telefonoMovil: Value(telefonoMovil),
      telefonoFijo: Value(telefonoFijo),
      email: Value(email),
      sectorId: Value(sectorId),
      subsectorId: Value(subsectorId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }

  Money calculateRiesgoActual(
    double? riesgoPendienteCobroVencido,
    double? riesgoPendienteCobroNoVencido,
    double? riesgoPendienteServir,
    double? riesgoPendienteFacturar,
    String? divisaId,
  ) {
    var amount = 0.0;
    amount +=
        (riesgoPendienteCobroVencido ?? 0) +
        (riesgoPendienteCobroNoVencido ?? 0) +
        (riesgoPendienteServir ?? 0) +
        (riesgoPendienteFacturar ?? 0);
    return amount.toMoney(currencyId: divisaId);
  }

  Money calculateRiesgoExcedido(double? riesgoConcedido, String divisaId) {
    try {
      final riesgoActual = calculateRiesgoActual(
        riesgoPendienteCobroVencido,
        riesgoPendienteCobroNoVencido,
        riesgoPendienteServir,
        riesgoPendienteFacturar,
        divisaId,
      );

      final riesgoExcedidoFixed =
          Fixed.parse(riesgoConcedido?.toString() ?? '0') - riesgoActual.amount;

      return riesgoExcedidoFixed.isNegative
          ? Money.fromFixedWithCurrency(
            riesgoExcedidoFixed.abs,
            Currencies().find(divisaId)!,
          )
          : Money.parseWithCurrency('0', Currencies().find(divisaId)!);
    } catch (e) {
      rethrow;
    }
  }
}

@UseRowClass(ClienteDTO)
class ClienteTable extends Table {
  @override
  String get tableName => 'CLIENTES';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('CLIENTE_ID')();
  TextColumn get nombreCliente => text().named('NOMBRE')();
  TextColumn get nif => text().nullable().named('NIF')();
  TextColumn get nombreFiscal => text().named('NOMBRE_FISCAL')();
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
  RealColumn get latitudFiscal => real().named('LATITUD_FISCAL')();
  RealColumn get longitudFiscal => real().named('LONGITUD_FISCAL')();
  TextColumn get empresaId => text().named('EMPRESA_ID')();
  RealColumn get iva => real().named('IVA')();
  RealColumn get ventasAnyoActual => real().named('VENTAS_ANYO_ACTUAL')();
  RealColumn get ventasAnyoAnterior => real().named('VENTAS_ANYO_ANTERIOR')();
  RealColumn get ventasHaceDosAnyos => real().named('VENTAS_HACE_DOS_ANYOS')();
  RealColumn get margenAnyoActual => real().named('MARGEN_ANYO_ACTUAL')();
  RealColumn get margenAnyoAnterior => real().named('MARGEN_ANYO_ANTERIOR')();
  RealColumn get margenHaceDosAnyos => real().named('MARGEN_HACE_DOS_ANYOS')();
  RealColumn get porcentajeAbonos => real().named('PORCENTAJE_ABONOS')();
  RealColumn get porcentajeGarantias => real().named('PORCENTAJE_GARANTIAS')();
  TextColumn get centralCompras =>
      text().nullable().named('CENTRAL_COMPRAS_NOMBRE')();
  TextColumn get urlWeb => text().nullable().named('URL_WEB')();
  TextColumn get divisaId =>
      text().references(DivisaTable, #id).nullable().named('DIVISA_ID')();
  TextColumn get tarifaId => text().nullable().named('TARIFA_ID')();
  TextColumn get tarifaDescripcion =>
      text().nullable().named('TARIFA_DESCRIPCION')();
  TextColumn get descuentoGeneralId =>
      text().nullable().named('DESCUENTO_GENERAL_ID')();
  TextColumn get descripcionDescuentoGeneral =>
      text().nullable().named('DESCUENTO_GENERAL_DESCRIPCION')();
  TextColumn get tipoCalculoPrecio => text().named('TIPO_CALCULO_PRECIO')();
  TextColumn get plazoDeCobroId =>
      text()
          .references(PlazoDeCobroTable, #id)
          .nullable()
          .named('PLAZO_COBRO_ID')();
  TextColumn get metodoDeCobroId =>
      text()
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
  TextColumn get clientePotencial =>
      text().nullable().named('CLIENTE_POTENCIAL')();
  TextColumn get clienteEstadoPotencialId =>
      text().nullable().named('ESTADO_POTENCIAL_ID')();
  TextColumn get clienteTipoPotencialId =>
      text().nullable().named('TIPO_POTENCIAL_ID')();
  TextColumn get representante1Id =>
      text().nullable().named('REPRESENTANTE1_ID')();
  TextColumn get representante1Nombre =>
      text().nullable().named('REPRESENTANTE1_NOMBRE')();
  TextColumn get representante2Id =>
      text().nullable().named('REPRESENTANTE2_ID')();
  TextColumn get representante2Nombre =>
      text().nullable().named('REPRESENTANTE2_NOMBRE')();
  TextColumn get telefonoFijo => text().nullable().named('TELEFONO_FIJO')();
  TextColumn get telefonoMovil => text().nullable().named('TELEFONO_MOVIL')();
  TextColumn get email => text().nullable().named('E_MAIL')();
  TextColumn get sectorId => text().nullable().named('SECTOR_ID')();
  TextColumn get subsectorId => text().nullable().named('SUBSECTOR_ID')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
