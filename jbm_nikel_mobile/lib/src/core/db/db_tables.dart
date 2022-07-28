import 'package:drift/drift.dart';

import '../../sales_order/domain/sales_order.dart';

class LastSyncTable extends Table {
  TextColumn get lastSyncSalesOrder => text().named('LAST_SYNC_SALES_ORDER')();
}

class SalesOrderTable extends Table {
  TextColumn get companyId => text().withLength(max: 2).named('EMPRESA_ID')();
  TextColumn get salesOrderId =>
      text().withLength(max: 10).named('PEDIDO_ID')();
  TextColumn get salesOrderDate => text().named('FECHA_PEDIDO')();
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
  TextColumn get lastUpdated => text().nullable().named('LAST_UPDATED')();
  TextColumn get deleted => text()
      .withLength(max: 1)
      .withDefault(const Constant('N'))
      .named('DELETED')();
  DateTimeColumn get lastSync => dateTime()
      .nullable()
      .withDefault(currentDateAndTime)
      .named('LAST_SYNC')();

  @override
  Set<Column> get primaryKey => {salesOrderId, companyId};
}
