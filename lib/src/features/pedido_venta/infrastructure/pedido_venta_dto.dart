import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/divisa.dart';
import '../../../core/domain/pais.dart';
import '../../../core/helpers/extension.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../../../core/infrastructure/pais_dto.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../domain/pedido_venta.dart';
import '../domain/pedido_venta_estado.dart';
import 'pedido_venta_estado_dto.dart';

part 'pedido_venta_dto.freezed.dart';
part 'pedido_venta_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
abstract class PedidoVentaDTO
    with _$PedidoVentaDTO
    implements Insertable<PedidoVentaDTO> {
  const PedidoVentaDTO._();
  const factory PedidoVentaDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PEDIDO_ID') required String pedidoVentaId,
    @JsonKey(name: 'FECHA_PEDIDO') required DateTime pedidoVentaDate,
    @JsonKey(name: 'TIPO_VENTA') required String tipoVenta,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'DIRECCION_ID') String? direccionId,
    @JsonKey(name: 'NOMBRE_CLIENTE') required String nombreCliente,
    @JsonKey(name: 'DIRECCION_ENVIO1') String? direccionEntrga1,
    @JsonKey(name: 'DIRECCION_ENVIO2') String? direccionEntrga2,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE') required double baseImponible,
    @JsonKey(name: 'TOTAL_LINEAS') required double totalLineas,
    @JsonKey(name: 'IMPORTE_PORTES') required double importePortes,
    @JsonKey(name: 'IMPORTE_IVA') required double importeIva,
    @JsonKey(name: 'TOTAL') required double total,
    @JsonKey(name: 'ESTADO_PEDIDO_ID') required int pedidoVentaEstadoId,
    @JsonKey(name: 'OFERTA_SN') required String oferta,
    @JsonKey(name: 'OFERTA_FECHA_HASTA') DateTime? ofertaFechaHasta,
    @JsonKey(name: 'PEDIDO_APP_ID') String? pedidoVentaAppId,
    @JsonKey(name: 'IVA') required double iva,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _PedidoVentaDTO;

  factory PedidoVentaDTO.fromJson(Map<String, dynamic> json) =>
      _$PedidoVentaDTOFromJson(json);

  PedidoVenta toDomain({
    required Pais? pais,
    required Divisa divisa,
    required PedidoVentaEstado pedidoVentaEstado,
  }) {
    return PedidoVenta(
      empresaId: empresaId,
      pedidoVentaId: pedidoVentaId,
      pedidoVentaDate: pedidoVentaDate,
      tipoVenta: tipoVenta,
      clienteId: clienteId,
      nombreCliente: nombreCliente,
      direccionId: direccionId,
      direccionEntrga1: direccionEntrga1,
      direccionEntrga2: direccionEntrga2,
      codigoPostal: codigoPostal,
      poblacion: poblacion,
      provincia: provincia,
      pais: pais,
      divisa: divisa,
      baseImponible: baseImponible.toMoney(currencyId: divisaId),
      importeIva: importeIva.toMoney(currencyId: divisaId),
      importePortes: importePortes.toMoney(currencyId: divisaId),
      totalLineas: totalLineas.toMoney(currencyId: divisaId),
      total: total.toMoney(currencyId: divisaId),
      pedidoVentaEstado: pedidoVentaEstado,
      oferta: (oferta == 'S'),
      ofertaFechaHasta: ofertaFechaHasta,
      iva: iva,
      pedidoVentaAppId: pedidoVentaAppId,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S'),
      enviada: true,
      tratada: true,
      borrador: false,
    );
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
      importePortes: Value(importePortes),
      totalLineas: Value(totalLineas),
      importeIva: Value(importeIva),
      total: Value(total),
      pedidoVentaEstadoId: Value(pedidoVentaEstadoId),
      pedidoVentaAppId: Value(pedidoVentaAppId),
      oferta: Value(oferta),
      ofertaFechaHasta: Value(ofertaFechaHasta),
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
  TextColumn get clienteId => text().withLength(max: 6).named('CLIENTE_ID')();
  TextColumn get nombreCliente =>
      text().withLength(max: 100).named('NOMRE_CLIENTE')();
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
  RealColumn get totalLineas =>
      real().withDefault(const Constant(0.0)).named('TOTAL_LINEAS')();
  RealColumn get importePortes =>
      real().withDefault(const Constant(0.0)).named('IMPORTE_PORTES')();
  RealColumn get importeIva =>
      real().withDefault(const Constant(0.0)).named('IMPORTE_IVA')();
  RealColumn get total =>
      real().withDefault(const Constant(0.0)).named('TOTAL')();
  IntColumn get pedidoVentaEstadoId => integer()
      .withDefault(const Constant(0))
      .references(PedidoVentaEstadoTable, #id)
      .named('ESTADO_PEDIDO_ID')();
  TextColumn get oferta =>
      text().withDefault(const Constant('N')).named('OFERTA_SN')();
  DateTimeColumn get ofertaFechaHasta =>
      dateTime().nullable().named('OFERTA_FECHA_HASTA')();
  TextColumn get pedidoVentaAppId => text().nullable().named('PEDIDO_APP_ID')();
  RealColumn get iva => real().withDefault(const Constant(0.0)).named('IVA')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey => {pedidoVentaId, empresaId};

  @override
  String get tableName => 'PEDIDOS';
}
