import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
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
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteDescuento_titulo,
            entityId: clienteId,
            subtitle: nombreCliente,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (clienteDescuentoList) => (clienteDescuentoList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: clienteDescuentoList.length,
                        (context, i) => ClienteDescuentoTile(
                          clienteDescuento: clienteDescuentoList[i],
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

class ClienteDescuentoTile extends StatelessWidget {
  const ClienteDescuentoTile({super.key, required this.clienteDescuento});

  final ClienteDescuento clienteDescuento;

  @override
  Widget build(BuildContext context) {
    return Card(
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
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(clienteDescuento.articuloId,
                    style: Theme.of(context).textTheme.subtitle2),
                Text('${numberFormatCantidades(clienteDescuento.descuento)}%',
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
            Text(
                '${clienteDescuento.familia.descripcion}/${clienteDescuento.subfamilia.descripcion}',
                style: Theme.of(context).textTheme.caption),
            Text(
                '${S.of(context).cliente_show_clienteDescuento_desDe} ${numberFormatCantidades(clienteDescuento.cantidadDesDe)} ${(clienteDescuento.cantidadDesDe == 1) ? S.of(context).unidad : S.of(context).unidades}',
                style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
    );
  }
}
