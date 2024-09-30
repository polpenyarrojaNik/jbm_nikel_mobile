import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/presentation/catalogo_favorito_controller.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/presentation/catalogo_orden_controller.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/presentation/catalogo_search_controller.dart';

import '../../../core/domain/adjunto_param.dart';
import '../domain/catalogo.dart';
import 'catalogo_adjunto_controller.dart';

class CatalogoListTile extends ConsumerWidget {
  const CatalogoListTile(
      {super.key, required this.catalogo, required this.boxConstrains});

  final Catalogo catalogo;
  final BoxConstraints boxConstrains;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(catalogoOrdenControllerProvider.saveCatalogoAbierto, (_, state) {
      if (state is SaveCatalogoAbiertoMutationSuccess) {
        ref.invalidate(catalogoIndexScreenControllerProvider);
      }
    });
    final stateFavorite =
        ref.watch(catalogoFavoritoControllerProvider(catalogo.catalogoId));

    final stateCatalogoOrden =
        ref.watch(catalogoOrdenControllerProvider.saveCatalogoAbierto);

    final state = ref.watch(catalogoAdjuntoControllerProvider);

    return GestureDetector(
      onTap: state.maybeWhen(
        orElse: () => () => downloadAttachment(ref, stateCatalogoOrden),
        loading: null,
      ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      catalogo.nombre,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  stateFavorite.maybeWhen(
                    orElse: () => const ProgressIndicatorWidget(),
                    favorite: () => IconButton(
                      onPressed: () => removeCatlalogoFavorite(
                        ref: ref,
                        catalogoId: catalogo.catalogoId,
                      ),
                      icon: Icon(Icons.star,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    noFavorite: () => IconButton(
                      onPressed: () => setCatlalogoToFavorite(
                        ref: ref,
                        catalogoId: catalogo.catalogoId,
                      ),
                      icon: Icon(Icons.star_outline,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  )
                ],
              ),
              gapH8,
              CachedNetworkImage(
                imageUrl: catalogo.urlFicherPortada,
                fit: BoxFit.contain,
                progressIndicatorBuilder: (context, url, progress) =>
                    Image.asset(
                  // width: 300,
                  fit: BoxFit.contain,
                  'assets/image-placeholder.png',
                ),
                errorWidget: (context, error, _) => Image.asset(
                  // width: 300,
                  fit: BoxFit.contain,
                  'assets/image-placeholder.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void downloadAttachment(
      WidgetRef ref, SaveCatalogoAbiertoMutation stateCatalogoOrden) async {
    stateCatalogoOrden(catalogo.catalogoId);
    ref.read(catalogoAdjuntoControllerProvider.notifier).getAttachmentFile(
          adjuntoParam: AdjuntoParam(
            id: catalogo.catalogoId.toString(),
            nombreArchivo: catalogo.nombreFicheroCatalogo,
            descarga: catalogo.descarga,
          ),
        );
  }

  void setCatlalogoToFavorite(
      {required WidgetRef ref, required int catalogoId}) {
    ref
        .read(catalogoFavoritoControllerProvider(catalogoId).notifier)
        .setCatalogoFavorite();
  }

  void removeCatlalogoFavorite(
      {required WidgetRef ref, required int catalogoId}) {
    ref
        .read(catalogoFavoritoControllerProvider(catalogoId).notifier)
        .removeCatalogoFavorite();
  }
}
