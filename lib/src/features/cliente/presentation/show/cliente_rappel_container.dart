import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_rappel.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteRappelContainer extends ConsumerWidget {
  const ClienteRappelContainer({Key? key, required this.clienteId})
      : super(key: key);

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteRappelProvider(clienteId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (clienteRappelList) => (clienteRappelList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, _) => const Divider(),
                itemBuilder: (context, i) => ClienteRappelTile(
                  clienteRappel: clienteRappelList[i],
                ),
                itemCount: clienteRappelList.length,
              ),
      ),
    );
  }
}

class ClienteRappelTile extends StatelessWidget {
  const ClienteRappelTile({Key? key, required this.clienteRappel})
      : super(key: key);

  final ClienteRappel clienteRappel;

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
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: Text(clienteRappel.rappelId),
              ),
            ),
            Flexible(
              child: Container(
                height: 65,
                padding: const EdgeInsets.all(6.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(clienteRappel.descripcion,
                        style: Theme.of(context).textTheme.subtitle2),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                            dateFormatter(
                                clienteRappel.fechaDesDe.toIso8601String()),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.color)),
                        Text('-',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.color)),
                        Text(
                            (clienteRappel.fechaHasta != null)
                                ? dateFormatter(
                                    clienteRappel.fechaHasta!.toIso8601String())
                                : '',
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
