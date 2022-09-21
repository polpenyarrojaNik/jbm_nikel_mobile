import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_grupo_neto.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteGrupoNetoPage extends ConsumerWidget {
  const ClienteGrupoNetoPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteGrupoNetoProvider(clienteId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteGrupoNeto_titulo,
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (clienteGruposNetosList) =>
                (clienteGruposNetosList.isNotEmpty)
                    ? SliverPadding(
                        padding: const EdgeInsets.all(16),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            childCount: clienteGruposNetosList.length,
                            (context, i) => ClienteGrupoNetoTile(
                              clienteGrupoNeto: clienteGruposNetosList[i],
                            ),
                          ),
                        ))
                    : SliverFillRemaining(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(S.of(context).sinResultados),
                          ],
                        ),
                      ),
          ),
        ],
      ),
    );
  }
}

class ClienteGrupoNetoTile extends StatelessWidget {
  const ClienteGrupoNetoTile({super.key, required this.clienteGrupoNeto});

  final ClienteGrupoNeto clienteGrupoNeto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(clienteGrupoNeto.grupoNetoId),
          if (clienteGrupoNeto.grupoNetoDescripcion != null)
            Text(
              clienteGrupoNeto.grupoNetoDescripcion!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          const Divider(),
        ],
      ),
    );
  }
}
