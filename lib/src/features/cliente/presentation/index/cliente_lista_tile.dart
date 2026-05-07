import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente.dart';

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

    return Semantics(
      enabled: cliente.bloqueoOper && onTap == null,
      button: onTap != null,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: cliente.bloqueoOper
                ? colorScheme.errorContainer.withValues(alpha: 0.16)
                : null,
            border: cliente.bloqueoOper
                ? Border(left: BorderSide(color: colorScheme.error, width: 4))
                : null,
          ),
          child: Padding(
            padding: kPaddingList,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (cliente.bloqueoOper) ...[
                  _BlockedOperationsChip(
                    text: S.of(context).cliente_index_operacionesBloqueadas,
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
}

class _BlockedOperationsChip extends StatelessWidget {
  const _BlockedOperationsChip({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.lock_outline,
              size: 14,
              color: colorScheme.onErrorContainer,
            ),
            const Gap(4),
            Text(
              text,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: colorScheme.onErrorContainer,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
