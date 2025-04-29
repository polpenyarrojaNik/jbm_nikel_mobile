import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_direccion_imp.dart';

class ClienteDireccionImpListTile extends StatelessWidget {
  const ClienteDireccionImpListTile({
    super.key,
    required this.clienteDireccionImp,
  });

  final ClienteDireccionImp clienteDireccionImp;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: listPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateFormatter(
                  clienteDireccionImp.fecha.toLocal().toIso8601String(),
                  allDay: true,
                ),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                clienteDireccionImp.usuarioId,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          gapH8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child:
                    (clienteDireccionImp.direccionId != null)
                        ? Text(
                          (clienteDireccionImp.direccionId!.length > 3)
                              ? 'PRV'
                              : clienteDireccionImp.direccionId!,
                        )
                        : null,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (clienteDireccionImp.nombre != null)
                      Text(
                        clienteDireccionImp.nombre!,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    if (clienteDireccionImp.nombre != null) gapH4,
                    if (clienteDireccionImp.direccion1 != null)
                      Text(
                        formatCustomerAddress(
                          clienteDireccionImp.direccion1,
                          clienteDireccionImp.codigoPostal,
                          clienteDireccionImp.poblacion,
                          clienteDireccionImp.provincia,
                          clienteDireccionImp.pais,
                        ),
                        style: Theme.of(context).textTheme.bodySmall!,
                      ),
                    if (clienteDireccionImp.borrar)
                      Text(
                        S
                            .of(context)
                            .cliente_show_clienteDireccion_clienteDireccionImpListTile_direccionEliminada,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
