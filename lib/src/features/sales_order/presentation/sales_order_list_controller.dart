import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order.dart';

import '../../../core/domain/jbm_mobile_failure.dart';
import '../infrastructure/sales_order_repository.dart';

part 'sales_order_list_controller.freezed.dart';

final salesOrderStateNotifier = StateNotifierProvider.autoDispose<
    SalesOrderListNotifier, SalesOrderListState>(
  (ref) => SalesOrderListNotifier(
    ref.watch(salesOrderRepositoryProvider),
  ),
);

@freezed
class SalesOrderListState with _$SalesOrderListState {
  const SalesOrderListState._();
  const factory SalesOrderListState.initial(List<SalesOrder> salesOrderList) =
      _Initial;
  const factory SalesOrderListState.loadInProgress(
      List<SalesOrder> salesOrderList) = _LoadInProgress;
  const factory SalesOrderListState.loadSuccess(
      List<SalesOrder> salesOrderList, bool isNextPageAvailable) = _SyncSuccess;
  const factory SalesOrderListState.loadFailure(
    List<SalesOrder> salesOrderList,
    JbmMobileFailure failure,
  ) = _LoadFailure;
}

class SalesOrderListNotifier extends StateNotifier<SalesOrderListState> {
  final SalesOrderRepository salesOrderListRepository;
  int _page = 1;
  bool isNextPageAvailable = false;
  SalesOrderListNotifier(this.salesOrderListRepository)
      : super(const SalesOrderListState.initial([])) {
    getSalesOrderListPage(page: 1);
  }

  @protected
  void resetState() {
    _page = 1;
    state = const SalesOrderListState.initial([]);
  }

  Future<void> getSalesOrderListPage({int? page}) async {
    state = SalesOrderListState.loadInProgress(state.salesOrderList);

    if (page != null) {
      _page = page;
    }

    await Future.delayed(const Duration(seconds: 1));

    final salesOrderListFold = await salesOrderListRepository
        .getSalesOrderListPage(page: _page, pageSize: 20);

    salesOrderListFold.fold(
        (l) => state = SalesOrderListState.loadFailure(state.salesOrderList, l),
        (r) {
      _page += 1;
      isNextPageAvailable = r.isNextPageAvailable ?? false;

      state = SalesOrderListState.loadSuccess(
          [...state.salesOrderList, ...r.entity],
          r.isNextPageAvailable ?? false);
    });
  }

  Future<void> getNextSalesOrderListPage() async {
    print('getNextSalesOrderListPage()');
    state = SalesOrderListState.loadInProgress(state.salesOrderList);

    await Future.delayed(const Duration(seconds: 1));

    final salesOrderListFold = await salesOrderListRepository
        .getSalesOrderListPage(page: _page, pageSize: 20);

    salesOrderListFold.fold(
        (l) => state = SalesOrderListState.loadFailure(state.salesOrderList, l),
        (r) {
      _page += 1;
      isNextPageAvailable = r.isNextPageAvailable ?? false;
      return state = SalesOrderListState.loadSuccess(
          [...state.salesOrderList, ...r.entity],
          r.isNextPageAvailable ?? false);
    });
  }
}
