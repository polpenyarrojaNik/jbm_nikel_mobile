import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_pago_pendiente.dart';

class ClientePagoPendientePage extends ConsumerWidget {
  const ClientePagoPendientePage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clientePendientePagoProvider(clienteId));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteFacturasPendientes_titulo,
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
            data: (clientePagosPendientesList) => (clientePagosPendientesList
                    .isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: clientePagosPendientesList.length,
                        (context, i) => ClientePagoPendienteTile(
                          clientePagoPendiente: clientePagosPendientesList[i],
                        ),
                      ),
                    ))
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

class ClientePagoPendienteTile extends StatelessWidget {
  const ClientePagoPendienteTile(
      {super.key, required this.clientePagoPendiente});

  final ClientePagoPendiente clientePagoPendiente;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            decoration: BoxDecoration(
              color: (clientePagoPendiente.vencidoJBM ?? false)
                  ? Theme.of(context).colorScheme.errorContainer
                  : null,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (clientePagoPendiente.facutaId != null)
                      Text(
                        clientePagoPendiente.facutaId!,
                      ),
                    const Spacer(),
                    if (clientePagoPendiente.estadoCobroId != null)
                      Text(
                          getEstadoCobroFactura(
                              context: context,
                              estadoCobro: clientePagoPendiente.estadoCobroId!),
                          style: Theme.of(context).textTheme.caption),
                  ],
                ),
                const VerticalDivider(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (clientePagoPendiente.fechaExpiracion != null)
                        Text(
                          '${S.of(context).cliente_show_clienteFacturasPendientes_fvcto} ${dateFormatter(clientePagoPendiente.fechaExpiracion!.toLocal().toIso8601String())}',
                        ),
                      if (clientePagoPendiente.fechaFactura != null) gapH4,
                      if (clientePagoPendiente.fechaFactura != null)
                        Text(
                            '${S.of(context).cliente_show_clienteFacturasPendientes_fFactura} ${dateFormatter(clientePagoPendiente.fechaFactura!.toLocal().toIso8601String())}',
                            style: Theme.of(context).textTheme.caption),
                      if (clientePagoPendiente.fechaExpiracionInicial != null)
                        gapH4,
                      if (clientePagoPendiente.fechaExpiracionInicial != null)
                        Text(
                          '${S.of(context).cliente_show_clienteFacturasPendientes_fvctoOriginal} ${dateFormatter(clientePagoPendiente.fechaExpiracionInicial!.toLocal().toIso8601String())}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                    ],
                  ),
                ),
                const VerticalDivider(),
                if (clientePagoPendiente.importe != null)
                  SizedBox(
                    width: 70,
                    child: Text(
                      formatPrecios(
                        precio: clientePagoPendiente.importe!,
                        tipoPrecio: null,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
