import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/domain/cliente_contacto.dart';
import '../../../cliente/domain/cliente_imp_param.dart';
import '../../../cliente/infrastructure/cliente_repository.dart';
import '../../../cliente/presentation/show/cliente_contacto_list_page.dart';

@RoutePage()
class VisitaEditSelectContactPage extends ConsumerWidget {
  const VisitaEditSelectContactPage({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteContactosListByIdProvider(cliente.id));

    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clienteContacto_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#${cliente.id} ${cliente.nombreCliente}',
          ),
          const Gap(8),
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (clienteContactoList) => (clienteContactoList.isNotEmpty)
                ? Expanded(
                    child: ListView.separated(
                      itemCount: clienteContactoList.length,
                      itemBuilder: (context, i) => GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () =>
                            context.router.maybePop(clienteContactoList[i]),
                        child: ClienteContactoTile(
                          clienteContacto: clienteContactoList[i],
                          clienteImpParam: ClienteImpParam(
                            cliente.id,
                            id: clienteContactoList[i].contactoId,
                            impId: clienteContactoList[i].contactoImpGuid,
                          ),
                        ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToCreateClienteContacto(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> navigateToCreateClienteContacto(BuildContext context) async {
    final newClienteContacto = await context.router.push<ClienteContacto?>(
      ClienteContactoEditRoute(
        clienteImpParam: ClienteImpParam(cliente.id),
        popItemCreated: true,
      ),
    );

    if (newClienteContacto != null && context.mounted) {
      unawaited(context.router.maybePop(newClienteContacto));
    }
  }
}
