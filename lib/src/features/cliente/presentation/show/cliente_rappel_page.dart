import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_rappel.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteRappelPage extends ConsumerWidget {
  const ClienteRappelPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteRappelProvider(clienteId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteRappel_titulo,
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
            data: (clienteRappelList) => (clienteRappelList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: clienteRappelList.length,
                        (context, i) => ClienteRappelTile(
                          clienteRappel: clienteRappelList[i],
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

class ClienteRappelTile extends StatelessWidget {
  const ClienteRappelTile({super.key, required this.clienteRappel});

  final ClienteRappel clienteRappel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: IntrinsicHeight(
            child: Row(
              children: [
                SizedBox(
                  width: 90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          dateFormatter(clienteRappel.fechaDesDe
                              .toLocal()
                              .toIso8601String()),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.color)),
                      if (clienteRappel.fechaHasta != null) const Spacer(),
                      if (clienteRappel.fechaHasta != null)
                        Text(
                            dateFormatter(clienteRappel.fechaHasta!
                                .toLocal()
                                .toIso8601String()),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.color)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(clienteRappel.descripcion,
                          style: Theme.of(context).textTheme.subtitle2),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
