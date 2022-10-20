import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_search_state.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_venta_lista_tile.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/infrastructure/sync_service.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/sin_resultados_widget.dart';
import '../../infrastructure/pedido_venta_repository.dart';

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

    final stateLasySyncDate = ref.watch(pedidoVentaLastSyncDateProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        isSearchingFirst: false,
        title: S.of(context).pedido_index_titulo,
        searchTitle: S.of(context).pedido_index_buscarPedidos,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            stateLasySyncDate.when(
                data: (fechaUltimaSync) =>
                    UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                error: (_, __) => Container(),
                loading: () => const ProgressIndicatorWidget()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  top: 16.0,
                  bottom: 16,
                  right: 16,
                ),
                child: state.when(
                  loading: () => const ProgressIndicatorWidget(),
                  error: (e, _) => ErrorMessageWidget(e.toString()),
                  data: (pedidoVentaList) => (pedidoVentaList.isEmpty)
                      ? const SinResultadosWidget()
                      : ListView.separated(
                          controller: _scrollController,
                          separatorBuilder: (context, i) => const Divider(),
                          physics: const AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: pedidoVentaList.length,
                          itemBuilder: (context, i) => PedidoVentaListaTile(
                              pedidoVenta: pedidoVentaList[i]),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToCreatePedido(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> syncSalesOrderDB(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllPedidosRelacionados();
    ref.refresh(pedidoVentaLastSyncDateProvider);

    ref.invalidate(pedidosSearchResultsProvider);
  }

  void navigateToCreatePedido(BuildContext context) {
    context.router.push(
      PedidoVentaEditRoute(id: null),
    );
  }
}
