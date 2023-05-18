import 'package:auto_route/auto_route.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/show/articulo_documento_controller.dart';

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
import '../../domain/articulo_documento.dart';

@RoutePage()
class ArticuloDocumentoPage extends ConsumerWidget {
  const ArticuloDocumentoPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ArticuloDocumentoState>(
      articuloDocumentoControllerProvider,
      (_, state) {
        state.when(
          data: (file) => (file != null) ? OpenFile.open(file.path) : null,
          error: (error) => showToast(error.toString(), context),
          loading: () => showToast(
              S.of(context).cliente_show_clienteAdjunto_abriendoArchivo,
              context),
          initial: () => null,
        );
      },
    );
    final state = ref.watch(articuloDocumentListProvider(articuloId));

    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).articulo_show_articuloDocumentos_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: articuloId,
            subtitle: description,
          ),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) {
              if (e is AppException) {
                return e.maybeWhen(
                  orElse: () => ErrorMessageWidget(
                    e.toString(),
                  ),
                  notConnection: () => Center(
                    child: Text(S.of(context).sincConexion),
                  ),
                );
              }
              return ErrorMessageWidget(e.toString());
            },
            data: (articuloDocumentoList) => (articuloDocumentoList.isNotEmpty)
                ? Expanded(
                    child: ListView.builder(
                      itemCount: articuloDocumentoList.length,
                      itemBuilder: (context, i) => ArticuloDocumentoTile(
                        articuloDocumento: articuloDocumentoList[i],
                      ),
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
    );
  }
}

class ArticuloDocumentoTile extends ConsumerWidget {
  const ArticuloDocumentoTile({super.key, required this.articuloDocumento});

  final ArticuloDocumento articuloDocumento;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: listPadding,
      child: GestureDetector(
        onTap: () => openFile(
            articuloId: articuloDocumento.articuloId,
            nombreArchivo: articuloDocumento.nombreArchivo,
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
                  getIconoFromExtension(articuloDocumento.nombreArchivo ?? ''),
                  color: Theme.of(context).textTheme.bodySmall!.color,
                ),
                gapW8,
                Flexible(
                  child: Text(articuloDocumento.nombreArchivo ?? ''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openFile({
    required String articuloId,
    required String? nombreArchivo,
    required WidgetRef ref,
  }) {
    ref.read(articuloDocumentoControllerProvider.notifier).getDocumentFile(
        adjuntoParam:
            AdjuntoParam(id: articuloId, nombreArchivo: nombreArchivo));
  }
}
