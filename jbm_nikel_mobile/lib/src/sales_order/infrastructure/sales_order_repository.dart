import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/sales_order/domain/sales_order.dart';
import 'package:jbm_nikel_mobile/src/sales_order/infrastructure/sales_order_local_service.dart';

import '../../core/domain/fresh.dart';
import '../../core/domain/jbm_mobile_failure.dart';
import '../../core/infrastructure/exceptions.dart';
import '../../core/shared/log.dart';

final salesOrderRepositoryProvider = Provider((ref) =>
    SalesOrderListRepository(ref.watch(salesOrderLocalServiceProvider)));

class SalesOrderListRepository {
  final SalesOrderListLocalService _localService;

  SalesOrderListRepository(this._localService);

  Future<Either<JbmMobileFailure, Fresh<List<SalesOrder>>>>
      getSalesOrderListPage({required int page}) async {
    final List<SalesOrder> salesOrder = [];
    try {
      final salesOrderLocalItems =
          await _localService.getSalesOrderLocal(page: page, pageSize: 50);
      return right(Fresh.yes(
        salesOrder,
      ));
    } on RestApiException catch (e) {
      log.severe(e.message, e, e.stackTrace);
      return left(JbmMobileFailure.api(e.errorCode, e.message));
    } on DBException catch (e) {
      log.severe(e.toString(), e, e.stackTrace);
      return left(JbmMobileFailure.db(e.message));
    } catch (e, stackTrace) {
      log.severe(e.toString(), e, stackTrace);
      return left(JbmMobileFailure.local(e.toString()));
    }
  }
}
