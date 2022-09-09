import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_venta_lista_tile.dart';

import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../infrastructure/pedido_venta_repository.dart';

class PedidoVentaListPage extends ConsumerWidget {
  const PedidoVentaListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();

    final state = ref.watch(pedidoVentaListaStreamProvider);

    final stateUltimaSync = ref.watch(pedidoVentaUltimaSyncProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        title: 'Ventas Orders',
        searchTitle: 'Search Ventas order...',
        onChanged: (searchText) => {print(searchText)},
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            stateUltimaSync.when(
              data: (ultimaSyncDate) =>
                  UltimaSyncDateWidget(ultimaSyncDate: ultimaSyncDate),
              error: (e, _) => ErrorMessageWidget(e.toString()),
              loading: () => const ProgressIndicatorWidget(),
            ),
            Expanded(
              child: state.when(
                loading: () => const ProgressIndicatorWidget(),
                error: (e, _) => ErrorMessageWidget(e.toString()),
                data: (pedidoVentaList) => (pedidoVentaList.isEmpty)
                    ? Container()
                    : ListView.builder(
                        shrinkWrap: true,
                        controller: scrollController,
                        itemCount: pedidoVentaList.length,
                        itemBuilder: (context, i) => PedidoVentaListaTile(
                            pedidoVenta: pedidoVentaList[i]),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
