import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/sales_order/presentation/failure_sales_order_tile.dart';
import 'package:jbm_nikel_mobile/src/sales_order/presentation/sales_order_list_controller.dart';
import 'package:jbm_nikel_mobile/src/sales_order/presentation/sales_order_list_tile.dart';

import 'loading_sales_order_tile.dart';

class SalesOrderListPage extends ConsumerWidget {
  const SalesOrderListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();

    final state = ref.watch(salesOrderStateNotifier);

    scrollController.addListener(() async {
      if (scrollController.position.pixels >
          scrollController.position.maxScrollExtent -
              MediaQuery.of(context).size.height) {
        state.maybeMap(
            orElse: () {},
            loadSuccess: (_) {
              if (_.isNextPageAvailable) {
                ref
                    .read(salesOrderStateNotifier.notifier)
                    .getNextSalesOrderListPage();
              }
            });
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Sales Order List')),
      body: state.maybeWhen(
        orElse: () => false,
        loadSuccess: (salesOrderList, __) => salesOrderList.isEmpty,
      )
          ? Container()
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  controller: scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: state.when(
                    initial: (_) => null,
                    loadInProgress: (_) => _.length,
                    loadSuccess: (_, __) => _.length,
                    loadFailure: (_, __) => _.length,
                  ),
                  itemBuilder: (context, i) => state.when(
                      initial: (_) =>
                          SalesOrderListTile(salesOrder: _[i], i: i),
                      loadInProgress: (_) {
                        if (i < _.length) {
                          return SalesOrderListTile(salesOrder: _[i], i: i);
                        } else {
                          return const LoadingSalesOrderTile();
                        }
                      },
                      loadSuccess: (_, __) =>
                          SalesOrderListTile(salesOrder: _[i], i: i),
                      loadFailure: (_, __) => FailureSalesOrderTile(
                            failure: __,
                          ))),
            ),
    );
  }
}
