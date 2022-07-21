import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/sales_order/domain/sales_order.dart';

import '../../core/domain/jbm_mobile_failure.dart';
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
  const factory SalesOrderListState.initial() = _Initial;
  const factory SalesOrderListState.loadInProgress() = _LoadInProgress;
  const factory SalesOrderListState.loadSuccess(
      List<SalesOrder> salesOrderList) = _SyncSuccess;
  const factory SalesOrderListState.loadFailure(
    JbmMobileFailure failure,
  ) = _LoadFailure;
}

class SalesOrderListNotifier extends StateNotifier<SalesOrderListState> {
  final SalesOrderListRepository salesOrderListRepository;
  SalesOrderListNotifier(this.salesOrderListRepository)
      : super(const SalesOrderListState.initial());

  bool isNextPageAvailable = true;
  int _page = 1;

  @protected
  void resetState() {
    _page = 1;
    isNextPageAvailable = true;
    state = const SalesOrderListState.initial();
  }

  Future<void> getSalesOrderListPage({int? page = 1}) async {
    state = const SalesOrderListState.loadInProgress();

    if (page != null) {
      _page = page;
      isNextPageAvailable = true;
    }

    final salesOrderListFold =
        await salesOrderListRepository.getSalesOrderListPage(page: _page);

    state = salesOrderListFold.fold((l) {
      isNextPageAvailable = false;

      return SalesOrderListState.loadFailure(l);
    }, (r) {
      isNextPageAvailable = r.isNextPageAvailable ?? false;
      _page += 1;
      return SalesOrderListState.loadSuccess(r.entity);
    });
  }
}
