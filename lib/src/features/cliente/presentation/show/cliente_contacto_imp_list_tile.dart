import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/cliente_contacto_imp.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/theme/app_sizes.dart';

class ClienteContactoImpListTile extends ConsumerWidget {
  const ClienteContactoImpListTile({
    super.key,
    required this.clienteContactoImp,
  });

  final ClienteContactoImp clienteContactoImp;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: listPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dateFormatter(
                        clienteContactoImp.fecha.toLocal().toIso8601String(),
                        allDay: true,
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      clienteContactoImp.usuarioId,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                gapH4,
                if (clienteContactoImp.nombre != null)
                  Text(
                    clienteContactoImp.getName(
                      clienteContactoImp.nombre,
                      clienteContactoImp.apellido1,
                      clienteContactoImp.apellido2,
                    )!,
                  ),
                if (clienteContactoImp.email != null)
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Theme.of(context).textTheme.bodySmall?.color,
                        size: 14,
                      ),
                      gapW4,
                      Flexible(
                        child: Text(
                          clienteContactoImp.email!,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).textTheme.bodySmall?.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                if (clienteContactoImp.telefono1 != null)
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Theme.of(context).textTheme.bodySmall?.color,
                        size: 14,
                      ),
                      gapW4,
                      Flexible(
                        child: Text(
                          clienteContactoImp.telefono1!,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).textTheme.bodySmall?.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                if (clienteContactoImp.telefono2 != null)
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Theme.of(context).textTheme.bodySmall?.color,
                        size: 14,
                      ),
                      gapW4,
                      Text(
                        clienteContactoImp.telefono2!,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).textTheme.bodySmall?.color,
                        ),
                      ),
                    ],
                  ),
                if (clienteContactoImp.borrar)
                  Text(
                    S
                        .of(context)
                        .cliente_show_clienteContacto_clienteContactoImpListTile_contactoEliminado,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
