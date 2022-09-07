import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_sustitutivo.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloSustitutivoContainer extends ConsumerWidget {
  const ArticuloSustitutivoContainer({Key? key, required this.articuloId})
      : super(key: key);

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloSustitutivoListProvider(articuloId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articuloSustitutivoList) => ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticuloSustitutivoTile(
            articuloSustitutivo: articuloSustitutivoList[i],
          ),
          itemCount: articuloSustitutivoList.length,
        ),
      ),
    );
  }
}

class ArticuloSustitutivoTile extends StatelessWidget {
  const ArticuloSustitutivoTile({Key? key, required this.articuloSustitutivo})
      : super(key: key);

  final ArticuloSustitutivo articuloSustitutivo;

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
              Text(articuloSustitutivo.articuloSustitutivo.id),
              Text(articuloSustitutivo.orden.toString()),
            ],
          ),
          const SizedBox(height: 5),
          Text(articuloSustitutivo.articuloSustitutivo.descripcion),
          Text(
              'Stock: ${articuloSustitutivo.articuloSustitutivo.stockDisponible}'),
        ],
      ),
    );
  }
}
