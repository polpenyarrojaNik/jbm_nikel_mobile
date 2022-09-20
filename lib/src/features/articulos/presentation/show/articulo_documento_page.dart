import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/show/articulo_documento_controller.dart';
import 'package:open_file/open_file.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/toasts.dart';
import '../../domain/articulo_documento.dart';

class ArticuloDocumentoPage extends ConsumerWidget {
  const ArticuloDocumentoPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ArticuloDocumentoState>(articuloDocumentoControllerProvider,
        (_, state) {
      state.when(
          data: (file) => (file != null) ? OpenFile.open(file.path) : null,
          error: (error) => showToast(error.toString(), context),
          loading: () => showToast('Abriendo Archivo....', context),
          initial: () => null);
    });
    final state = ref.watch(articuloDocumentListProvider(articuloId));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).articulo_show_articuloDocumentos_titulo,
            entityId: articuloId,
            subtitle: description,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (articuloDocumentoList) => (articuloDocumentoList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: articuloDocumentoList.length,
                        (context, i) => ArticuloDocumentoTile(
                          articuloDocumento: articuloDocumentoList[i],
                        ),
                      ),
                    ),
                  )
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

class ArticuloDocumentoTile extends ConsumerWidget {
  const ArticuloDocumentoTile({super.key, required this.articuloDocumento});

  final ArticuloDocumento articuloDocumento;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => openFile(
          articuloId: articuloDocumento.articuloId,
          nombreArchivo: articuloDocumento.nombreArchivo,
          ref: ref),
      child: Card(
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
          child: Row(
            children: [
              Icon(
                getIconoFromExtension(articuloDocumento.pathArchivo ?? ''),
                color: Theme.of(context).textTheme.caption!.color,
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(articuloDocumento.nombreArchivo ?? ''),
              ),
            ],
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
    ref
        .read(articuloDocumentoControllerProvider.notifier)
        .getDocumentFile(path: '$articuloId/$nombreArchivo');
  }
}
