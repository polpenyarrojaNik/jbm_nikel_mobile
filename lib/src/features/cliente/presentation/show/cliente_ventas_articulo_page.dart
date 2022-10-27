import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_ventas_articulo.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteVentasArticuloPage extends ConsumerWidget {
  const ClienteVentasArticuloPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteVentasArticuloProvider(clienteId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteVentasArticulo_titulo,
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
            data: (clienteVentasArticuloList) => (clienteVentasArticuloList
                    .isNotEmpty)
                ? SliverToBoxAdapter(
                    child: VentasArticuloDataTable(
                        clienteVentasArticuloList: clienteVentasArticuloList),
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

class VentasArticuloDataTable extends StatefulWidget {
  const VentasArticuloDataTable(
      {super.key, required this.clienteVentasArticuloList});

  final List<ClienteVentasArticulo> clienteVentasArticuloList;

  @override
  State<VentasArticuloDataTable> createState() =>
      _VentasArticuloDataTableState();
}

class _VentasArticuloDataTableState extends State<VentasArticuloDataTable> {
  List<DataColumn> columns = [];
  List<DataRow> rows = [];
  int selectedRow = -1;

  @override
  void initState() {
    super.initState();
    selectedRow = -1;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: DataTable(
            horizontalMargin: 16,
            columns: _createColumns(),
            rows: _createDataRows(
              clienteVentasArticuloList: widget.clienteVentasArticuloList,
            ),
          ),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: Expanded(
          child: Text(S.of(context).cliente_show_clienteVentasArticulo_articulo,
              textAlign: TextAlign.center),
        ),
        numeric: true,
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              S.of(context).cliente_show_clienteVentasArticulo_description,
              textAlign: TextAlign.center),
        ),
        numeric: true,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${DateTime.now().year.toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
            child: Text(
              '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 1).toString()}',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 2).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 3).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 4).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${DateTime.now().year.toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
            child: Text(
              '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 1).toString()}',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Center(
            child: Text(
                '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 2).toString()}',
                textAlign: TextAlign.center)),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 3).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 4).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
    ];
  }

  List<DataRow> _createDataRows(
      {required List<ClienteVentasArticulo> clienteVentasArticuloList}) {
    final List<DataRow> dataRows = [];

    for (var i = 0; i < clienteVentasArticuloList.length; i++) {
      dataRows.add(
        DataRow(
          onLongPress: () => setState(() {
            selectedRow = i;
          }),
          selected: selectedRow == i,
          cells: [
            DataCell(
              SizedBox(
                width: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        clienteVentasArticuloList[i].articuloId,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DataCell(
              SizedBox(
                width: 300,
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        (getClienteVentasArticuloDescripcionInLocalLanguage(
                                    clienteVentasArticulo:
                                        clienteVentasArticuloList[i]) !=
                                null)
                            ? getClienteVentasArticuloDescripcionInLocalLanguage(
                                clienteVentasArticulo:
                                    clienteVentasArticuloList[i])!
                            : '',
                        style: Theme.of(context).textTheme.caption,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      numberFormatCantidades(
                        clienteVentasArticuloList[i].cantidadAnyo,
                      ),
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
                        numberFormatCantidades(
                          clienteVentasArticuloList[i].cantidadAnyo_1,
                        ),
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
                        numberFormatCantidades(
                          clienteVentasArticuloList[i].cantidadAnyo_2,
                        ),
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
                        numberFormatCantidades(
                          clienteVentasArticuloList[i].cantidadAnyo_3,
                        ),
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
                        numberFormatCantidades(
                          clienteVentasArticuloList[i].cantidadAnyo_4,
                        ),
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
                          precio: clienteVentasArticuloList[i].importeAnyo,
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
                            precio: clienteVentasArticuloList[i].importeAnyo_1,
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
                            precio: clienteVentasArticuloList[i].importeAnyo_2,
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
                            precio: clienteVentasArticuloList[i].importeAnyo_3,
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
                            precio: clienteVentasArticuloList[i].importeAnyo_4,
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
