import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_router.dart';

import '../../../../core/helpers/formatters.dart';
import '../../domain/cliente.dart';

class ClienteListaTile extends StatelessWidget {
  const ClienteListaTile({Key? key, required this.cliente}) : super(key: key);

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          navigateToClienteDetalle(context: context, clienteId: cliente.id),
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (cliente.nombreCliente != null)
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        cliente.nombreCliente!,
                      ),
                    ),
                  ],
                ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      '#${cliente.id} ${cliente.nombreFiscal ?? ''}',
                    ),
                  ),
                ],
              ),
              Text(
                formatCodigoPostalAndPoblacion(
                  codigoPostal: cliente.codigoPostalFiscal,
                  poblacion: cliente.poblacionFiscal,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).textTheme.caption!.color,
                    ),
              ),
              Text(
                formatProvinciaAndPais(
                  province: cliente.provinciaFiscal,
                  pais: cliente.paisFiscal,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).textTheme.caption!.color,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToClienteDetalle(
      {required BuildContext context, required String clienteId}) {
    context.goNamed(
      AppRoute.clienteshow.name,
      params: {'clienteId': clienteId},
    );
  }
}
