import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../generated/l10n.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/helpers/helpers.dart';
import '../../../core/presentation/common_widgets/default_dropdown_separator_widget.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../core/presentation/toasts.dart';
import '../core/domain/notificacion_adjunto.dart';
import '../core/infrastructure/notification_repository.dart';
import 'notification_detail_controller.dart';

final notificacionAdjuntoMutation = Mutation<File?>();

@RoutePage()
class NotificationDetailPage extends ConsumerWidget {
  NotificationDetailPage({
    super.key,
    required this.notificationId,
    this.titleFromOpenScreen,
  });

  final String notificationId;
  final String? titleFromOpenScreen;

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      notificationDetailScreenControllerProvider(notificationId),
    );

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).notification_detail)),
      body: state.when(
        data: (notification) => SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      dateFormatter(
                        notification.fecha.toIso8601String(),
                        allDay: true,
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Markdown(
                onTapLink: (_, link, unknown) {
                  if (link != null) {
                    launchUrlString(link);
                  }
                },
                shrinkWrap: true,
                controller: scrollController,
                data: notification.mensaje,
              ),
              if (notification.adjuntos.isNotEmpty)
                NotificationDetalAttachments(adjuntos: notification.adjuntos),
            ],
          ),
        ),
        error: (error, _) =>
            Center(child: ErrorMessageWidget(error.toString())),
        loading: () => const Center(child: ProgressIndicatorWidget()),
      ),
    );
  }
}

class NotificationDetalAttachments extends ConsumerWidget {
  const NotificationDetalAttachments({super.key, required this.adjuntos});

  final List<NotificationAdjunto> adjuntos;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HookBuilder(
      builder: (context) {
        final showAllAttachements = useState<bool>(true);

        return Column(
          children: [
            DeafaultDropdownSeparatorWidget(
              title: S.of(context).cliente_show_clienteAdjunto_titulo,
              showAll: showAllAttachements.value,
              onIconPressed: () =>
                  showAllAttachements.value = !showAllAttachements.value,
            ),
            if (showAllAttachements.value)
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: adjuntos.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final adjunto = adjuntos[index];
                  return NotificacionAdjuntoTile(notificacionAdjunto: adjunto);
                },
              ),
          ],
        );
      },
    );
  }
}

class NotificacionAdjuntoTile extends ConsumerWidget {
  const NotificacionAdjuntoTile({super.key, required this.notificacionAdjunto});

  final NotificationAdjunto notificacionAdjunto;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _openFile(context, ref),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  getIconFromExtension(
                    notificacionAdjunto.tipoAdjuntoExtension,
                  ),
                ),
                const Gap(16),
                Flexible(
                  child: Text(
                    notificacionAdjunto.nombreArchivo,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
            if (notificacionAdjunto.observaciones != null) ...[
              const Gap(4),
              Text(
                notificacionAdjunto.observaciones!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _openFile(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogCtx) => OpenNotificacionAdjuntoListTileDialog(
        notificacionId: notificacionAdjunto.notificationId,
        codAdjunto: notificacionAdjunto.adjuntoId,
        dialogCtx: dialogCtx,
      ),
    );

    unawaited(
      runMutationSafe(
        ref,
        notificacionAdjuntoMutation(
          '${notificacionAdjunto.notificationId}-${notificacionAdjunto.adjuntoId}',
        ),
        (tsx) async {
          final notificationRepository = ref.read(
            notificationRepositoryProvider,
          );
          final file = await notificationRepository.getNotificacionAdjuntoFile(
            notificacionId: notificacionAdjunto.notificationId,
            codAdjunto: notificacionAdjunto.adjuntoId,
            nombreArchivo: notificacionAdjunto.nombreArchivo,
          );

          return file;
        },
      ),
    );
  }
}

class OpenNotificacionAdjuntoListTileDialog extends ConsumerWidget {
  const OpenNotificacionAdjuntoListTileDialog({
    super.key,
    required this.notificacionId,
    required this.codAdjunto,
    required this.dialogCtx,
  });

  final String notificacionId;
  final int codAdjunto;
  final BuildContext dialogCtx;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(notificacionAdjuntoMutation('$notificacionId-$codAdjunto'), (
      _,
      state,
    ) {
      if (state is MutationError<File?>) {
        showToast(state.error.toString(), dialogCtx);
        Navigator.of(dialogCtx).pop();
      } else if (state is MutationSuccess<File?>) {
        final data = state.value;
        Navigator.of(dialogCtx).pop();

        if (data != null) {
          OpenFile.open(data.path);
        }
      }
    });

    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          const Gap(4),
          Text(S.of(context).catalogos_index_catalogoAdjunto_abriendoArchivo),
        ],
      ),
    );
  }
}
