import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../core/helpers/formatters.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  '#${cliente.id} ${cliente.nombreCliente}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              if (cliente.clientePotencial ?? false) const Gap(12),
              if (cliente.clientePotencial ?? false)
                ChipContainer(
                  text: getClienteEstadoPotencialInLocalLanguage(
                    estadoPotencial: cliente.clienteEstadoPotencial,
                  ),
                  color: Theme.of(context).colorScheme.errorContainer,
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
              const Gap(8),
              Icon(
                _getTendenciaIconData(cliente.tendenciaVentas),
                size: 20,
                color: _getTendenciaColor(cliente.tendenciaVentas),
              ),
            ],
          ),
        ],
      ),
    );
  }

  IconData _getTendenciaIconData(Tendencia tendencia) {
    switch (tendencia) {
      case Tendencia.up:
        return MdiIcons.arrowUpCircleOutline;
      case Tendencia.down:
        return MdiIcons.arrowDownCircleOutline;
      case Tendencia.equal:
        return MdiIcons.equal;
    }
  }

  Color _getTendenciaColor(Tendencia tendencia) {
    switch (tendencia) {
      case Tendencia.up:
        return Colors.green;
      case Tendencia.down:
        return Colors.red;
      case Tendencia.equal:
        return Colors.grey;
    }
  }
}
