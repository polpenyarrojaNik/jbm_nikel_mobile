import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_adjunto_controller.dart';
import 'package:open_file/open_file.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/toasts.dart';
import '../../domain/cliente_adjunto.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteAdjuntoPage extends ConsumerWidget {
  const ClienteAdjuntoPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ClienteAdjuntoState>(clienteAdjuntoControllerProvider,
        (_, state) {
      state.when(
          data: (file) => (file != null) ? OpenFile.open(file.path) : null,
          error: (error) => showToast(error.toString(), context),
          loading: () => showToast('Abriendo Archivo....', context),
          initial: () => null);
    });
    final state = ref.watch(clienteAdjuntoProvider(clienteId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteAdjunto_titulo,
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
            data: (clienteAdjuntoList) => (clienteAdjuntoList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: clienteAdjuntoList.length,
                        (context, i) => ClienteAdjuntoTile(
                          clienteAdjunto: clienteAdjuntoList[i],
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

class ClienteAdjuntoTile extends ConsumerWidget {
  const ClienteAdjuntoTile({super.key, required this.clienteAdjunto});

  final ClienteAdjunto clienteAdjunto;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => openFile(
          clienteId: clienteAdjunto.clienteId,
          nombreAdjunto: clienteAdjunto.nombreAdjunto,
          ref: ref),
      child: Card(
        // clipBehavior: Clip.hardEdge,
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

  void openFile(
      {required String clienteId,
      required String nombreAdjunto,
      required WidgetRef ref}) {
    ref
        .read(clienteAdjuntoControllerProvider.notifier)
        .getAttachmentFile(path: '$clienteId/$nombreAdjunto');
  }
}
