import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/infrastructure/sales_order_status_dto.dart';

import '../../../core/domain/country.dart';
import '../../../core/domain/divisa.dart';
import '../../../core/infrastructure/country_dto.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../domain/sales_order.dart';
import '../domain/sales_order_status.dart';

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
    @JsonKey(name: 'CLIENTE_ID') String? customerId,
    @JsonKey(name: 'DIRECCION_ID') String? addressId,
    @JsonKey(name: 'NOMBRE_CLIENTE') String? customerName,
    @JsonKey(name: 'DIRECCION_ENVIO1') String? shippingAddress1,
    @JsonKey(name: 'DIRECCION_ENVIO2') String? shippingAddress2,
    @JsonKey(name: 'CODIGO_POSTAL') String? zipCode,
    @JsonKey(name: 'POBLACION') String? city,
    @JsonKey(name: 'PROVINCIA') String? state,
    @JsonKey(name: 'PAIS_ID') String? countryId,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE') required double taxBase,
    @JsonKey(name: 'IMPORTE_IVA') required double ivaAmount,
    @JsonKey(name: 'TOTAL') required double total,
    @JsonKey(name: 'ESTADO_PEDIDO_ID') required int salesOrderStatusId,
    @JsonKey(name: 'OFERTA_SN') required String isOffer,
    @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
        required double promptPaymentDiscount,
    @JsonKey(name: 'IVA') required double iva,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _SalesOrderDTO;

  factory SalesOrderDTO.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderDTOFromJson(json);

  // factory SalesOrderDTO.fromDomain(SalesOrder _) {
  //   return SalesOrderDTO(
  //     companyId: _.companyId,
  //     salesOrderId: _.salesOrderId,
  //     salesOrderDate: _.salesOrderDate,
  //     salesType: _.salesType,
  //     customerName: _.customerName,
  //     customerId: _.customerId,
  //     shippingAddress1: _.shippingAddress1,
  //     shippingAddress2: _.shippingAddress2,
  //     zipCode: _.zipCode,
  //     city: _.city,
  //     state: _.state,
  //     countryId: _.countryId,
  //     divisaId: _.divisaId,
  //     taxBase: _.taxBase.amount.toDecimal().toDouble(),
  //     ivaAmount: _.ivaAmount.amount.toDecimal().toDouble(),
  //     total: _.total.amount.toDecimal().toDouble(),
  //     salesOrderStatusId: _.salesOrderStatusId,
  //     isOffer: (_.isOffer) ? 'S' : 'N',
  //     promptPaymentDiscount: _.promptPaymentDiscount,
  //     iva: _.iva,
  //     lastUpdated: _.lastUpdated,
  //     deleted: (_.deleted) ? 'S' : 'N',
  //   );
  // }

  SalesOrder toDomain(
      {required Country country,
      required Divisa divisa,
      required SalesOrderStatus salesOrderStatus}) {
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
        country: country,
        divisa: divisa,
        taxBase: taxBase.parseMoney(taxBase, divisaId),
        ivaAmount: ivaAmount.parseMoney(ivaAmount, divisaId),
        total: total.parseMoney(total, divisaId),
        salesOrderStatus: salesOrderStatus,
        isOffer: (isOffer == 'S') ? true : false,
        promptPaymentDiscount: promptPaymentDiscount,
        iva: iva,
        lastUpdated: lastUpdated,
        deleted: (deleted == 'S') ? true : false);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return SalesOrderTableCompanion(
      companyId: Value(companyId),
      salesOrderId: Value(salesOrderId),
      salesOrderDate: Value(salesOrderDate),
      salesType: Value(salesType),
      customerId: Value(customerId),
      addressId: Value(addressId),
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
      salesOrderStatusId: Value(salesOrderStatusId),
      isOffer: Value(isOffer),
      promptPaymentDiscount: Value(promptPaymentDiscount),
      iva: Value(iva),
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
  TextColumn get customerId =>
      text().nullable().withLength(max: 6).named('CLIENTE_ID')();
  TextColumn get customerName =>
      text().withLength(max: 100).nullable().named('NOMBRE_CLIENTE')();
  TextColumn get addressId => text().nullable().named('DIRECCION_ID')();
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
  TextColumn get countryId => text()
      .withLength(max: 3)
      .nullable()
      .references(CountryTable, #id)
      .named('PAIS_ID')();
  TextColumn get divisaId => text()
      .withLength(max: 2)
      .references(DivisaTable, #id)
      .named('DIVISA_ID')();
  RealColumn get taxBase =>
      real().withDefault(const Constant(0.0)).named('BASE_IMPONIBLE')();
  RealColumn get ivaAmount =>
      real().withDefault(const Constant(0.0)).named('IMPORTE_IVA')();
  RealColumn get total =>
      real().withDefault(const Constant(0.0)).named('TOTAL')();
  IntColumn get salesOrderStatusId => integer()
      .withDefault(const Constant(0))
      .references(SalesOrderStatusTable, #id)
      .named('ESTADO_PEDIDO_ID')();
  TextColumn get isOffer =>
      text().withDefault(const Constant('N')).named('OFERTA_SN')();
  RealColumn get promptPaymentDiscount =>
      real().withDefault(const Constant(0.0)).named('DESCUENTO_PRONTO_PAGO')();
  RealColumn get iva => real().withDefault(const Constant(0.0)).named('IVA')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey => {salesOrderId, companyId};

  @override
  String get tableName => 'PEDIDOS';
}
