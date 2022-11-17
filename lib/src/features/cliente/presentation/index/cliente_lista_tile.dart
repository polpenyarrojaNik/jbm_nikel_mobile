import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/chip_container.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';

import '../../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../domain/cliente.dart';

class ClienteListaTile extends StatelessWidget {
  const ClienteListaTile({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  '#${cliente.id} ${cliente.nombreCliente}',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              if (cliente.clientePotencial ?? false) gapW12,
              if (cliente.clientePotencial ?? false)
                ChipContainer(
                  text: getClienteEstadoPotencialInLocalLanguage(
                      estadoPotencial: cliente.clienteEstadoPotencial),
                  color: Theme.of(context).colorScheme.errorContainer,
                )
            ],
          ),
          AddressTextWidget(
            codigoPostal: cliente.codigoPostalFiscal,
            poblacion: cliente.poblacionFiscal,
            provincia: cliente.provinciaFiscal,
            pais: cliente.paisFiscal,
          )
        ],
      ),
    );
  }
}
