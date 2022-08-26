import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order.dart';

final salesOrderRepositoryProvider = Provider.autoDispose<SalesOrderRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final salesOrderListStreamProvider =
    StreamProvider.autoDispose<List<SalesOrder>>((ref) {
  final salesOrderRepository = ref.watch(salesOrderRepositoryProvider);
  return salesOrderRepository.watchSalesOrderList();
});

final salesOrderProvider =
    FutureProvider.autoDispose.family<SalesOrder, String>((ref, salesOrderId) {
  final salesOrderRepository = ref.watch(salesOrderRepositoryProvider);
  return salesOrderRepository.getSalesOrderById(salesOrderId: salesOrderId);
});

class SalesOrderRepository {
  AppDatabase db;
  Dio dio;

  SalesOrderRepository(this.db, this.dio);

  Stream<List<SalesOrder>> watchSalesOrderList({String? searchText}) {
    return db.getSalesOrderList(searchText: searchText?.toUpperCase());
  }

  Future<SalesOrder> getSalesOrderById({required String salesOrderId}) async {
    return db.getSalesOrderById(salesOrderId: salesOrderId);
  }
}
