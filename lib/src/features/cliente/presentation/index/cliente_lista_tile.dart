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
              AddressTextWidget(
                  codigoPostal: cliente.codigoPostalFiscal,
                  poblacion: cliente.poblacionFiscal,
                  provincia: cliente.provinciaFiscal,
                  pais: cliente.paisFiscal)
            ],
          ),
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
