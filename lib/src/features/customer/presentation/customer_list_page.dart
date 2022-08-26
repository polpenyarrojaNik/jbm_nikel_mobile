import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/customer/infrastructure/customer_repository.dart';

import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import 'customer_list_tile.dart';

class CustomerListPage extends ConsumerWidget {
  const CustomerListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerListStreamProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            title: Text('Customer'),
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              hasScrollBody: false,
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (customerList) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => CustomerListTile(
                  customer: customerList[index],
                ),
                childCount: customerList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
