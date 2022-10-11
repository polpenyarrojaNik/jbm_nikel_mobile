import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
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
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clientePrecioNeto_titulo,
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (clientePrecioNetoList) => (clientePrecioNetoList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: clientePrecioNetoList.length,
                        (context, i) => ClientePrecioNetoTile(
                          clientePrecioNeto: clientePrecioNetoList[i],
                        ),
                      ),
                    ))
                : SliverFillRemaining(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(S.of(context).sinResultados),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class ClientePrecioNetoTile extends StatelessWidget {
  const ClientePrecioNetoTile({super.key, required this.clientePrecioNeto});

  final ClientePrecioNeto clientePrecioNeto;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Flexible(
        child: Container(
          height: 50,
          padding: const EdgeInsets.all(6.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(clientePrecioNeto.articuloId,
                      style: Theme.of(context).textTheme.subtitle2),
                  if (clientePrecioNeto.cantidadDesde != 1)
                    Text(
                        '≥ ${numberFormatCantidades(clientePrecioNeto.cantidadDesde)}',
                        style: Theme.of(context).textTheme.subtitle2),
                ],
              ),
              const Spacer(),
              Text(
                formatPrecios(
                    precio: clientePrecioNeto.precio,
                    tipoPrecio: clientePrecioNeto.tipoPrecio),
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
