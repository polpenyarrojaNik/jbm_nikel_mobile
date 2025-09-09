import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../core/domain/adjunto_param.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../domain/catalogo.dart';
import 'catalogo_adjunto_controller.dart';
import 'catalogo_favorito_controller.dart';
import 'catalogo_orden_controller.dart';

class CatalogoListTile extends ConsumerWidget {
  const CatalogoListTile({
    super.key,
    required this.catalogo,
    required this.boxConstrains,
  });

  final Catalogo catalogo;
  final BoxConstraints boxConstrains;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateFavorite = ref.watch(
      catalogoFavoritoControllerProvider(catalogo.catalogoId),
    );

    final state = ref.watch(catalogoAdjuntoControllerProvider);

    return SizedBox(
      height: 325,
      child: ClipRRect(
        child: GestureDetector(
          onTap: state.maybeWhen(
            orElse: () =>
                () => downloadAttachment(ref),
            loading: null,
          ),
          child: Card(
            clipBehavior: Clip.hardEdge,
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          catalogo.nombreCompleto,
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ),
                      stateFavorite.maybeWhen(
                        orElse: () => const ProgressIndicatorWidget(),
                        error: (error, _) => const IconButton(
                          onPressed: null,
                          icon: Icon(Icons.error),
                        ),
                        favorite: () => IconButton(
                          onPressed: () => removeCatlalogoFavorite(
                            ref: ref,
                            catalogo: catalogo,
                          ),
                          icon: Icon(
                            Icons.star,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        noFavorite: () => IconButton(
                          onPressed: () => setCatlalogoToFavorite(
                            ref: ref,
                            catalogo: catalogo,
                          ),
                          icon: Icon(
                            Icons.star_outline,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(8),
                  Expanded(
                    child: ClipRRect(
                      child: CachedNetworkImage(
                        imageUrl: catalogo.getImageUrl,
                        fit: BoxFit.contain,
                        progressIndicatorBuilder: (context, url, progress) =>
                            Image.asset(
                              semanticLabel: 'Loading...',
                              // width: 300,
                              fit: BoxFit.contain,
                              'assets/image-placeholder.png',
                            ),
                        errorWidget: (context, error, _) => Image.asset(
                          semanticLabel: 'Error loading image',
                          // width: 300,
                          fit: BoxFit.contain,
                          'assets/image-placeholder.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void downloadAttachment(WidgetRef ref) async {
    final stateCatalogoOrden = ref.read(saveCatalogoAbiertoProvider);
    unawaited(stateCatalogoOrden(catalogo.catalogoId));
    await ref
        .read(catalogoAdjuntoControllerProvider.notifier)
        .getAttachmentFile(
          adjuntoParam: AdjuntoParam(
            id: catalogo.catalogoId.toString(),
            nombreArchivo: catalogo.nombreFicheroCatalogo,
            descarga: catalogo.descarga,
          ),
        );
  }

  void setCatlalogoToFavorite({
    required WidgetRef ref,
    required Catalogo catalogo,
  }) {
    ref
        .read(catalogoFavoritoControllerProvider(catalogo.catalogoId).notifier)
        .setCatalogoFavorite(catalogo);
  }

  void removeCatlalogoFavorite({
    required WidgetRef ref,
    required Catalogo catalogo,
  }) {
    ref
        .read(catalogoFavoritoControllerProvider(catalogo.catalogoId).notifier)
        .removeCatalogoFavorite(catalogo.nombreFicheroCatalogo);
  }
}
