import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/db/database.dart';
import 'package:jbm_nikel_mobile/src/core/shared/providers.dart';

final salesOrderLocalServiceProvider =
    Provider((ref) => SalesOrderListLocalService(ref.watch(dbProvider)));

class SalesOrderListLocalService {
  final AppDatabase database;

  SalesOrderListLocalService(this.database);

  Future<void> getSalesOrderLocal(
      {required int page, required int pageSize}) async {
    try {
      final salesOrderTableList =
          await database.getSalesOrder(page: page, pageSize: pageSize);
      for (var i = 0; i < salesOrderTableList.length; i++) {
        final salesOrderTable = salesOrderTableList[i];
        print(salesOrderTable);
      }
    } catch (e) {
      rethrow;
    }
  }
}
