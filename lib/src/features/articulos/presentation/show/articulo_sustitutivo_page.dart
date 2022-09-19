import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
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
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: 'Artículos Sustitutivos',
            entityId: articuloId,
            subtitle: description,
          ),
          state.maybeWhen(
            orElse: () => const SliverToBoxAdapter(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverToBoxAdapter(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (articuloSustitutivoList) =>
                (articuloSustitutivoList.isNotEmpty)
                    ? SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: articuloSustitutivoList.length,
                          (context, i) => ArticuloSustitutivoTile(
                            articuloSustitutivo: articuloSustitutivoList[i],
                          ),
                        ),
                      )
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
