import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/toasts.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:open_file/open_file.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_documento.dart';

class ArticuloDocumentContainer extends ConsumerWidget {
  const ArticuloDocumentContainer({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloDocumentListProvider(articuloId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articuloDocumentoLista) => ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) => ArticuloDocumentoTile(
            articuloDocumento: articuloDocumentoLista[i],
          ),
          itemCount: articuloDocumentoLista.length,
        ),
      ),
    );
  }
}

class ArticuloDocumentoTile extends ConsumerWidget {
  const ArticuloDocumentoTile({super.key, required this.articuloDocumento});

  final ArticuloDocumento articuloDocumento;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
        articuloDocumentFileProvider(articuloDocumento.pathArchivo ?? ''));
    return GestureDetector(
      onTap: state.when(
          data: (file) => (file != null) ? () => openFile(file: file) : null,
          error: (e, _) => () => showToast(e.toString(), context),
          loading: () => null),
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
          child: state.when(
            data: (file) => Row(
              children: [
                Icon(
                  getIconoFromExtension(file!.path),
                  color: Theme.of(context).textTheme.caption!.color,
                ),
                const SizedBox(width: 8),
                Flexible(child: Text(getNombreArchivo(file.path))),
              ],
            ),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget(),
          ),
        ),
      ),
    );
  }

  void openFile({required File file}) {
    OpenFile.open(file.path);
  }
}
