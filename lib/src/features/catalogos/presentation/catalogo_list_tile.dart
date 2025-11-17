import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../generated/l10n.dart';
import '../../../core/domain/adjunto_param.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../core/presentation/toasts.dart';
import '../../../core/routing/app_auto_router.dart';
import '../domain/catalogo.dart';
import 'catalogo_favorito_controller.dart';
import 'catalogo_orden_controller.dart';
import 'catalogo_search_controller.dart';

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

    ref.listen(catalogoAdjuntoMutation(catalogo.catalogoId), (_, state) {
      if (state is MutationPending<CatalogoAdjuntoData>) {
        showToast(
          S.of(context).catalogos_index_catalogoAdjunto_abriendoArchivo,
          context,
        );
      } else if (state is MutationError<CatalogoAdjuntoData>) {
        showToast(state.error.toString(), context);
      } else if (state is MutationSuccess<CatalogoAdjuntoData>) {
        final data = state.value;
        if (data.file != null && data.descarga) {
          OpenFile.open(data.file!.path);
        } else if (data.file != null) {
          context.router.push(CatalogoPdfViewerRoute(pdfFile: data.file!));
        }
      }
    });

    ref.listen(setCatalogoFavoriteMutation(catalogo.catalogoId), (_, state) {
      if (state is MutationError<void>) {
        showToast(state.error.toString(), context);
      } else if (state is MutationSuccess<void>) {
        ref.invalidate(catalogoIndexScreenControllerProvider);
        ref.invalidate(catalogoFavoritoControllerProvider(catalogo.catalogoId));
      }
    });

    ref.listen(removeCatalogoFavoriteMutation(catalogo.catalogoId), (_, state) {
      if (state is MutationError<void>) {
        showToast(state.error.toString(), context);
      } else if (state is MutationSuccess<void>) {
        ref.invalidate(catalogoIndexScreenControllerProvider);

        ref.invalidate(catalogoFavoritoControllerProvider(catalogo.catalogoId));
      }
    });

    final state = ref.watch(catalogoAdjuntoMutation(catalogo.catalogoId));

    final stateSetFavorite = ref.watch(
      setCatalogoFavoriteMutation(catalogo.catalogoId),
    );

    final stateRemoveFavorite = ref.watch(
      removeCatalogoFavoriteMutation(catalogo.catalogoId),
    );

    return SizedBox(
      height: 325,
      child: ClipRRect(
        child: GestureDetector(
          onTap: !state.isPending ? () => downloadAttachment(ref) : null,

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
                        data: (favorite) =>
                            stateSetFavorite.isPending ||
                                stateRemoveFavorite.isPending
                            ? const ProgressIndicatorWidget()
                            : favorite
                            ? IconButton(
                                onPressed: () => removeCatlalogoFavorite(
                                  ref: ref,
                                  catalogo: catalogo,
                                ),
                                icon: Icon(
                                  Icons.star,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              )
                            : IconButton(
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
                              fit: BoxFit.contain,
                              'assets/image-placeholder.png',
                            ),
                        errorWidget: (context, error, _) => Image.asset(
                          semanticLabel: 'Error loading image',
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

  void downloadAttachment(WidgetRef ref) {
    unawaited(
      saveCatalogoAbiertoMutation(catalogo.catalogoId).run(ref, (tsx) async {
        final catalogoOrdenControllerStateNotifier = tsx.get(
          catalogoOrdenControllerProvider.notifier,
        );

        final result = await catalogoOrdenControllerStateNotifier
            .saveCatalogoAbierto(catalogo.catalogoId);
        return result;
      }),
    );

    unawaited(
      catalogoAdjuntoMutation(catalogo.catalogoId).run(ref, (tsx) async {
        final catalogoIndexScreenControllerStateNotifier = tsx.get(
          catalogoIndexScreenControllerProvider.notifier,
        );

        final result = await catalogoIndexScreenControllerStateNotifier
            .getAttachmentFile(
              adjuntoParam: AdjuntoParam(
                id: catalogo.catalogoId.toString(),
                nombreArchivo: catalogo.nombreFicheroCatalogo,
                descarga: catalogo.descarga,
              ),
            );
        return result;
      }),
    );
  }

  void setCatlalogoToFavorite({
    required WidgetRef ref,
    required Catalogo catalogo,
  }) {
    setCatalogoFavoriteMutation(catalogo.catalogoId).run(ref, (tsx) async {
      final catalogoFavoritoControllerStateNotifier = tsx.get(
        catalogoFavoritoControllerProvider(catalogo.catalogoId).notifier,
      );

      final result = await catalogoFavoritoControllerStateNotifier
          .setCatalogoFavorite(catalogo);

      return result;
    });
  }

  void removeCatlalogoFavorite({
    required WidgetRef ref,
    required Catalogo catalogo,
  }) {
    removeCatalogoFavoriteMutation(catalogo.catalogoId).run(ref, (tsx) async {
      final catalogoFavoritoControllerStateNotifier = tsx.get(
        catalogoFavoritoControllerProvider(catalogo.catalogoId).notifier,
      );

      final result = await catalogoFavoritoControllerStateNotifier
          .removeCatalogoFavorite(catalogo.nombreFicheroCatalogo);

      return result;
    });
  }
}
