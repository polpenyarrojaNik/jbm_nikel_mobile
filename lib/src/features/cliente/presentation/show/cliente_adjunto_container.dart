import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_adjunto.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteAdjuntoContainer extends ConsumerWidget {
  const ClienteAdjuntoContainer({Key? key, required this.clienteId})
      : super(key: key);

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteAdjuntoProvider(clienteId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (clienteAdjuntoList) => (clienteAdjuntoList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) => ClienteAdjuntoTile(
                  clienteAdjunto: clienteAdjuntoList[i],
                ),
                itemCount: clienteAdjuntoList.length,
              ),
      ),
    );
  }
}

class ClienteAdjuntoTile extends ConsumerWidget {
  const ClienteAdjuntoTile({Key? key, required this.clienteAdjunto})
      : super(key: key);

  final ClienteAdjunto clienteAdjunto;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => {},
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
          child:
              // state.when(
              //   data: (file) =>
              Row(
            children: [
              Icon(
                getIconoFromExtension(clienteAdjunto.nombreAdjunto),
                color: Theme.of(context).textTheme.caption!.color,
              ),
              const SizedBox(width: 8),
              Flexible(child: Text(clienteAdjunto.nombreAdjunto)),
            ],
          ),
          // error: (e, _) => ErrorMessageWidget(e.toString()),
          // loading: () => const ProgressIndicatorWidget(),
          // ),
        ),
      ),
    );
  }
}
