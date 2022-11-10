import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../pedido_venta/presentation/index/pedido_venta_lista_tile.dart';
import '../../infrastructure/cliente_repository.dart';

class ClientePedidosPage extends ConsumerWidget {
  const ClientePedidosPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clientePedidosProvider(clienteId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clientePedidos_titulo,
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (clientePedidoVentaList) =>
                (clientePedidoVentaList.isNotEmpty)
                    ? SliverToBoxAdapter(
                        child: ListView.separated(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(16),
                          itemBuilder: (context, i) => PedidoVentaListaTile(
                              pedidoVenta: clientePedidoVentaList[i],
                              navigatedFromCliente: true),
                          separatorBuilder: (context, i) => const Divider(),
                          itemCount: clientePedidoVentaList.length,
                        ),
                      )
                    : SliverFillRemaining(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(S.of(context).sinResultados),
                          ],
                        ),
                      ),
          ),
        ],
      ),
    );
  }
}
