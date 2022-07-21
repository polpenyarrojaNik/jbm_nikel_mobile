import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/app.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/router/app_router.gr.dart';
import 'package:jbm_nikel_mobile/src/sales_order/presentation/sales_order_list_controller.dart';
import 'package:jbm_nikel_mobile/src/sync/presentation/sync_page_controller.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('JBM Mobile'),
        ),
        body: Center(
          child: Row(
            children: [
              FloatingActionButton(
                  heroTag: null,
                  onPressed: () => navigateToSyncPage(),
                  child: const Text('Sync Page')),
              const SizedBox(width: 10),
              FloatingActionButton(
                  heroTag: null,
                  onPressed: () => navigateToSalesOrderPage(),
                  child: const Text('Sales orders')),
            ],
          ),
        ));
  }

  void navigateToSyncPage() {
    ref.read(syncPageStateNotifier.notifier).syncValuesInLocalDB();
    appRouter.push(const SyncRoute());
  }

  void navigateToSalesOrderPage() {
    ref.read(salesOrderStateNotifier.notifier).getSalesOrderListPage();
    appRouter.push(const SalesOrderListRoute());
  }
}
