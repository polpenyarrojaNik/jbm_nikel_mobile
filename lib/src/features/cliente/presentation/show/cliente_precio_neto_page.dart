import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_precio_neto.dart';
import '../../infrastructure/cliente_repository.dart';

class ClientePrecioNetoPage extends ConsumerWidget {
  const ClientePrecioNetoPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;

  final String? nombreCliente;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clientePrecioNetoProvider(clienteId));
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cliente_show_clientePrecioNeto_titulo),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderDatosRelacionados(
              entityId: '#$clienteId ${nombreCliente ?? ''}',
              subtitle: null,
            ),
            gapH8,
            state.maybeWhen(
              orElse: () => const ProgressIndicatorWidget(),
              error: (e, st) => ErrorMessageWidget(e.toString()),
              data: (clientePrecioNetoList) =>
                  (clientePrecioNetoList.isNotEmpty)
                      ? ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: clientePrecioNetoList.length,
                          itemBuilder: (context, i) => ClientePrecioNetoTile(
                            clientePrecioNeto: clientePrecioNetoList[i],
                          ),
                          separatorBuilder: (context, i) => const Divider(),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(S.of(context).sinResultados),
                          ],
                        ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClientePrecioNetoTile extends StatelessWidget {
  const ClientePrecioNetoTile({super.key, required this.clientePrecioNeto});

  final ClientePrecioNeto clientePrecioNeto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(clientePrecioNeto.articuloId,
                  style: Theme.of(context).textTheme.subtitle2),
              const Spacer(),
              if (clientePrecioNeto.cantidadDesde != 1)
                Text(
                  '≥ ${numberFormatCantidades(clientePrecioNeto.cantidadDesde)}',
                ),
              Text(
                formatPrecios(
                    precio: clientePrecioNeto.precio,
                    tipoPrecio: clientePrecioNeto.tipoPrecio),
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
          Text(
            clientePrecioNeto.descripcion,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
