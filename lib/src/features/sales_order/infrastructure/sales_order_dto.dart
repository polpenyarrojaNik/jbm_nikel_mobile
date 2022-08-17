import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/extension.dart';

import '../domain/sales_order.dart';

part 'sales_order_dto.freezed.dart';
part 'sales_order_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class SalesOrderDTO with _$SalesOrderDTO implements Insertable<SalesOrderDTO> {
  const SalesOrderDTO._();
  const factory SalesOrderDTO({
    @JsonKey(name: 'EMPRESA_ID') required String companyId,
    @JsonKey(name: 'PEDIDO_ID') required String salesOrderId,
    @JsonKey(name: 'FECHA_PEDIDO') required DateTime salesOrderDate,
    @JsonKey(name: 'TIPO_VENTA') required String salesType,
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'NOMBRE_CLIENTE') required String? customerName,
    @JsonKey(name: 'DIRECCION_ENVIO1') required String? shippingAddress1,
    @JsonKey(name: 'DIRECCION_ENVIO2') required String? shippingAddress2,
    @JsonKey(name: 'CODIGO_POSTAL') required String? zipCode,
    @JsonKey(name: 'POBLACION') required String? city,
    @JsonKey(name: 'PROVINCIA') required String? state,
    @JsonKey(name: 'PAIS_ID') required String? countryId,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE') required double taxBase,
    @JsonKey(name: 'IMPORTE_IVA') required double ivaAmount,
    @JsonKey(name: 'TOTAL') required double total,
    @JsonKey(name: 'LAST_UPDATED', defaultValue: null)
        required DateTime? lastUpdated,
    @JsonKey(name: 'DELETED', fromJson: SalesOrderDTO._boolFromString, toJson: SalesOrderDTO._boolToString)
        required bool deleted,
  }) = _SalesOrderDTO;

  factory SalesOrderDTO.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderDTOFromJson(json);

  factory SalesOrderDTO.fromDomain(SalesOrder _) {
    return SalesOrderDTO(
      companyId: _.companyId,
      salesOrderId: _.salesOrderId,
      salesOrderDate: _.salesOrderDate,
      salesType: _.salesType,
      customerName: _.customerName,
      customerId: _.customerId,
      shippingAddress1: _.shippingAddress1,
      shippingAddress2: _.shippingAddress2,
      zipCode: _.zipCode,
      city: _.city,
      state: _.state,
      countryId: _.countryId,
      divisaId: _.divisaId,
      taxBase: _.taxBase.amount.toDecimal().toDouble(),
      ivaAmount: _.ivaAmount.amount.toDecimal().toDouble(),
      total: _.total.amount.toDecimal().toDouble(),
      lastUpdated: _.lastUpdated,
      deleted: _.deleted,
    );
  }

  factory SalesOrderDTO.fromDB(Map<String, dynamic> json) {
    return SalesOrderDTO(
        companyId: json['companyId'],
        salesOrderId: json['salesOrderId'],
        salesOrderDate: DateTime.parse(json['salesOrderDate']),
        salesType: json['salesType'],
        customerId: json['customerId'],
        customerName: json['customerName'],
        shippingAddress1: json['shippingAddress1'],
        shippingAddress2: json['shippingAddress2'],
        zipCode: json['zipCode'],
        city: json['city'],
        state: json['state'],
        countryId: json['countryId'],
        divisaId: json['divisaId'],
        taxBase: json['taxBase'],
        ivaAmount: json['ivaAmount'],
        total: json['total'],
        lastUpdated: DateTime.parse(json['lastUpdated']),
        deleted: (json['deleted'] == 'S') ? true : false);
  }

  SalesOrder toDomain() {
    return SalesOrder(
        companyId: companyId,
        salesOrderId: salesOrderId,
        salesOrderDate: salesOrderDate,
        salesType: salesType,
        customerId: customerId,
        customerName: customerName,
        shippingAddress1: shippingAddress1,
        shippingAddress2: shippingAddress2,
        zipCode: zipCode,
        city: city,
        state: state,
        countryId: countryId,
        divisaId: divisaId,
        taxBase: taxBase.parseMoney(taxBase, divisaId),
        ivaAmount: ivaAmount.parseMoney(ivaAmount, divisaId),
        total: total.parseMoney(total, divisaId),
        lastUpdated: lastUpdated,
        deleted: deleted);
  }

  static bool _boolFromString(String value) => value == 'S';

  static String _boolToString(bool value) => (value) ? 'S' : 'N';

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return SalesOrderTableCompanion(
      companyId: Value(companyId),
      salesOrderId: Value(salesOrderId),
      salesOrderDate: Value(salesOrderDate),
      salesType: Value(salesType),
      customerId: Value(customerId),
      customerName: Value(customerName),
      shippingAddress1: Value(shippingAddress1),
      shippingAddress2: Value(shippingAddress2),
      zipCode: Value(zipCode),
      city: Value(city),
      state: Value(state),
      countryId: Value(countryId),
      divisaId: Value(divisaId),
      taxBase: Value(taxBase),
      ivaAmount: Value(ivaAmount),
      total: Value(total),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(SalesOrderDTO)
class SalesOrderTable extends Table {
  TextColumn get companyId => text().withLength(max: 2).named('EMPRESA_ID')();
  TextColumn get salesOrderId =>
      text().withLength(max: 10).named('PEDIDO_ID')();
  DateTimeColumn get salesOrderDate => dateTime().named('FECHA_PEDIDO')();
  TextColumn get salesType => text().withLength(max: 1).named('TIPO_VENTA')();
  TextColumn get customerId => text().withLength(max: 6).named('CLIENTE_ID')();
  TextColumn get customerName =>
      text().withLength(max: 100).nullable().named('NOMBRE_CLIENTE')();
  TextColumn get shippingAddress1 =>
      text().withLength(max: 100).nullable().named('DIRECCION_ENVIO1')();
  TextColumn get shippingAddress2 =>
      text().withLength(max: 100).nullable().named('DIRECCION_ENVIO2')();
  TextColumn get zipCode =>
      text().withLength(max: 10).nullable().named('CODIGO_POSTAL')();
  TextColumn get city =>
      text().withLength(max: 60).nullable().named('POBLACION')();
  TextColumn get state =>
      text().withLength(max: 50).nullable().named('PROVINCIA')();
  TextColumn get countryId =>
      text().withLength(max: 3).nullable().named('PAIS_ID')();
  TextColumn get divisaId => text().withLength(max: 2).named('DIVISA_ID')();
  RealColumn get taxBase =>
      real().withDefault(const Constant(0.0)).named('BASE_IMPONIBLE')();
  RealColumn get ivaAmount =>
      real().withDefault(const Constant(0.0)).named('IMPORTE_IVA')();
  RealColumn get total =>
      real().withDefault(const Constant(0.0)).named('TOTAL')();
  DateTimeColumn get lastUpdated =>
      dateTime().nullable().named('LAST_UPDATED')();
  BoolColumn get deleted =>
      boolean().withDefault(const Constant(false)).named('DELETED')();
  DateTimeColumn get lastSync => dateTime()
      .nullable()
      .withDefault(currentDateAndTime)
      .named('LAST_SYNC')();

  @override
  Set<Column> get primaryKey => {salesOrderId, companyId};
}
