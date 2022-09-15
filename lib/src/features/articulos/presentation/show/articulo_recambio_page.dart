import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_recambio.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloRecambioPage extends ConsumerWidget {
  const ArticuloRecambioPage({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloRecambioListProvider(articuloId));
    return Scaffold(
      appBar: AppBar(
        title: Text(articuloId),
        bottom: AppBar(
          title: const Text('Recambios'),
          automaticallyImplyLeading: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: state.maybeWhen(
          orElse: () => const ProgressIndicatorWidget(),
          error: (e, st) => ErrorMessageWidget(e.toString()),
          data: (articuloRecambioList) => (articuloRecambioList.isNotEmpty)
              ? ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, _) => const Divider(),
                  itemBuilder: (context, i) => ArticuloRecambioTile(
                    articuloRecambio: articuloRecambioList[i],
                  ),
                  itemCount: articuloRecambioList.length,
                )
              : const Center(child: Text('No results')),
        ),
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
                '${numberFormatCantidades(articuloRecambio.cantidad)} ${((articuloRecambio.cantidad) != 1) ? 'unidades' : 'unidad'}',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).textTheme.caption?.color),
              ),
            ],
          ),
          Text(articuloRecambio.descripcion),
        ],
      ),
    );
  }
}
