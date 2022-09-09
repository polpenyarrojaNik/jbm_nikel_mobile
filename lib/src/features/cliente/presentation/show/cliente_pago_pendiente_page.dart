import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_pago_pendiente.dart';

class ClientePagoPendientePage extends ConsumerWidget {
  const ClientePagoPendientePage({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clientePendientePagoProvider(clienteId));
    final stateUltimaSync = ref.watch(clientePendientePagoUltimaSyncProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Pending Payments')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            stateUltimaSync.when(
                data: (ultimaSyncDate) =>
                    UltimaSyncDateWidget(ultimaSyncDate: ultimaSyncDate),
                error: (e, _) => ErrorMessageWidget(e.toString()),
                loading: () => const ProgressIndicatorWidget()),
            Expanded(
              child: state.when(
                  data: (_) => (_.isEmpty)
                      ? const Center(child: Text('No Results'))
                      : ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, i) => ClientePagoPendienteTile(
                              clientePagoPendiente: _[i]),
                          itemCount: _.length),
                  error: (e, __) => ErrorMessageWidget(e.toString()),
                  loading: () => const ProgressIndicatorWidget()),
            ),
          ],
        ),
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
                              ? numberFormat(clientePagoPendiente.importe!)
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
                            Text('Vencido JMB',
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
                            'Venc. Inicial ${dateFormatter(clientePagoPendiente.fechaExpiracionInicial!.toLocal().toIso8601String())}',
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
