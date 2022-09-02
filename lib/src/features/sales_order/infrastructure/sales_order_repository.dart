import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order.dart';

import '../../auth/infrastructure/auth_repository.dart';
import '../domain/sales_order_line.dart';

final salesOrderRepositoryProvider = Provider.autoDispose<SalesOrderRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final salesOrderListStreamProvider =
    StreamProvider.autoDispose<List<SalesOrder>>((ref) {
  final salesOrderRepository = ref.watch(salesOrderRepositoryProvider);

  return salesOrderRepository.watchSalesOrderList();
});

final salesOrderLastSyncProvider = FutureProvider.autoDispose<DateTime>((ref) {
  final salesOrderRepository = ref.watch(salesOrderRepositoryProvider);
  return salesOrderRepository.getLastSyncSalesOrder();
});

final salesOrderLineLastSyncProvider =
    FutureProvider.autoDispose<DateTime>((ref) {
  final salesOrderRepository = ref.watch(salesOrderRepositoryProvider);
  return salesOrderRepository.getLastSyncSalesOrderLine();
});

final salesOrderProvider =
    FutureProvider.autoDispose.family<SalesOrder, String>((ref, salesOrderId) {
  final salesOrderRepository = ref.watch(salesOrderRepositoryProvider);
  return salesOrderRepository.getSalesOrderById(salesOrderId: salesOrderId);
});

final salesOrderLineProvider = FutureProvider.autoDispose
    .family<List<SalesOrderLine>, String>((ref, salesOrderId) {
  final salesOrderRepository = ref.watch(salesOrderRepositoryProvider);
  return salesOrderRepository.getSalesOrderLineById(salesOrderId: salesOrderId);
});

class SalesOrderRepository {
  AppDatabase db;
  Dio dio;
  AuthRepository authRepository;

  SalesOrderRepository(this.db, this.dio, this.authRepository);

  Stream<List<SalesOrder>> watchSalesOrderList({String? searchText}) async* {
    final user = await authRepository.getSignedInUser();
    yield* db.getSalesOrderList(
        searchText: searchText?.toUpperCase(), userId: user!.id);
  }

  Future<SalesOrder> getSalesOrderById({required String salesOrderId}) async {
    return await db.getSalesOrderById(salesOrderId: salesOrderId);
  }

  Future<List<SalesOrderLine>> getSalesOrderLineById(
      {required String salesOrderId}) async {
    return await db.getSalesOrderLineById(salesOrderId: salesOrderId);
  }

  Future<DateTime> getLastSyncSalesOrder() async {
    final date = await db.getLastSyncSalesOrderDate();
    return DateTime.parse(date!);
  }

  Future<DateTime> getLastSyncSalesOrderLine() async {
    final date = await db.getLastSyncSalesOrderLineDate();
    return DateTime.parse(date!);
  }
}
