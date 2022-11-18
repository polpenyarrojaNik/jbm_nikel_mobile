import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../visitas/domain/visita.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteVisitasPage extends ConsumerWidget {
  const ClienteVisitasPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteVisitasProvider(clienteId));
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cliente_show_clienteVisitas_titulo),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderDatosRelacionados(
              entityId: '#$clienteId ${nombreCliente ?? ''}',
              subtitle: null,
            ),
            gapH8,
            state.maybeWhen(
              orElse: () => const ProgressIndicatorWidget(),
              error: (e, st) => ErrorMessageWidget(e.toString()),
              data: (clienteVisitasList) => (clienteVisitasList.isNotEmpty)
                  ? ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, i) => ClienteVisitaListaTile(
                          visita: clienteVisitasList[i],
                          navigatedFromCliente: true),
                      separatorBuilder: (context, i) => const Divider(),
                      itemCount: clienteVisitasList.length,
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
      ),
    );
  }
}

class ClienteVisitaListaTile extends StatelessWidget {
  const ClienteVisitaListaTile(
      {super.key, required this.visita, required this.navigatedFromCliente});

  final Visita visita;
  final bool navigatedFromCliente;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: listPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateFormatter(visita.fecha.toLocal().toIso8601String()),
              ),
              if (getEstadoVisitaLocal(
                      context, visita.enviada, visita.tratada) !=
                  null)
                ChipContainer(
                  text: getEstadoVisitaLocal(
                      context, visita.enviada, visita.tratada)!,
                  color: getColorEstadoVisitaLocal(
                      context, visita.enviada, visita.tratada),
                ),
            ],
          ),
          if (visita.contacto != null)
            Text(
              visita.contacto!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          if (visita.contacto != null) gapH8,
          if (visita.resumen != null)
            Text(
              visita.resumen!,
              maxLines: 3,
              style: Theme.of(context).textTheme.caption,
            ),
        ],
      ),
    );
  }
}
