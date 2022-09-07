import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_imagen.dart';

class ArticuloImagenContainer extends ConsumerWidget {
  const ArticuloImagenContainer({Key? key, required this.articuloId})
      : super(key: key);

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloImageListProvider(articuloId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articuloImagenList) => ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticuloImagenTile(
            articuloImagen: articuloImagenList[i],
          ),
          itemCount: articuloImagenList.length,
        ),
      ),
    );
  }
}

class ArticuloImagenTile extends ConsumerWidget {
  const ArticuloImagenTile({Key? key, required this.articuloImagen})
      : super(key: key);

  final ArticuloImagen articuloImagen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(articuloImageFileProvider(articuloImagen.pathArchivo ?? ''));
    return Card(
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            state.when(
              data: (_) => (_ != null)
                  ? Image.memory(_, fit: BoxFit.fitHeight, height: 105)
                  : Image.asset('assets/image-placeholder.png'),
              error: (e, _) => SizedBox(
                  height: 150,
                  width: 200,
                  child: ErrorMessageWidget(e.toString())),
              loading: () => Image.asset('assets/image-placeholder.png'),
            ),
            Text(articuloImagen.nombreArchivo),
          ],
        ),
      ),
    );
  }
}
