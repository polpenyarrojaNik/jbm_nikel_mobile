import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/adjunto_param.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/presentation/toasts.dart';
import '../../domain/cliente_adjunto.dart';
import 'cliente_adjunto_controller.dart';

@RoutePage()
class ClienteAdjuntoPage extends ConsumerWidget {
  const ClienteAdjuntoPage({
    super.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteAdjuntoListByIdProvider(clienteId));
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clienteAdjunto_titulo),
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
            error: (e, st) {
              if (e is AppException) {
                return e.maybeWhen(
                  orElse: () => ErrorMessageWidget(e.toString()),
                  notConnection: () =>
                      Center(child: Text(S.of(context).sincConexion)),
                );
              }

              return ErrorMessageWidget(e.toString());
            },
            data: (clienteAdjuntoList) => (clienteAdjuntoList.isNotEmpty)
                ? Expanded(
                    child: ListView.builder(
                      itemCount: clienteAdjuntoList.length,
                      itemBuilder: (context, i) => ClienteAdjuntoTile(
                        clienteAdjunto: clienteAdjuntoList[i],
                      ),
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

class ClienteAdjuntoTile extends ConsumerWidget {
  const ClienteAdjuntoTile({super.key, required this.clienteAdjunto});

  final ClienteAdjunto clienteAdjunto;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(clienteAdjuntoMutation(clienteAdjunto.nombreAdjunto), (
      _,
      state,
    ) {
      if (state is MutationPending<File?>) {
        showToast(
          S.of(context).cliente_show_clienteAdjunto_abriendoArchivo,
          context,
        );
      } else if (state is MutationError<File?>) {
        showToast(state.error.toString(), context);
      } else if (state is MutationSuccess<File?>) {
        final file = state.value;
        if (file != null) {
          OpenFile.open(file.path);
        }
      }
    });

    final state = ref.watch(
      clienteAdjuntoMutation(clienteAdjunto.nombreAdjunto),
    );

    return Padding(
      padding: kPaddingList,
      child: GestureDetector(
        onTap: state.isPending
            ? null
            : () => openFile(
                clienteId: clienteAdjunto.clienteId,
                nombreAdjunto: clienteAdjunto.nombreAdjunto,
                ref: ref,
              ),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              color: Colors.grey.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  getIconoFromExtension(clienteAdjunto.nombreAdjunto),
                  color: Theme.of(context).textTheme.bodySmall!.color,
                ),
                const Gap(8),
                Flexible(child: Text(clienteAdjunto.nombreAdjunto)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openFile({
    required String clienteId,
    required String nombreAdjunto,
    required WidgetRef ref,
  }) {
    clienteAdjuntoMutation(nombreAdjunto).run(ref, (tsx) async {
      final clienteAdjuntoListByIdStateNotifier = tsx.get(
        clienteAdjuntoListByIdProvider(clienteId).notifier,
      );

      final result = await clienteAdjuntoListByIdStateNotifier
          .getAttachmentFile(
            adjuntoParam: AdjuntoParam(
              id: clienteId,
              nombreArchivo: nombreAdjunto,
            ),
          );
      return result;
    });
  }
}
