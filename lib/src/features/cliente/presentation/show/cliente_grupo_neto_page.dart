import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_grupo_neto.dart';
import '../../infrastructure/cliente_repository.dart';

@RoutePage()
class ClienteGrupoNetoPage extends ConsumerWidget {
  const ClienteGrupoNetoPage({
    super.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteGrupoNetoListByIdProvider(clienteId));
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clienteGrupoNeto_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          const Gap(8),
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (clienteGruposNetosList) =>
                (clienteGruposNetosList.isNotEmpty)
                ? Expanded(
                    child: ListView.separated(
                      itemCount: clienteGruposNetosList.length,
                      itemBuilder: (context, i) => ClienteGrupoNetoTile(
                        clienteGrupoNeto: clienteGruposNetosList[i],
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

class ClienteGrupoNetoTile extends StatelessWidget {
  const ClienteGrupoNetoTile({super.key, required this.clienteGrupoNeto});

  final ClienteGrupoNeto clienteGrupoNeto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingList,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(clienteGrupoNeto.grupoNetoId),
          Text(
            clienteGrupoNeto.grupoNetoDescripcion,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
