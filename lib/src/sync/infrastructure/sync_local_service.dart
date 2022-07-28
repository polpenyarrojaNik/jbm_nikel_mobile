import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/db/database.dart';
import 'package:jbm_nikel_mobile/src/core/shared/providers.dart';

import '../../core/db/database.dart';

final syncLocalServiceProvider =
    Provider((ref) => SyncLocalService(ref.watch(dbProvider)));

class SyncLocalService {
  final AppDatabase database;

  SyncLocalService(this.database);

  Future<void> upsertSalesOrder(
      List<Map<String, dynamic>> salesOrderList) async {
    try {
      for (var i = 0; i < salesOrderList.length; i++) {
        final salesOrderJson = salesOrderList[i];

        final entity = SalesOrderTableCompanion(
          companyId: Value(salesOrderJson['EMPRESA_ID']),
          salesOrderId: Value(salesOrderJson['PEDIDO_ID']),
          salesOrderDate: Value(salesOrderJson['FECHA_PEDIDO']),
          salesType: Value(salesOrderJson['TIPO_VENTA']),
          customerId: Value(salesOrderJson['CLIENTE_ID']),
          customerName: Value(salesOrderJson['NOMBRE_CLIENTE']),
          shippingAddress1: Value(salesOrderJson['DIRECCION_ENVIO1']),
          shippingAddress2: Value(salesOrderJson['DIRECCION_ENVIO2']),
          zipCode: Value(salesOrderJson['CODIGO_POSTAL']),
          city: Value(salesOrderJson['POBLACION']),
          state: Value(salesOrderJson['PROVINCIA']),
          countryId: Value(salesOrderJson['PAIS_ID']),
          divisaId: Value(salesOrderJson['DIVISA_ID']),
          taxBase: Value((salesOrderJson['BASE_IMPONIBLE'] is double)
              ? salesOrderJson['BASE_IMPONIBLE']
              : salesOrderJson['BASE_IMPONIBLE'].toDouble()),
          ivaAmount: Value((salesOrderJson['IMPORTE_IVA'] is double)
              ? salesOrderJson['IMPORTE_IVA']
              : salesOrderJson['IMPORTE_IVA'].toDouble()),
          total: Value((salesOrderJson['TOTAL'] is double)
              ? salesOrderJson['TOTAL']
              : salesOrderJson['TOTAL'].toDouble()),
          lastUpdated: Value(salesOrderJson['LAST_UPDATED']),
          deleted: Value(salesOrderJson['DELETED']),
          // lastSync: Value(salesOrderJson['LAST_SYNC']),
        );
        await database.upsertSalesOrder(salesOrder: entity);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<int> addLastSyncSalesOrder({required String lastSyncDate}) async {
    try {
      return await database.addLastSyncSalesOrder(
          entity:
              LastSyncTableCompanion(lastSyncSalesOrder: Value(lastSyncDate)));
    } catch (e) {
      rethrow;
    }
  }

  Future<String?> getLastSyncSalesOrderDate() async {
    try {
      final lastSyncDateSalesOrder = await database.getLastSyncSalesOrderDate();

      return lastSyncDateSalesOrder?.lastSyncSalesOrder;
    } catch (e) {
      rethrow;
    }
  }
}
