import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_imagen.dart';

class ArticuloImagenPage extends ConsumerWidget {
  const ArticuloImagenPage({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloImageListProvider(articuloId));
    return Scaffold(
      appBar: AppBar(title: const Text('Articulo Imágenes')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: state.maybeWhen(
          orElse: () => const ProgressIndicatorWidget(),
          error: (e, st) => ErrorMessageWidget(e.toString()),
          data: (articuloImagenList) => (articuloImagenList.isNotEmpty)
              ? ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, _) => const Divider(),
                  itemBuilder: (context, i) => ArticuloImagenTile(
                    articuloImagen: articuloImagenList[i],
                  ),
                  itemCount: articuloImagenList.length,
                )
              : const Center(
                  child: Text('No Results'),
                ),
        ),
      ),
    );
  }
}

class ArticuloImagenTile extends ConsumerWidget {
  const ArticuloImagenTile({super.key, required this.articuloImagen});

  final ArticuloImagen articuloImagen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(articuloImageFileProvider(articuloImagen.pathArchivo ?? ''));
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            state.when(
              data: (_) => (_ != null)
                  ? Image.memory(_, fit: BoxFit.fitHeight, height: 105)
                  : Image.asset('assets/image-placeholder.png'),
              error: (e, _) => Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/image-placeholder.png'),
                    ErrorMessageWidget(e.toString()),
                  ],
                ),
              ),
              loading: () => Image.asset('assets/image-placeholder.png'),
            ),
            Text(articuloImagen.nombreArchivo),
          ],
        ),
      ),
    );
  }
}
