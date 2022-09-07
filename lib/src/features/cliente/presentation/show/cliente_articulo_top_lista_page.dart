import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/infrastructure/articulo_top_repository.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../../articulos/presentation/index/articulo_lista_tile.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteArticulosTopListPage extends ConsumerWidget {
  const ClienteArticulosTopListPage({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloTopProvider);
    final stateUltimaSync = ref.watch(clienteArticuloTopUltimaSyncProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Top 150'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              stateUltimaSync.when(
                  data: (ultimaSyncDate) =>
                      UltimaSyncDateWidget(ultimaSyncDate: ultimaSyncDate),
                  error: (e, _) => ErrorMessageWidget(e.toString()),
                  loading: () => const ProgressIndicatorWidget()),
              Expanded(
                child: state.when(
                    data: (articuloTopList) => ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: articuloTopList.length,
                          itemBuilder: (context, i) => ArticuloListaTile(
                              articulo: articuloTopList[i].articulo,
                              appRoute: AppRoute.clientetoparticulosshow,
                              clienteId: clienteId),
                        ),
                    error: (e, _) => ErrorMessageWidget(e.toString()),
                    loading: () => const ProgressIndicatorWidget()),
              ),
            ],
          )),
    );
  }
}
