import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_descuento.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteDescuentoPage extends ConsumerWidget {
  const ClienteDescuentoPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteDescuentoProvider(clienteId));
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cliente_show_clienteDescuento_titulo),
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
              data: (clienteDescuentoList) => (clienteDescuentoList.isNotEmpty)
                  ? ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: clienteDescuentoList.length,
                      itemBuilder: (context, i) => ClienteDescuentoTile(
                        clienteDescuento: clienteDescuentoList[i],
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

class ClienteDescuentoTile extends StatelessWidget {
  const ClienteDescuentoTile({super.key, required this.clienteDescuento});

  final ClienteDescuento clienteDescuento;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    (clienteDescuento.articuloId != '*')
                        ? clienteDescuento.articuloId
                        : S.of(context).articulo_todos,
                    style: Theme.of(context).textTheme.subtitle2),
                if (clienteDescuento.descripcion != null)
                  Text(
                    clienteDescuento.descripcion!,
                    style: Theme.of(context).textTheme.caption,
                  ),
                Text(
                    '${clienteDescuento.familia.descripcion}/${clienteDescuento.subfamilia.descripcion}',
                    style: Theme.of(context).textTheme.caption),
              ],
            ),
          ),
          gapW4,
          if (clienteDescuento.cantidadDesde != 1)
            Text(
                '≥ ${numberFormatCantidades(clienteDescuento.cantidadDesde)} ${S.of(context).unidad}',
                style: Theme.of(context).textTheme.caption),
          if (clienteDescuento.cantidadDesde != 1) gapW8,
          Text(
            '${numberFormatCantidades(clienteDescuento.descuento)}%',
          ),
        ],
      ),
    );
  }
}
