import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/customer/infrastructure/customer_repository.dart';

import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

import 'customer_list_tile.dart';

class CustomerListPage extends ConsumerWidget {
  const CustomerListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();

    final state = ref.watch(customerListStreamProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        title: 'Customer',
        searchTitle: 'Search Customer...',
        onSubmitted: (searchText) => {print(searchText)},
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: state.when(
          loading: () => const ProgressIndicatorWidget(),
          error: (e, _) => ErrorMessageWidget(e.toString()),
          data: (customerList) => (customerList.isEmpty)
              ? Container()
              : ListView.builder(
                  shrinkWrap: true,
                  controller: scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: customerList.length,
                  itemBuilder: (context, i) =>
                      CustomerListTile(customer: customerList[i]),
                ),
        ),
      ),
    );
  }
}
