import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_sustitutivo.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloSustitutivoPage extends ConsumerWidget {
  const ArticuloSustitutivoPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloSustitutivoListProvider(articuloId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artículos sustitutivos'),
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
                  : const Center(child: Text('Sin resultado')),
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
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(articuloSustitutivo.articuloSustitutivoId,
              style: Theme.of(context).textTheme.subtitle2),
          if (articuloSustitutivo.articuloSustitutivoDescription != null)
            Text(articuloSustitutivo.articuloSustitutivoDescription!),
        ],
      ),
    );
  }
}
