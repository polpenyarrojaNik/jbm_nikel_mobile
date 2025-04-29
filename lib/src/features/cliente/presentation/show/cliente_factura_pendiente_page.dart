import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../infrastructure/cliente_repository.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_pago_pendiente.dart';

@RoutePage()
class ClientePagoPendientePage extends ConsumerWidget {
  const ClientePagoPendientePage({
    super.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clientePendientePagoProvider(clienteId));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).cliente_show_clienteFacturasPendientes_titulo,
        ),
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
            data:
                (clientePagosPendientesList) =>
                    (clientePagosPendientesList.isNotEmpty)
                        ? Expanded(
                          child: ListView.separated(
                            itemCount: clientePagosPendientesList.length,
                            itemBuilder:
                                (context, i) => ClientePagoPendienteTile(
                                  clientePagoPendiente:
                                      clientePagosPendientesList[i],
                                ),
                            separatorBuilder: (context, i) => const Divider(),
                          ),
                        )
                        : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text(S.of(context).sinResultados)],
                        ),
          ),
        ],
      ),
    );
  }
}

class ClientePagoPendienteTile extends StatelessWidget {
  const ClientePagoPendienteTile({
    super.key,
    required this.clientePagoPendiente,
  });

  final ClientePagoPendiente clientePagoPendiente;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: listPadding,
        decoration: BoxDecoration(
          color:
              (clientePagoPendiente.vencidoJBM ?? false)
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
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    ),
                  ),
                const Spacer(),
                if (clientePagoPendiente.estadoCobroId != null)
                  Text(
                    getEstadoCobroFactura(
                      context: context,
                      estadoCobro: clientePagoPendiente.estadoCobroId!,
                    ),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
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
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                    ),
                  if (clientePagoPendiente.fechaFactura != null) gapH4,
                  if (clientePagoPendiente.fechaFactura != null)
                    Text(
                      '${S.of(context).cliente_show_clienteFacturasPendientes_fFactura} ${dateFormatter(clientePagoPendiente.fechaFactura!.toLocal().toIso8601String())}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  if (clientePagoPendiente.fechaExpiracionInicial != null)
                    gapH4,
                  if (clientePagoPendiente.fechaExpiracionInicial != null)
                    Text(
                      '${S.of(context).cliente_show_clienteFacturasPendientes_fvctoOriginal} ${dateFormatter(clientePagoPendiente.fechaExpiracionInicial!.toLocal().toIso8601String())}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                ],
              ),
            ),
            const VerticalDivider(),
            if (clientePagoPendiente.importe != null)
              SizedBox(
                width: 75,
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
    );
  }
}
