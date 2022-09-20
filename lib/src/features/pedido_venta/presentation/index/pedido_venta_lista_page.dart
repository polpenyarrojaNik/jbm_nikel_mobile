import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_search_state.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_venta_lista_tile.dart';

import '../../../../core/helpers/debouncer.dart';
import '../../../../core/infrastructure/sync_service.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class PedidoVentaListPage extends ConsumerStatefulWidget {
  const PedidoVentaListPage({super.key});

  @override
  ConsumerState<PedidoVentaListPage> createState() =>
      _PedidoVentaListPageState();
}

class _PedidoVentaListPageState extends ConsumerState<PedidoVentaListPage> {
  final _scrollController = ScrollController();
  final _debouncer = Debouncer(milliseconds: 500);

  int page = 1;
  bool canLoadNextPage = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
    _scrollController.addListener(() {
      final metrics = _scrollController.position;
      final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;

      if (canLoadNextPage && metrics.pixels >= limit) {
        canLoadNextPage = false;
        page++;
        ref.read(pedidosPaginationQueryStateProvider.notifier).state = page;
      }
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_dismissOnScreenKeyboard);
    super.dispose();
  }

  // When the search text field gets the focus, the keyboard appears on mobile.
  // This method is used to dismiss the keyboard when the user scrolls.
  void _dismissOnScreenKeyboard() {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      pedidosSearchResultsProvider,
      (_, state) {
        canLoadNextPage = true;
        state.showAlertDialogOnError(context);
      },
    );

    final state = ref.watch(pedidosSearchResultsProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        title: 'Pedidos de venta',
        searchTitle: 'Search Pedidos...',
        onChanged: (searchText) => _debouncer.run(
          () {
            ref.read(pedidosSearchQueryStateProvider.notifier).state =
                searchText;
            ref.read(pedidosPaginationQueryStateProvider.notifier).state = 1;
          },
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => syncSalesOrderDB(ref),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: state.when(
            loading: () => const ProgressIndicatorWidget(),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            data: (pedidoVentaList) => (pedidoVentaList.isEmpty)
                ? const Center(child: Text('Sin resultados'))
                : ListView.separated(
                    separatorBuilder: (context, i) => const Divider(),
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    controller: _scrollController,
                    itemCount: pedidoVentaList.length,
                    itemBuilder: (context, i) =>
                        PedidoVentaListaTile(pedidoVenta: pedidoVentaList[i]),
                  ),
          ),
        ),
      ),
    );
  }

  Future<void> syncSalesOrderDB(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllPedidosRelacionados();

    ref.read(pedidosSearchQueryStateProvider.notifier).state = '';
    ref.read(pedidosPaginationQueryStateProvider.notifier).state = 1;
  }
}
