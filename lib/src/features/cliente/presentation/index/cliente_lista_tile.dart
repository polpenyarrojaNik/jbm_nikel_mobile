import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente.dart';

class ClienteListaTile extends StatelessWidget {
  const ClienteListaTile({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: kPaddingList,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (cliente.clientePotencial ?? false) ...[
            ChipContainer(
              text: getClienteEstadoPotencialInLocalLanguage(
                estadoPotencial: cliente.clienteEstadoPotencial,
              ),
              color: Theme.of(context).colorScheme.errorContainer,
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
    );
  }
}
