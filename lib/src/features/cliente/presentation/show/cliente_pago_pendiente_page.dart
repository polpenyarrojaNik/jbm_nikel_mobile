import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
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
            title: S.of(context).cliente_show_clientePendientePago_titulo,
            entityId: clienteId,
            subtitle: nombreCliente,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (clientepagosPendientesList) => (clientepagosPendientesList
                    .isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: clientepagosPendientesList.length,
                        (context, i) => ClientePagoPendienteTile(
                          clientePagoPendiente: clientepagosPendientesList[i],
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
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(clientePagoPendiente.efectoId,
                      style: Theme.of(context).textTheme.caption),
                  const Spacer(),
                  Text(clientePagoPendiente.estadoCobroId ?? ''),
                ],
              ),
            ),
            Flexible(
              child: Container(
                height: 100,
                padding: const EdgeInsets.all(6.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          clientePagoPendiente.facutaId ?? '',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        Text(
                          (clientePagoPendiente.importe != null)
                              ? numberFormatDecimal(
                                  clientePagoPendiente.importe!)
                              : '',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                    if (clientePagoPendiente.fechaFactura != null)
                      Text(
                          dateFormatter(clientePagoPendiente.fechaFactura!
                              .toLocal()
                              .toIso8601String()),
                          style: Theme.of(context).textTheme.caption),
                    const Spacer(),
                    Row(
                      children: [
                        Icon(Icons.credit_card,
                            size: 12,
                            color: Theme.of(context).textTheme.caption?.color),
                        Text(
                          clientePagoPendiente.metodoDeCobro?.descripcion ?? '',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                                S
                                    .of(context)
                                    .cliente_show_clientePagosPendientes_vencidoJBM,
                                style: Theme.of(context).textTheme.caption),
                            Checkbox(
                                visualDensity: const VisualDensity(
                                    vertical: -4, horizontal: -4),
                                value: clientePagoPendiente.vencidoJBM!,
                                onChanged: null),
                          ],
                        ),
                        if (clientePagoPendiente.fechaExpiracionInicial != null)
                          Text(
                            '${S.of(context).cliente_show_clientePagosPendientes_vencInicial} ${dateFormatter(clientePagoPendiente.fechaExpiracionInicial!.toLocal().toIso8601String())}',
                            style: Theme.of(context).textTheme.caption,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
