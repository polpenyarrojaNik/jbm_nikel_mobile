import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order.dart';

import '../../../core/domain/fresh.dart';
import '../../../core/infrastructure/log.dart';

final salesOrderRepositoryProvider = Provider.autoDispose<SalesOrderRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final salesOrderListStreamProvider =
    StreamProvider.autoDispose<List<SalesOrder>>((ref) {
  final salesOrderRepository = ref.watch(salesOrderRepositoryProvider);
  return salesOrderRepository.watchSalesOrderList();
});

class SalesOrderRepository {
  AppDatabase db;
  Dio dio;

  SalesOrderRepository(this.db, this.dio);

  Stream<List<SalesOrder>> watchSalesOrderList() {
    return db
        .getSalesOrderDTO()
        .map((rows) => rows.map((e) => e.toDomain()).toList());
  }
}
