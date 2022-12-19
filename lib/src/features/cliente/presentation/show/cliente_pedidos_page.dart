import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
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
      appBar: AppBar(
        title: Text(S.of(context).cliente_show_clientePedidos_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (clientePedidoVentaList) => (clientePedidoVentaList
                    .isNotEmpty)
                ? Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, i) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: PedidoVentaListaTile(
                          pedidoVenta: clientePedidoVentaList[i],
                        ),
                      ),
                      separatorBuilder: (context, i) => const Divider(),
                      itemCount: clientePedidoVentaList.length,
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S.of(context).sinResultados),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  void navigateToPedidoVentaDetalle(
      {required BuildContext context, String? pedidoVentaId}) {}
}
