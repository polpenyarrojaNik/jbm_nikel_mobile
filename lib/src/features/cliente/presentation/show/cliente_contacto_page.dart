import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
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
            entityId: clienteId,
            subtitle: nombreCliente,
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
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowFieldTextDetalle(
                fieldTitleValue: S.of(context).cliente_show_clienteContacto_id,
                value: clienteContacto.clienteId),
            (clienteContacto.nombre != null &&
                    clienteContacto.nombre!.length > 35)
                ? ColumnFieldTextDetalle(
                    fieldTitleValue:
                        S.of(context).cliente_show_clienteContacto_nombre,
                    value: clienteContacto.nombre ?? '')
                : RowFieldTextDetalle(
                    fieldTitleValue:
                        S.of(context).cliente_show_clienteContacto_nombre,
                    value: clienteContacto.nombre ?? ''),
            RowFieldTextDetalle(
                fieldTitleValue:
                    S.of(context).cliente_show_clienteContacto_email,
                value: clienteContacto.email ?? ''),
            RowFieldTextDetalle(
                fieldTitleValue:
                    S.of(context).cliente_show_clienteContacto_phone1,
                value: clienteContacto.telefono1 ?? ''),
            RowFieldTextDetalle(
                fieldTitleValue:
                    S.of(context).cliente_show_clienteContacto_phone2,
                value: clienteContacto.telefono1 ?? ''),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).cliente_show_clienteContacto_observaciones,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).textTheme.caption!.color),
                ),
                Flexible(
                  child: Text(
                    clienteContacto.observaciones ?? '',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
