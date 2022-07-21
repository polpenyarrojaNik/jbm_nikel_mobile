import 'package:drift/drift.dart';

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
  TextColumn get taxBase =>
      text().withDefault(const Constant('0')).named('BASE_IMPONIBLE')();
  TextColumn get ivaAmount =>
      text().withDefault(const Constant('0')).named('IMPORTE_IVA')();
  TextColumn get total =>
      text().withDefault(const Constant('0')).named('TOTAL')();
  DateTimeColumn get lastUpdated =>
      dateTime().nullable().named('LAST_UPDATED')();
  Column get deleted => text()
      .withLength(max: 1)
      .withDefault(const Constant('N'))
      .named('DELETED')();

  @override
  Set<Column> get primaryKey => {salesOrderId, companyId};
}
