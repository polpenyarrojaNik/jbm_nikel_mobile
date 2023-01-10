import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
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
      appBar: CommonAppBar(
        titleText: (S.of(context).articulo_show_articuloRecambio_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: articuloId,
            subtitle: description,
          ),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (articuloRecambioList) => (articuloRecambioList.isNotEmpty)
                ? Expanded(
                    child: ListView.separated(
                      itemCount: articuloRecambioList.length,
                      itemBuilder: (context, i) => ArticuloRecambioTile(
                        articuloRecambio: articuloRecambioList[i],
                      ),
                      separatorBuilder: (context, i) => const Divider(),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S.of(context).sinResultados),
                    ],
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
      padding: listPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(articuloRecambio.id,
                  style: Theme.of(context).textTheme.subtitle2),
              Text(
                '${numberFormatCantidades(articuloRecambio.cantidad)} ${S.of(context).unidad}',
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
