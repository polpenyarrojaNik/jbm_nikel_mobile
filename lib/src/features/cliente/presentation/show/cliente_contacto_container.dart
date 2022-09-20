import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../domain/cliente_contacto.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteContactoContainer extends ConsumerWidget {
  const ClienteContactoContainer({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteContactoProvider(clienteId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (clienteContactoList) => (clienteContactoList.isEmpty)
            ? Center(child: Text(S.of(context).sinResultados))
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) => ClienteContactoTile(
                  clienteContacto: clienteContactoList[i],
                ),
                itemCount: clienteContactoList.length,
              ),
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
