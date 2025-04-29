import 'package:flutter/material.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/theme/app_sizes.dart';

import '../../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../domain/cliente.dart';

class ClienteListaTile extends StatelessWidget {
  const ClienteListaTile({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: listPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  '#${cliente.id} ${cliente.nombreCliente}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              if (cliente.clientePotencial ?? false) gapW12,
              if (cliente.clientePotencial ?? false)
                ChipContainer(
                  text: getClienteEstadoPotencialInLocalLanguage(
                    estadoPotencial: cliente.clienteEstadoPotencial,
                  ),
                  color: Theme.of(context).colorScheme.errorContainer,
                ),
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
