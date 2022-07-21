import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/sales_order/presentation/sales_order_list_controller.dart';

class SalesOrderListPage extends ConsumerWidget {
  const SalesOrderListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();

    final state = ref.watch(salesOrderStateNotifier);
    final isNextPageAvailable =
        ref.watch(salesOrderStateNotifier.notifier).isNextPageAvailable;

    scrollController.addListener(() async {
      if (scrollController.position.pixels >
          scrollController.position.maxScrollExtent -
              MediaQuery.of(context).size.height) {
        state.maybeMap(
            orElse: () {
              if (isNextPageAvailable) {
                ref
                    .read(salesOrderStateNotifier.notifier)
                    .getSalesOrderListPage();
              }
            },
            loadInProgress: null);
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Sales Order List')),
      body: state.when(
        initial: () => Container(),
        loadInProgress: () => const CircularProgressIndicator(),
        loadSuccess: (salesOrderList) => SingleChildScrollView(
          controller: scrollController,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: salesOrderList.length,
            itemBuilder: (context, i) => Text(salesOrderList[i].salesOrderId),
          ),
        ),
        loadFailure: (failure) => Center(child: Text(failure.message ?? '')),
      ),
    );
  }
}
