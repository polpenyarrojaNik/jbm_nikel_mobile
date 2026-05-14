import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente.dart';
import '../common_widgets/cliente_status_chip.dart';

class ClienteListaTile extends StatelessWidget {
  const ClienteListaTile({
    super.key,
    required this.cliente,
    required this.onTap,
  });

  final Cliente cliente;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDisabled = onTap == null;
    final hasStatusDecoration = cliente.bloqueoOper || cliente.obsoleto;

    return Semantics(
      enabled: !isDisabled,
      button: onTap != null,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: hasStatusDecoration
                ? _statusColor(context).withValues(alpha: 0.16)
                : null,
            border: hasStatusDecoration
                ? Border(
                    left: BorderSide(
                      color: _statusBorderColor(context),
                      width: 4,
                    ),
                  )
                : null,
          ),
          child: Padding(
            padding: kPaddingList,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (cliente.obsoleto) ...[
                  ClienteStatusChip(
                    icon: Icons.history,
                    text: S.of(context).cliente_index_clienteAntiguo,
                    backgroundColor: Colors.blueGrey.withValues(alpha: 0.16),
                    foregroundColor: colorScheme.onSurface,
                  ),
                  const Gap(4),
                ],
                if (!cliente.obsoleto && cliente.bloqueoOper) ...[
                  ClienteStatusChip(
                    icon: Icons.lock_outline,
                    text: S.of(context).cliente_index_operacionesBloqueadas,
                    backgroundColor: colorScheme.errorContainer,
                    foregroundColor: colorScheme.onErrorContainer,
                  ),
                  const Gap(4),
                ],

                if (cliente.clientePotencial ?? false) ...[
                  ChipContainer(
                    text: getClienteEstadoPotencialInLocalLanguage(
                      estadoPotencial: cliente.clienteEstadoPotencial,
                    ),
                    color: colorScheme.errorContainer,
                  ),
                  const Gap(4),
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        '#${cliente.id} ${cliente.nombreCliente}',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    if (cliente.clientePotencial != null &&
                        !cliente.clientePotencial!) ...[
                      const Gap(8),
                      getTendenciaClienteIcon(cliente.tendenciaVentas),
                    ],
                  ],
                ),

                if (!isSameName(cliente))
                  Text(
                    cliente.nombreFiscal,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                AddressTextWidget(
                  codigoPostal: cliente.codigoPostalPredeterminada,
                  poblacion: cliente.poblacionPredeterminada,
                  provincia: cliente.provinciaPredeterminada,
                  pais: cliente.paisPredeterminada,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _statusColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (cliente.bloqueoOper && !cliente.obsoleto) {
      return colorScheme.errorContainer;
    }
    return Colors.blueGrey;
  }

  Color _statusBorderColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (cliente.bloqueoOper && !cliente.obsoleto) {
      return colorScheme.error;
    }
    return Colors.blueGrey;
  }
}
