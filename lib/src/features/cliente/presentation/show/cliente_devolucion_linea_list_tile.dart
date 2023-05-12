import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/features/devoluciones/domain/devolucion_linea.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';

class ClienteDevolucionLineaListTile extends StatelessWidget {
  const ClienteDevolucionLineaListTile(
      {super.key, required this.devolucionLinea});

  final DevolucionLinea devolucionLinea;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    devolucionLinea.devolucionId,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          devolucionLinea.articuloId,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Row(
                          children: [
                            Text(
                                '${numberFormatCantidades(devolucionLinea.cantidadDevolucion)} ${S.of(context).unidad}',
                                style: Theme.of(context).textTheme.titleSmall),
                          ],
                        ),
                      ]),
                  Text(
                    devolucionLinea.articuloDescription,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    '${S.of(context).cliente_show_clienteDevolucion_cantidadServida}: ${numberFormatCantidades(devolucionLinea.cantidadRecibida)} ${S.of(context).unidad}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  if (devolucionLinea.observaciones != null) const Spacer(),
                  if (devolucionLinea.observaciones != null)
                    Text(
                      devolucionLinea.observaciones!,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
