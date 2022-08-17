import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/exceptions.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order.dart';

import '../../../core/domain/fresh.dart';
import '../../../core/domain/jbm_mobile_failure.dart';
import '../../../core/infrastructure/log.dart';

final salesOrderRepositoryProvider = Provider.autoDispose<SalesOrderRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

class SalesOrderRepository {
  AppDatabase db;
  Dio dio;

  SalesOrderRepository(this.db, this.dio);

  Future<Either<JbmMobileFailure, Fresh<List<SalesOrder>>>>
      getSalesOrderListPage({required int page, required int pageSize}) async {
    try {
      final salesOrderDTOLocalItems =
          await db.getSalesOrder(page: page, pageSize: pageSize);

      final salesOrderCount = await db.getSalesOrderCount();

      print(salesOrderCount);

      return right(Fresh.yes(
          salesOrderDTOLocalItems.map((e) => e.toDomain()).toList(),
          isNextPageAvailable: page < (salesOrderCount / pageSize)));
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
