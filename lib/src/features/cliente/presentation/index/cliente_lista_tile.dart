import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_router.dart';

import '../../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../domain/cliente.dart';

class ClienteListaTile extends StatelessWidget {
  const ClienteListaTile({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          navigateToClienteDetalle(context: context, clienteId: cliente.id),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (cliente.nombreCliente != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      '#${cliente.id} ${cliente.nombreCliente!}',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    // child: Text(cliente)
                  )
                ],
              ),
            AddressTextWidget(
                codigoPostal: cliente.codigoPostalFiscal,
                poblacion: cliente.poblacionFiscal,
                provincia: cliente.provinciaFiscal,
                pais: cliente.paisFiscal)
          ],
        ),
      ),
    );
  }

  void navigateToClienteDetalle(
      {required BuildContext context, required String clienteId}) {
    context.goNamed(
      AppRoutes.clienteshow.name,
      params: {'clienteId': clienteId},
    );
  }
}
