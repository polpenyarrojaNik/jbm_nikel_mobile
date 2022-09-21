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
            title: S.of(context).cliente_show_clientePagosPendientes_titulo,
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
                SizedBox(
                  width: 90,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        clientePagoPendiente.efectoId,
                      ),
                      if (clientePagoPendiente.fechaFactura != null)
                        Text(
                            dateFormatter(clientePagoPendiente.fechaFactura!
                                .toLocal()
                                .toIso8601String()),
                            style: Theme.of(context).textTheme.caption),
                      const Spacer(),
                      if (clientePagoPendiente.estadoCobroId != null)
                        Text(clientePagoPendiente.estadoCobroId!),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (clientePagoPendiente.facutaId != null)
                          Text(
                            clientePagoPendiente.facutaId!,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        if (clientePagoPendiente.metodoDeCobro != null)
                          Row(
                            children: [
                              Icon(Icons.credit_card,
                                  size: 12,
                                  color: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.color),
                              gapW4,
                              Text(
                                clientePagoPendiente.metodoDeCobro!.descripcion,
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        const Spacer(),
                        if (clientePagoPendiente.fechaExpiracionInicial != null)
                          Text(
                            '${S.of(context).cliente_show_clientePagosPendientes_vencInicial} ${dateFormatter(clientePagoPendiente.fechaExpiracionInicial!.toLocal().toIso8601String())}',
                            style: Theme.of(context).textTheme.caption,
                          ),
                      ],
                    ),
                  ),
                ),
                if (clientePagoPendiente.importe != null)
                  Text(
                    formatPrecios(
                        precio: clientePagoPendiente.importe!,
                        tipoPrecio: null),
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
