import 'package:better_open_file/better_open_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_adjunto_controller.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/adjunto_param.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
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
          loading: () => showToast(
              S.of(context).cliente_show_clienteAdjunto_abriendoArchivo,
              context),
          initial: () => null);
    });
    final state = ref.watch(clienteAdjuntoProvider(clienteId));
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cliente_show_clienteAdjunto_titulo),
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
              error: (e, st) {
                if (e is AppException) {
                  return e.maybeWhen(
                    orElse: () => ErrorMessageWidget(e.toString()),
                    notConnection: () => Center(
                      child: Text(S.of(context).sincConexion),
                    ),
                  );
                }

                return ErrorMessageWidget(e.toString());
              },
              data: (clienteAdjuntoList) => (clienteAdjuntoList.isNotEmpty)
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: clienteAdjuntoList.length,
                      itemBuilder: (context, i) => ClienteAdjuntoTile(
                        clienteAdjunto: clienteAdjuntoList[i],
                      ),
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

class ClienteAdjuntoTile extends ConsumerWidget {
  const ClienteAdjuntoTile({super.key, required this.clienteAdjunto});

  final ClienteAdjunto clienteAdjunto;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: listPadding,
      child: GestureDetector(
        onTap: () => openFile(
            clienteId: clienteAdjunto.clienteId,
            nombreAdjunto: clienteAdjunto.nombreAdjunto,
            ref: ref),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  getIconoFromExtension(clienteAdjunto.nombreAdjunto),
                  color: Theme.of(context).textTheme.caption!.color,
                ),
                gapW8,
                Flexible(child: Text(clienteAdjunto.nombreAdjunto)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openFile(
      {required String clienteId,
      required String nombreAdjunto,
      required WidgetRef ref}) {
    ref.read(clienteAdjuntoControllerProvider.notifier).getAttachmentFile(
        adjuntoParam:
            AdjuntoParam(id: clienteId, nombreArchivo: nombreAdjunto));
  }
}
