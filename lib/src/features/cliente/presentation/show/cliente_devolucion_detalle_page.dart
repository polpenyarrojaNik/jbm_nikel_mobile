import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/mobile_custom_separatos.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../devoluciones/domain/devolucion.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_devolucion_linea_list_tile.dart';

@RoutePage()
class ClienteDevolucionDetallePage extends StatelessWidget {
  const ClienteDevolucionDetallePage({super.key, required this.devolucion});

  final Devolucion devolucion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleText: S
            .of(context)
            .cliente_show_clienteDevolucion_detalleDevolucion,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClienteInfoContainer(devolucion: devolucion),
                  const Gap(12),
                  DevolucionInfoContainer(devolucion: devolucion),
                ],
              ),
            ),
            DevolucionLineaContainer(devolucionId: devolucion.id),
          ],
        ),
      ),
    );
  }
}

class ClienteInfoContainer extends StatelessWidget {
  const ClienteInfoContainer({super.key, required this.devolucion});

  final Devolucion devolucion;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (devolucion.nombre != null)
              Flexible(
                child: Text(
                  devolucion.nombre!,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ChipContainer(
              text: devolucion.devolucionEstado.descripcion,
              color: Colors.grey.withValues(alpha: 0.25),
            ),
          ],
        ),
        const Gap(4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                '#${devolucion.clienteId} ${devolucion.nombre ?? ''}',
              ),
            ),
            const Gap(12),
            Text(
              dateFormatter(
                devolucion.fechaDevolucion.toLocal().toIso8601String(),
                allDay: true,
              ),
            ),
          ],
        ),
        Text(
          formatCustomerAddress(
            devolucion.direccionRecogida1,
            devolucion.codigoPostal,
            devolucion.poblacion,
            null,
            devolucion.pais,
          ),
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class DevolucionInfoContainer extends StatelessWidget {
  const DevolucionInfoContainer({super.key, required this.devolucion});

  final Devolucion devolucion;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowFieldTextDetalle(
          fieldTitleValue: S.of(context).cliente_show_clienteDevolucion_bultos,
          value: numberFormatCantidades(devolucion.bultos),
        ),
        RowFieldTextDetalle(
          fieldTitleValue: S
              .of(context)
              .cliente_show_clienteDevolucion_kilosDevolucion,
          value: '${numberFormatCantidades(devolucion.kilosDevolucion)} kg',
        ),
        if (devolucion.agenciaTransporte != null)
          RowFieldTextDetalle(
            fieldTitleValue: S
                .of(context)
                .cliente_show_clienteDevolucion_agencia,
            value: devolucion.agenciaTransporte,
          ),
        if (devolucion.almacenDestino != null)
          RowFieldTextDetalle(
            fieldTitleValue: S
                .of(context)
                .cliente_show_clienteDevolucion_destino,
            value: devolucion.almacenDestino,
          ),
        const Gap(12),
      ],
    );
  }
}

class DevolucionLineaContainer extends ConsumerWidget {
  const DevolucionLineaContainer({super.key, required this.devolucionId});

  final String devolucionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteDevolucionesLineaProvider(devolucionId));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
          separatorTitle: S.of(context).pedido_show_pedidoVentaDetalle_lineas,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: state.when(
            data: (devolucionLineasList) => ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, i) => ClienteDevolucionLineaListTile(
                devolucionLinea: devolucionLineasList[i],
              ),
              separatorBuilder: (context, i) => const Divider(),
              itemCount: devolucionLineasList.length,
            ),
            error: (error, _) =>
                Center(child: ErrorMessageWidget(error.toString())),
            loading: () => const Center(child: ProgressIndicatorWidget()),
          ),
        ),
      ],
    );
  }
}
