import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/presentation/catalogo_favorito_controller.dart';

import '../../../../generated/l10n.dart';
import '../../../core/domain/adjunto_param.dart';
import '../domain/catalogo.dart';
import 'catalogo_adjunto_controller.dart';

class CatalogoListTile extends ConsumerWidget {
  const CatalogoListTile({super.key, required this.catalogo});

  final Catalogo catalogo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateFavorite =
        ref.watch(catalogoFavoritoControllerProvider(catalogo.catalogoId));
    return GestureDetector(
      onTap: () => downloadAttachment(ref),
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
                  Text(
                    catalogo.nombre,
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        color: Theme.of(context).colorScheme.primary),
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
              SizedBox(
                width: 600,
                child: CachedNetworkImage(
                  imageUrl: catalogo.urlFicherPortada,
                  progressIndicatorBuilder: (context, url, progress) =>
                      Image.asset(
                    width: 600,
                    fit: BoxFit.contain,
                    'assets/image-placeholder.png',
                  ),
                  errorWidget: (context, error, _) => Center(
                    child: Text(S
                        .of(context)
                        .articulo_show_articuloDetalle_noDisponible),
                  ),
                  width: 600,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void downloadAttachment(WidgetRef ref) async {
    ref.read(catalogoAdjuntoControllerProvider.notifier).getAttachmentFile(
          adjuntoParam: AdjuntoParam(
            id: catalogo.catalogoId.toString(),
            nombreArchivo: catalogo.nombreFicheroCatalogo,
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
