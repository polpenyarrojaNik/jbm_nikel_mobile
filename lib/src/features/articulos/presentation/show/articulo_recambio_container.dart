import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_recambio.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloRecambioContainer extends ConsumerWidget {
  const ArticuloRecambioContainer({Key? key, required this.articuloId})
      : super(key: key);

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloSpareListProvider(articuloId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articuloSpareList) => ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticuloRecambioTile(
            articuloRecambio: articuloSpareList[i],
          ),
          itemCount: articuloSpareList.length,
        ),
      ),
    );
  }
}

class ArticuloRecambioTile extends StatelessWidget {
  const ArticuloRecambioTile({Key? key, required this.articuloRecambio})
      : super(key: key);

  final ArticuloRecambio articuloRecambio;

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
              Text(articuloRecambio.id),
              Text(articuloRecambio.cantidad.toString()),
            ],
          ),
          const SizedBox(height: 5),
          Text(articuloRecambio.descripcion),
        ],
      ),
    );
  }
}
