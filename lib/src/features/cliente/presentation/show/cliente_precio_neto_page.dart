import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_precio_neto.dart';
import '../../infrastructure/cliente_repository.dart';

@RoutePage()
class ClientePrecioNetoPage extends ConsumerWidget {
  const ClientePrecioNetoPage({
    super.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final String clienteId;

  final String? nombreCliente;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clientePrecioNetoListByIdProvider(clienteId));
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clientePrecioNeto_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          const Gap(8),
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (clientePrecioNetoList) => (clientePrecioNetoList.isNotEmpty)
                ? Expanded(
                    child: ListView.separated(
                      itemCount: clientePrecioNetoList.length,
                      itemBuilder: (context, i) => ClientePrecioNetoTile(
                        clientePrecioNeto: clientePrecioNetoList[i],
                      ),
                      separatorBuilder: (context, i) => const Divider(),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(S.of(context).sinResultados)],
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
    return Padding(
      padding: kPaddingList,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(clientePrecioNeto.articuloId),
              const Spacer(),
              Text(
                formatPrecios(
                  precio: clientePrecioNeto.precio,
                  tipoPrecio: clientePrecioNeto.tipoPrecio,
                ),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  clientePrecioNeto.descripcion,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (clientePrecioNeto.cantidadDesde != 1) const Spacer(),
              if (clientePrecioNeto.cantidadDesde != 1)
                Text(
                  '≥ ${numberFormatCantidades(clientePrecioNeto.cantidadDesde)} ${S.of(context).unidad}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
