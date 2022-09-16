import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_componente.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/helpers/formatters.dart';
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
      appBar: AppBar(
        title: const Text('Componentes'),
        bottom: AppBar(
          title: Column(
            children: [
              Text(articuloId),
              Text(description, style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: state.maybeWhen(
          orElse: () => const ProgressIndicatorWidget(),
          error: (e, st) => ErrorMessageWidget(e.toString()),
          data: (articuloComponenteList) => (articuloComponenteList.isNotEmpty)
              ? ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, _) => const Divider(),
                  itemBuilder: (context, i) => ArticuloComponenteTile(
                    articuloComponente: articuloComponenteList[i],
                  ),
                  itemCount: articuloComponenteList.length,
                )
              : const Center(
                  child: Text('Sin resultado'),
                ),
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
                  '${numberFormatCantidades(articuloComponente.cantidad)} ${((articuloComponente.cantidad) != 1) ? 'unidades' : 'unidad'}',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(context).textTheme.caption?.color)),
            ],
          ),
          if (articuloComponente.articuloComponenteDescripcion != null)
            Text(
              articuloComponente.articuloComponenteDescripcion!,
            ),
        ],
      ),
    );
  }
}
