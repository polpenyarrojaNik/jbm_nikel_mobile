import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_sustitutivo.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloSustitutivoPage extends ConsumerWidget {
  const ArticuloSustitutivoPage({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloSustitutivoListProvider(articuloId));
    return Scaffold(
      appBar: AppBar(title: const Text('Articulo Sustitutivo')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: state.maybeWhen(
          orElse: () => const ProgressIndicatorWidget(),
          error: (e, st) => ErrorMessageWidget(e.toString()),
          data: (articuloSustitutivoList) =>
              (articuloSustitutivoList.isNotEmpty)
                  ? ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, _) => const Divider(),
                      itemBuilder: (context, i) => ArticuloSustitutivoTile(
                        articuloSustitutivo: articuloSustitutivoList[i],
                      ),
                      itemCount: articuloSustitutivoList.length,
                    )
                  : const Center(child: Text('No results')),
        ),
      ),
    );
  }
}

class ArticuloSustitutivoTile extends StatelessWidget {
  const ArticuloSustitutivoTile({super.key, required this.articuloSustitutivo});

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
              Text(numberFormat(articuloSustitutivo.orden)),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            getDescriptionInLocalLanguage(
                articulo: articuloSustitutivo.articuloSustitutivo),
          ),
          if (articuloSustitutivo.articuloSustitutivo.stockDisponible != null)
            Text(
                'Stock: ${numberFormat(articuloSustitutivo.articuloSustitutivo.stockDisponible!)}'),
        ],
      ),
    );
  }
}
