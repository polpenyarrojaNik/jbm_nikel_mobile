import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/infrastructure/sales_order_repository.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/presentation/index/sales_order_list_tile.dart';

import '../../../../core/exceptions/app_exception.dart';
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
      appBar: const CustomSearchAppBar(
          title: 'Sales Orders', searchTitle: 'Search Sales order...'),
      body: state.maybeWhen(
        orElse: () => false,
        data: (salesOrderList) => salesOrderList.isEmpty,
      )
          ? Container()
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                controller: scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: state.when(
                  loading: () => 1,
                  data: (_) => _.length,
                  error: (_, __) => 1,
                ),
                itemBuilder: (context, i) => state.when(
                  error: (_, __) => Text(
                      (_ is AppException) ? _.details.message : _.toString()),
                  loading: () => const ProgressIndicatorWidget(),
                  data: (_) => SalesOrderListTile(salesOrder: _[i]),
                ),
              ),
            ),
    );
  }
}
