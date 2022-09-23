import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_ventas_mes.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteVentasMesPage extends ConsumerWidget {
  const ClienteVentasMesPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteVentasMesProvider(clienteId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteVentasMes_titulo,
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
            data: (clienteVentasMesList) => (clienteVentasMesList.isNotEmpty)
                ? SliverFillRemaining(
                    child: VentasMesDataTable(
                        clienteVentasMesList: clienteVentasMesList),
                  )
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

class VentasMesDataTable extends StatefulWidget {
  const VentasMesDataTable({super.key, required this.clienteVentasMesList});

  final List<ClienteVentasMes> clienteVentasMesList;

  @override
  State<VentasMesDataTable> createState() => _VentasMesDataTableState();
}

class _VentasMesDataTableState extends State<VentasMesDataTable> {
  List<DataColumn> columns = [];
  List<DataRow> rows = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: DataTable(
            horizontalMargin: 16,
            columns: _createColumns(),
            rows: _createDataRows(
                clienteVentasMesList: widget.clienteVentasMesList),
          ),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: Expanded(
          child: Text(S.of(context).cliente_show_clienteVentasMes_mes,
              textAlign: TextAlign.center),
        ),
        numeric: true,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(DateTime.now().year.toString(),
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
            (DateTime.now().year - 1).toString(),
            textAlign: TextAlign.center,
          )),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text((DateTime.now().year - 2).toString(),
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text((DateTime.now().year - 3).toString(),
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text((DateTime.now().year - 4).toString(),
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
    ];
  }

  List<DataRow> _createDataRows(
      {required List<ClienteVentasMes> clienteVentasMesList}) {
    final List<DataRow> dataRows = [];

    for (var i = 0; i < clienteVentasMesList.length; i++) {
      dataRows.add(
        DataRow(
          cells: [
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      getMonthFromInt(clienteVentasMesList[i].mes),
                    ),
                  ),
                ],
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      formatPrecios(
                          precio: clienteVentasMesList[i].importeAnyo,
                          tipoPrecio: null),
                    ),
                  ),
                ],
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                        formatPrecios(
                            precio: clienteVentasMesList[i].importeAnyo_1,
                            tipoPrecio: null),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                        formatPrecios(
                            precio: clienteVentasMesList[i].importeAnyo_2,
                            tipoPrecio: null),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                        formatPrecios(
                            precio: clienteVentasMesList[i].importeAnyo_3,
                            tipoPrecio: null),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                        formatPrecios(
                            precio: clienteVentasMesList[i].importeAnyo_4,
                            tipoPrecio: null),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return dataRows;
  }
}
