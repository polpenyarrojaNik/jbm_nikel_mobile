import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/db/database.dart';
import 'package:jbm_nikel_mobile/src/core/shared/providers.dart';
import 'package:jbm_nikel_mobile/src/sales_order/infrastructure/sales_order_dto.dart';

final salesOrderLocalServiceProvider =
    Provider((ref) => SalesOrderListLocalService(ref.watch(dbProvider)));

class SalesOrderListLocalService {
  final AppDatabase database;

  SalesOrderListLocalService(this.database);

  Future<List<SalesOrderDTO>> getSalesOrder(
      {required int page, required int pageSize}) async {
    final List<SalesOrderDTO> salesOrderList = [];
    try {
      final salesOrderTableList =
          await database.getSalesOrder(page: page, pageSize: pageSize);
      for (var i = 0; i < salesOrderTableList.length; i++) {
        final salesOrderTable = salesOrderTableList[i];
        final salesOrder = SalesOrderDTO.fromDB(salesOrderTable.toJson());
        salesOrderList.add(salesOrder);
      }
      return salesOrderList;
    } catch (e) {
      rethrow;
    }
  }

  Future<int> getSalesOrderCount() async {
    try {
      return await database.getSalesOrderCount();
    } catch (e) {
      rethrow;
    }
  }
}
