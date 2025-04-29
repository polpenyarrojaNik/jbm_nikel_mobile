import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/articulo_sustitutivo.dart';
import '../../infrastructure/articulo_repository.dart';

@RoutePage()
class ArticuloSustitutivoPage extends ConsumerWidget {
  const ArticuloSustitutivoPage({
    super.key,
    required this.articuloId,
    required this.description,
  });

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloSustitutivoListProvider(articuloId));
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).articulo_show_articuloSustitutivo_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(entityId: articuloId, subtitle: description),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data:
                (articuloSustitutivoList) =>
                    (articuloSustitutivoList.isNotEmpty)
                        ? Expanded(
                          child: ListView.separated(
                            itemCount: articuloSustitutivoList.length,
                            itemBuilder:
                                (context, i) => ArticuloSustitutivoTile(
                                  articuloSustitutivo:
                                      articuloSustitutivoList[i],
                                ),
                            separatorBuilder: (context, i) => const Divider(),
                          ),
                        )
                        : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text(S.of(context).sinResultados)],
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
      padding: listPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                articuloSustitutivo.articuloSustitutivoId,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '${S.of(context).pedido_edit_pedidoEdit_stockDisponible} ${articuloSustitutivo.stockDisponible} ${S.of(context).unidad}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Text(articuloSustitutivo.articuloSustitutivoDescription),
        ],
      ),
    );
  }
}
