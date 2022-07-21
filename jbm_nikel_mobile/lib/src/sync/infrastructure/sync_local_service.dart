import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/db/database.dart';
import 'package:jbm_nikel_mobile/src/core/shared/providers.dart';
import 'package:jbm_nikel_mobile/src/sales_order/infrastructure/sales_order_dto.dart';

import '../../core/db/database.dart';

final syncLocalServiceProvider =
    Provider((ref) => SyncLocalService(ref.watch(dbProvider)));

class SyncLocalService {
  final AppDatabase database;

  SyncLocalService(this.database);

  Future<void> upsertSalesOrder(List<SalesOrderDTO> salesOrderList) async {
    try {
      for (var i = 0; i < salesOrderList.length; i++) {
        final salesOrderJson = salesOrderList[i].toJson();

        final entity = SalesOrderTableCompanion(
          companyId: Value(salesOrderJson['EMPRESA_ID']),
          salesOrderId: Value(salesOrderJson['PEDIDO_ID']),
          salesOrderDate: Value(salesOrderJson['FECHA_PEDIDO']),
          salesType: Value(salesOrderJson['TIPO_VENTA']),
          customerName: Value(salesOrderJson['CLIENTE_ID']),
          customerId: Value(salesOrderJson['NOMBRE_CLIENTE']),
          shippingAddress1: Value(salesOrderJson['DIRECCION_ENVIO1']),
          shippingAddress2: Value(salesOrderJson['DIRECCION_ENVIO2']),
          zipCode: Value(salesOrderJson['CODIGO_POSTAL']),
          city: Value(salesOrderJson['POBLACION']),
          state: Value(salesOrderJson['PROVINCIA']),
          countryId: Value(salesOrderJson['PAIS_ID']),
          divisaId: Value(salesOrderJson['DIVISA_ID']),
          taxBase: Value(salesOrderJson['BASE_IMPONIBLE']),
          ivaAmount: Value(salesOrderJson['IMPORTE_IVA']),
          total: Value(salesOrderJson['TOTAL']),
          lastUpdated: Value(salesOrderJson['LAST_UPDATED']),
          deleted: Value(salesOrderJson['DELETED']),
        );

        database.upsertSalesOrder(salesOrder: entity);
      }
    } catch (e) {
      rethrow;
    }
  }
}
