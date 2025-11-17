import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/adjunto_param.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/presentation/toasts.dart';
import '../../domain/cliente_rappel.dart';
import 'cliente_rappel_controller.dart';

@RoutePage()
class ClienteRappelPage extends ConsumerWidget {
  const ClienteRappelPage({
    super.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteRappelListByIdProvider(clienteId));
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clienteRappel_titulo),
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
            data: (clienteRappelList) => (clienteRappelList.isNotEmpty)
                ? Expanded(
                    child: ListView.separated(
                      itemCount: clienteRappelList.length,
                      itemBuilder: (context, i) => ClienteRappelTile(
                        clienteRappel: clienteRappelList[i],
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

class ClienteRappelTile extends ConsumerWidget {
  const ClienteRappelTile({super.key, required this.clienteRappel});

  final ClienteRappel clienteRappel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(clienteRappelDocumentMutation(clienteRappel.rappelId), (
      _,
      state,
    ) {
      if (state is MutationPending<File?>) {
        showToast(
          S.of(context).catalogos_index_catalogoAdjunto_abriendoArchivo,
          context,
        );
      } else if (state is MutationError<File?>) {
        showToast(state.error.toString(), context);
      } else if (state is MutationSuccess<File?>) {
        final data = state.value;
        if (data != null) {
          OpenFile.open(data.path);
        }
      }
    });

    return GestureDetector(
      onTap: () => (clienteRappel.nombreArchivo != null)
          ? openFile(
              rappelId: clienteRappel.rappelId,
              nombreArchivo: clienteRappel.nombreArchivo!,
              ref: ref,
            )
          : null,
      child: Padding(
        padding: kPaddingList,
        child: IntrinsicHeight(
          child: Row(
            children: [
              SizedBox(
                width: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dateFormatter(
                        clienteRappel.fechaDesDe.toLocal().toIso8601String(),
                      ),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).textTheme.bodySmall?.color,
                      ),
                    ),
                    if (clienteRappel.fechaHasta != null) const Spacer(),
                    if (clienteRappel.fechaHasta != null)
                      Text(
                        dateFormatter(
                          clienteRappel.fechaHasta!.toLocal().toIso8601String(),
                        ),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).textTheme.bodySmall?.color,
                        ),
                      ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    clienteRappel.descripcion,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    clienteRappel.firmado ? 'Firmado' : 'Sin firmar',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -4,
                ),
                onPressed: () => (clienteRappel.nombreArchivo != null)
                    ? openFile(
                        rappelId: clienteRappel.rappelId,
                        nombreArchivo: clienteRappel.nombreArchivo!,
                        ref: ref,
                      )
                    : null,
                icon: const Icon(Icons.navigate_next_outlined, size: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openFile({
    required String rappelId,
    required String nombreArchivo,
    required WidgetRef ref,
  }) {
    clienteRappelDocumentMutation(rappelId).run(ref, (tsx) async {
      final clienteRappelListByIdStateNotifier = tsx.get(
        clienteRappelListByIdProvider(clienteRappel.clienteId).notifier,
      );

      final result = await clienteRappelListByIdStateNotifier
          .getRappelDocumentFile(
            adjuntoParam: AdjuntoParam(
              id: rappelId,
              nombreArchivo: nombreArchivo,
            ),
          );
      return result;
    });
  }
}
