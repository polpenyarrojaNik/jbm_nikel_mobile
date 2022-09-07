import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_componente.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class ArticuloComponenteContainer extends ConsumerWidget {
  const ArticuloComponenteContainer({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloComponenteListProvider(articuloId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articuloComponenteList) => (articuloComponenteList.isNotEmpty)
            ? ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, _) => const Divider(),
                itemBuilder: (context, i) => ArticuloComponenteTile(
                  articuloComponente: articuloComponenteList[i],
                ),
                itemCount: articuloComponenteList.length,
              )
            : const Center(
                child: Text('No results'),
              ),
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
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(articuloComponente.articuloComponente.id),
              Text(articuloComponente.cantidad.toString()),
            ],
          ),
          const SizedBox(height: 5),
          Text(articuloComponente.articuloComponente.descripcion),
          Text(
              'Stock: ${articuloComponente.articuloComponente.stockDisponible}'),
        ],
      ),
    );
  }
}
