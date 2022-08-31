import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/infrastructure/sales_order_repository.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/presentation/index/sales_order_list_tile.dart';

import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class SalesOrderListPage extends ConsumerWidget {
  const SalesOrderListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();

    final state = ref.watch(salesOrderListStreamProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        title: 'Sales Orders',
        searchTitle: 'Search Sales order...',
        onSubmitted: (searchText) => {print(searchText)},
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: state.when(
          loading: () => const ProgressIndicatorWidget(),
          error: (e, _) => ErrorMessageWidget(e.toString()),
          data: (salesOrderList) => (salesOrderList.isEmpty)
              ? Container()
              : ListView.builder(
                  shrinkWrap: true,
                  controller: scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: salesOrderList.length,
                  itemBuilder: (context, i) =>
                      SalesOrderListTile(salesOrder: salesOrderList[i]),
                ),
        ),
      ),
    );
  }
}
