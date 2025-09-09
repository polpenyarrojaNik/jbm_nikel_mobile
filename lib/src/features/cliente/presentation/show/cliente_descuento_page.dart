import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/cliente_descuento.dart';
import '../../infrastructure/cliente_repository.dart';

@RoutePage()
class ClienteDescuentoPage extends ConsumerWidget {
  const ClienteDescuentoPage({
    super.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteDescuentoProvider(clienteId));
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clienteDescuento_titulo),
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
            data: (clienteDescuentoList) => (clienteDescuentoList.isNotEmpty)
                ? Expanded(
                    child: ListView.separated(
                      itemCount: clienteDescuentoList.length,
                      itemBuilder: (context, i) => ClienteDescuentoTile(
                        clienteDescuento: clienteDescuentoList[i],
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

class ClienteDescuentoTile extends StatelessWidget {
  const ClienteDescuentoTile({super.key, required this.clienteDescuento});

  final ClienteDescuento clienteDescuento;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingList,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  '${S.of(context).articulo}: ${(clienteDescuento.articuloId != '*') ? clienteDescuento.articuloId : S.of(context).articulo_todos} ${(clienteDescuento.descripcion != null) ? clienteDescuento.descripcion : ''}',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Gap(16),
              Text('${numberFormatCantidades(clienteDescuento.descuento)}%'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  '${S.of(context).familia}: ${clienteDescuento.familia.descripcion}',
                ),
              ),
              if (clienteDescuento.cantidadDesde != 1) const Gap(16),
              if (clienteDescuento.cantidadDesde != 1)
                Text(
                  '≥ ${numberFormatCantidades(clienteDescuento.cantidadDesde)} ${S.of(context).unidad}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${S.of(context).subfamilia}: ${clienteDescuento.subfamilia.descripcion}',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
