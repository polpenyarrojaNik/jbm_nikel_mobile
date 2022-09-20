import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_recambio.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloRecambioPage extends ConsumerWidget {
  const ArticuloRecambioPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloRecambioListProvider(articuloId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: 'Recambios',
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
            data: (articuloRecambioList) => (articuloRecambioList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: articuloRecambioList.length,
                        (context, i) => ArticuloRecambioTile(
                          articuloRecambio: articuloRecambioList[i],
                        ),
                      ),
                    ))
                : SliverFillRemaining(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Sin resultados'),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class ArticuloRecambioTile extends StatelessWidget {
  const ArticuloRecambioTile({super.key, required this.articuloRecambio});

  final ArticuloRecambio articuloRecambio;

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
              Text(articuloRecambio.id,
                  style: Theme.of(context).textTheme.subtitle2),
              Text(
                '${numberFormatCantidades(articuloRecambio.cantidad)} ${((articuloRecambio.cantidad) != 1) ? S.of(context).unidades : S.of(context).unidad}',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).textTheme.caption?.color),
              ),
            ],
          ),
          Text(articuloRecambio.descripcion),
          const Divider(),
        ],
      ),
    );
  }
}
