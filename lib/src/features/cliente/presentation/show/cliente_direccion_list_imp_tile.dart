import 'package:flutter/material.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_direccion_imp.dart';

class ClienteDireccionImpListTile extends StatelessWidget {
  const ClienteDireccionImpListTile(
      {super.key, required this.clienteDireccionImp});

  final ClienteDireccionImp clienteDireccionImp;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: listPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 50,
            child: (clienteDireccionImp.direccionId != null)
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
