import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_componente.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class ArticuloComponentePage extends ConsumerWidget {
  const ArticuloComponentePage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloComponenteListProvider(articuloId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).articulo_show_articuloComponentes_titulo,
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
            data: (articuloComponenteList) =>
                (articuloComponenteList.isNotEmpty)
                    ? SliverPadding(
                        padding: const EdgeInsets.all(16),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            childCount: articuloComponenteList.length,
                            (context, i) => ArticuloComponenteTile(
                              articuloComponente: articuloComponenteList[i],
                            ),
                          ),
                        ))
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

class ArticuloComponenteTile extends StatelessWidget {
  const ArticuloComponenteTile({super.key, required this.articuloComponente});

  final ArticuloComponente articuloComponente;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(articuloComponente.articuloComponenteId,
                  style: Theme.of(context).textTheme.subtitle2),
              Text(
                  '${numberFormatCantidades(articuloComponente.cantidad)} ${((articuloComponente.cantidad) != 1) ? S.of(context).unidades : S.of(context).unidad}',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(context).textTheme.caption?.color)),
            ],
          ),
          Text(getDescriptionArticuloComponenteInLocalLanguage(
              articulo: articuloComponente)),
          const Divider(),
        ],
      ),
    );
  }
}
