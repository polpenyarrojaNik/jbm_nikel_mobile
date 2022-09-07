import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_estado_dto.dart';

import '../../../core/domain/pais.dart';
import '../../../core/domain/divisa.dart';
import '../../../core/infrastructure/pais_dto.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../domain/pedido_venta.dart';
import '../domain/pedido_venta_estado.dart';

part 'pedido_venta_dto.freezed.dart';
part 'pedido_venta_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class PedidoVentaDTO
    with _$PedidoVentaDTO
    implements Insertable<PedidoVentaDTO> {
  const PedidoVentaDTO._();
  const factory PedidoVentaDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PEDIDO_ID') required String pedidoVentaId,
    @JsonKey(name: 'FECHA_PEDIDO') required DateTime pedidoVentaDate,
    @JsonKey(name: 'TIPO_VENTA') required String tipoVenta,
    @JsonKey(name: 'CLIENTE_ID') String? clienteId,
    @JsonKey(name: 'DIRECCION_ID') String? direccionId,
    @JsonKey(name: 'NOMBRE_CLIENTE') String? nombreCliente,
    @JsonKey(name: 'DIRECCION_ENVIO1') String? direccionEntrga1,
    @JsonKey(name: 'DIRECCION_ENVIO2') String? direccionEntrga2,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE') required double baseImponible,
    @JsonKey(name: 'IMPORTE_IVA') required double importeIva,
    @JsonKey(name: 'TOTAL') required double total,
    @JsonKey(name: 'ESTADO_PEDIDO_ID') required double pedidoVentaEstadoId,
    @JsonKey(name: 'OFERTA_SN') required String oferta,
    @JsonKey(name: 'DESCUENTO_PRONTO_PAGO') required double descuentoProntoPago,
    @JsonKey(name: 'IVA') required double iva,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _PedidoVentaDTO;

  factory PedidoVentaDTO.fromJson(Map<String, dynamic> json) =>
      _$PedidoVentaDTOFromJson(json);

  // factory PedidoVentaDTO.fromDomain(PedidoVenta _) {
  //   return PedidoVentaDTO(
  //     empresaId: _.empresaId,
  //     pedidoVentaId: _.pedidoVentaId,
  //     pedidoVentaDate: _.pedidoVentaDate,
  //     tipoVenta: _.tipoVenta,
  //     nombreCliente: _.nombreCliente,
  //     clienteId: _.clienteId,
  //     direccionEntrga1: _.direccionEntrga1,
  //     direccionEntrga2: _.direccionEntrga2,
  //     codigoPostal: _.codigoPostal,
  //     poblacion: _.poblacion,
  //     state: _.state,
  //     paisId: _.paisId,
  //     divisaId: _.divisaId,
  //     baseImponible: _.baseImponible.importe.toDecimal().toDouble(),
  //     importeIva: _.importeIva.importe.toDecimal().toDouble(),
  //     total: _.total.importe.toDecimal().toDouble(),
  //     pedidoVentaEstadoId: _.pedidoVentaEstadoId,
  //     oferta: (_.oferta) ? 'S' : 'N',
  //     descuentoProntoPago: _.descuentoProntoPago,
  //     iva: _.iva,
  //     lastUpdated: _.lastUpdated,
  //     deleted: (_.deleted) ? 'S' : 'N',
  //   );
  // }

  PedidoVenta toDomain(
      {required Pais? pais,
      required Divisa divisa,
      required PedidoVentaEstado pedidoVentaEstado}) {
    return PedidoVenta(
        empresaId: empresaId,
        pedidoVentaId: pedidoVentaId,
        pedidoVentaDate: pedidoVentaDate,
        tipoVenta: tipoVenta,
        clienteId: clienteId,
        nombreCliente: nombreCliente,
        direccionEntrga1: direccionEntrga1,
        direccionEntrga2: direccionEntrga2,
        codigoPostal: codigoPostal,
        poblacion: poblacion,
        provincia: provincia,
        pais: pais,
        divisa: divisa,
        baseImponible: baseImponible.parseMoney(baseImponible, divisaId),
        importeIva: importeIva.parseMoney(importeIva, divisaId),
        total: total.parseMoney(total, divisaId),
        pedidoVentaEstado: pedidoVentaEstado,
        oferta: (oferta == 'S') ? true : false,
        descuentoProntoPago: descuentoProntoPago,
        iva: iva,
        lastUpdated: lastUpdated,
        deleted: (deleted == 'S') ? true : false);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PedidoVentaTableCompanion(
      empresaId: Value(empresaId),
      pedidoVentaId: Value(pedidoVentaId),
      pedidoVentaDate: Value(pedidoVentaDate),
      tipoVenta: Value(tipoVenta),
      clienteId: Value(clienteId),
      direccionId: Value(direccionId),
      nombreCliente: Value(nombreCliente),
      direccionEntrga1: Value(direccionEntrga1),
      direccionEntrga2: Value(direccionEntrga2),
      codigoPostal: Value(codigoPostal),
      poblacion: Value(poblacion),
      provincia: Value(provincia),
      paisId: Value(paisId),
      divisaId: Value(divisaId),
      baseImponible: Value(baseImponible),
      importeIva: Value(importeIva),
      total: Value(total),
      pedidoVentaEstadoId: Value(pedidoVentaEstadoId),
      oferta: Value(oferta),
      descuentoProntoPago: Value(descuentoProntoPago),
      iva: Value(iva),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PedidoVentaDTO)
class PedidoVentaTable extends Table {
  TextColumn get empresaId => text().withLength(max: 2).named('EMPRESA_ID')();
  TextColumn get pedidoVentaId =>
      text().withLength(max: 10).named('PEDIDO_ID')();
  DateTimeColumn get pedidoVentaDate => dateTime().named('FECHA_PEDIDO')();
  TextColumn get tipoVenta => text().withLength(max: 1).named('TIPO_VENTA')();
  TextColumn get clienteId =>
      text().nullable().withLength(max: 6).named('CLIENTE_ID')();
  TextColumn get nombreCliente =>
      text().withLength(max: 100).nullable().named('NOMRE_CLIENTE')();
  TextColumn get direccionId => text().nullable().named('DIRECCION_ID')();
  TextColumn get direccionEntrga1 =>
      text().withLength(max: 100).nullable().named('DIRECCION_ENVIO1')();
  TextColumn get direccionEntrga2 =>
      text().withLength(max: 100).nullable().named('DIRECCION_ENVIO2')();
  TextColumn get codigoPostal =>
      text().withLength(max: 10).nullable().named('CODIGO_POSTAL')();
  TextColumn get poblacion =>
      text().withLength(max: 60).nullable().named('POBLACION')();
  TextColumn get provincia =>
      text().withLength(max: 50).nullable().named('PROVINCIA')();
  TextColumn get paisId => text()
      .withLength(max: 3)
      .nullable()
      .references(PaisTable, #id)
      .named('PAIS_ID')();
  TextColumn get divisaId => text()
      .withLength(max: 2)
      .references(DivisaTable, #id)
      .named('DIVISA_ID')();
  RealColumn get baseImponible =>
      real().withDefault(const Constant(0.0)).named('BASE_IMPONIBLE')();
  RealColumn get importeIva =>
      real().withDefault(const Constant(0.0)).named('IMPORTE_IVA')();
  RealColumn get total =>
      real().withDefault(const Constant(0.0)).named('TOTAL')();
  RealColumn get pedidoVentaEstadoId => real()
      .withDefault(const Constant(0))
      .references(PedidoVentaEstadoTable, #id)
      .named('ESTADO_PEDIDO_ID')();
  TextColumn get oferta =>
      text().withDefault(const Constant('N')).named('OFERTA_SN')();
  RealColumn get descuentoProntoPago =>
      real().withDefault(const Constant(0.0)).named('DESCUENTO_PRONTO_PAGO')();
  RealColumn get iva => real().withDefault(const Constant(0.0)).named('IVA')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey => {pedidoVentaId, empresaId};

  @override
  String get tableName => 'PEDIDOS';
}
