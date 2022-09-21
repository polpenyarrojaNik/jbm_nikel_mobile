import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_contacto.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteContactoPage extends ConsumerWidget {
  const ClienteContactoPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteContactoProvider(clienteId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteContacto_titulo,
            entityId: '#$clienteId ${nombreCliente ?? ''}',
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (clienteContactoList) => (clienteContactoList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: clienteContactoList.length,
                        (context, i) => ClienteContactoTile(
                          clienteContacto: clienteContactoList[i],
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

class ClienteContactoTile extends StatelessWidget {
  const ClienteContactoTile({super.key, required this.clienteContacto});

  final ClienteContacto clienteContacto;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (clienteContacto.nombre != null)
                Row(
                  children: [
                    Flexible(
                      child: Text(clienteContacto.nombre!),
                    ),
                  ],
                ),
              if (clienteContacto.email != null)
                Row(
                  children: [
                    Icon(Icons.email,
                        color: Theme.of(context).textTheme.caption?.color,
                        size: 12),
                    gapW4,
                    Text(clienteContacto.email!,
                        style: Theme.of(context).textTheme.caption),
                  ],
                ),
              if (clienteContacto.telefono1 != null)
                Row(
                  children: [
                    Icon(Icons.phone,
                        color: Theme.of(context).textTheme.caption?.color,
                        size: 12),
                    gapW4,
                    Text(clienteContacto.telefono1!,
                        style: Theme.of(context).textTheme.caption),
                  ],
                ),
              if (clienteContacto.telefono2 != null)
                Row(
                  children: [
                    Icon(Icons.phone,
                        color: Theme.of(context).textTheme.caption?.color,
                        size: 12),
                    gapW4,
                    Text(clienteContacto.telefono2!,
                        style: Theme.of(context).textTheme.caption),
                  ],
                ),
              if (clienteContacto.observaciones != null)
                ColumnFieldTextDetalle(
                    fieldTitleValue: S
                        .of(context)
                        .cliente_show_clienteContacto_observaciones,
                    value: clienteContacto.observaciones!),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
