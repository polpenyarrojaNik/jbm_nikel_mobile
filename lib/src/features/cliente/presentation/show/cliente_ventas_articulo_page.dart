import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../domain/cliente_ventas_articulo.dart';
import 'cliente_ventas_articulo_controller.dart';

class ClienteVentasArticuloPage extends StatelessWidget {
  const ClienteVentasArticuloPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cliente_show_clienteVentasArticulo_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          gapH8,
          VentasArticuloDataTable(clienteId: clienteId)
        ],
      ),
    );
  }
}

class VentasArticuloDataTable extends ConsumerStatefulWidget {
  const VentasArticuloDataTable({super.key, required this.clienteId});

  final String clienteId;

  @override
  ConsumerState<VentasArticuloDataTable> createState() =>
      _VentasArticuloDataTableState();
}

class _VentasArticuloDataTableState
    extends ConsumerState<VentasArticuloDataTable> {
  List<DataColumn> columns = [];
  List<DataRow> rows = [];
  int selectedRow = -1;
  int _currentSortColumn = 0;
  bool _sortAsc = true;
  bool isCantAnyoAsc = true;
  bool isCantAnyo1Asc = true;
  bool isCantAnyo2Asc = true;
  bool isCantAnyo3Asc = true;
  bool isCantAnyo4Asc = true;
  bool isImporteAnyoAsc = true;
  bool isImporteAnyo1Asc = true;
  bool isImporteAnyo2Asc = true;
  bool isImporteAnyo3Asc = true;
  bool isImporteAnyo4Asc = true;

  @override
  void initState() {
    super.initState();
    selectedRow = -1;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
        clienteVentasArticuloIndexScreenPaginatedControllerProvider(
            clienteId: widget.clienteId));
    return Expanded(
      child: ListView(
        children: [
          state.maybeWhen(
            orElse: () => const CircularProgressIndicator(),
            error: (error, _) => ErrorMessageWidget(error.toString()),
            data: (clienteVentasArticuloList) => PaginatedDataTable(
              sortColumnIndex: _currentSortColumn,
              sortAscending: _sortAsc,
              horizontalMargin: 16,
              columnSpacing: 16,
              availableRowsPerPage: state.maybeWhen(
                  orElse: () => [0],
                  data: (clienteVentasArticuloList) => [25, 50, 100]),
              rowsPerPage: state.maybeWhen(
                orElse: () => 0,
                data: (clienteVentasArticuloList) =>
                    (clienteVentasArticuloList.length < 25)
                        ? clienteVentasArticuloList.length
                        : 25,
              ),
              columns: _createColumns(clienteVentasArticuloList),
              source: _ClienteVentasArticuloDataList(clienteVentasArticuloList,
                  selectedRow, (_) => setState(() => selectedRow = _), context),
            ),
          ),
        ],
      ),
    );
  }

  List<DataColumn> _createColumns(
      List<ClienteVentasArticulo> clienteVentasArticuloList) {
    return [
      DataColumn(
        label: Expanded(
          child: Text(S.of(context).cliente_show_clienteVentasArticulo_articulo,
              textAlign: TextAlign.left),
        ),
        numeric: true,
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              S.of(context).cliente_show_clienteVentasArticulo_description,
              textAlign: TextAlign.left),
        ),
        numeric: true,
      ),
      DataColumn(
        label: Expanded(
          child: Text(
            '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${DateTime.now().year.toString()}',
            textAlign: TextAlign.right,
          ),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyoAsc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.cantidadAnyo.compareTo(a.cantidadAnyo));
            } else {
              _sortAsc = false;
              isCantAnyoAsc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.cantidadAnyo.compareTo(b.cantidadAnyo));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Text(
            '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 1).toString()}',
            textAlign: TextAlign.right,
          ),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyo1Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.cantidadAnyo_1.compareTo(a.cantidadAnyo_1));
            } else {
              _sortAsc = false;
              isCantAnyo1Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.cantidadAnyo_1.compareTo(b.cantidadAnyo_1));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 2).toString()}',
              textAlign: TextAlign.right),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyo2Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.cantidadAnyo_2.compareTo(a.cantidadAnyo_2));
            } else {
              _sortAsc = false;
              isCantAnyo2Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.cantidadAnyo_2.compareTo(b.cantidadAnyo_2));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 3).toString()}',
              textAlign: TextAlign.right),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyo3Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.cantidadAnyo_3.compareTo(a.cantidadAnyo_3));
            } else {
              _sortAsc = false;
              isCantAnyo3Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.cantidadAnyo_3.compareTo(b.cantidadAnyo_3));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 4).toString()}',
              textAlign: TextAlign.right),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyo4Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.cantidadAnyo_4.compareTo(a.cantidadAnyo_4));
            } else {
              _sortAsc = false;
              isCantAnyo4Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.cantidadAnyo_4.compareTo(b.cantidadAnyo_4));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${DateTime.now().year.toString()}',
              textAlign: TextAlign.right),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyoAsc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.importeAnyo.compareTo(a.importeAnyo));
            } else {
              _sortAsc = false;
              isImporteAnyoAsc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.importeAnyo.compareTo(b.importeAnyo));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Text(
            '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 1).toString()}',
            textAlign: TextAlign.right,
          ),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyo1Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.importeAnyo_1.compareTo(a.importeAnyo_1));
            } else {
              _sortAsc = false;
              isImporteAnyo1Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.importeAnyo_1.compareTo(b.importeAnyo_1));
            }
          });
        },
      ),
      DataColumn(
        label: Text(
            '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 2).toString()}',
            textAlign: TextAlign.right),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyo2Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.importeAnyo_2.compareTo(a.importeAnyo_2));
            } else {
              _sortAsc = false;
              isImporteAnyo2Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.importeAnyo_2.compareTo(b.importeAnyo_2));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 3).toString()}',
              textAlign: TextAlign.right),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyo3Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.importeAnyo_3.compareTo(a.importeAnyo_3));
            } else {
              _sortAsc = false;
              isImporteAnyo3Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.importeAnyo_3.compareTo(b.importeAnyo_3));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 4).toString()}',
              textAlign: TextAlign.right),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyo4Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => b.importeAnyo_4.compareTo(a.importeAnyo_4));
            } else {
              _sortAsc = false;
              isImporteAnyo4Asc = _sortAsc;
              clienteVentasArticuloList
                  .sort((a, b) => a.importeAnyo_4.compareTo(b.importeAnyo_4));
            }
          });
        },
      ),
    ];
  }
}

class _ClienteVentasArticuloDataList extends DataTableSource {
  final List<ClienteVentasArticulo> clienteVentasArticuloList;

  final Function(int) changedSelectedRowFunction;

  final int selectedRow;

  final BuildContext context;

  _ClienteVentasArticuloDataList(this.clienteVentasArticuloList,
      this.selectedRow, this.changedSelectedRowFunction, this.context);

  @override
  DataRow? getRow(int i) => DataRow(
        selected: selectedRow == i,
        onLongPress: () => changedSelectedRowFunction(i),
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
                Text(
                  numberFormatCantidades(
                    clienteVentasArticuloList[i].cantidadAnyo,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    numberFormatCantidades(
                      clienteVentasArticuloList[i].cantidadAnyo_1,
                    ),
                    textAlign: TextAlign.right),
              ],
            ),
          ),
          DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    numberFormatCantidades(
                      clienteVentasArticuloList[i].cantidadAnyo_2,
                    ),
                    textAlign: TextAlign.right),
              ],
            ),
          ),
          DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    numberFormatCantidades(
                      clienteVentasArticuloList[i].cantidadAnyo_3,
                    ),
                    textAlign: TextAlign.right),
              ],
            ),
          ),
          DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  numberFormatCantidades(
                    clienteVentasArticuloList[i].cantidadAnyo_4,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    formatPrecios(
                        precio: clienteVentasArticuloList[i].importeAnyo,
                        tipoPrecio: null),
                    textAlign: TextAlign.right),
              ],
            ),
          ),
          DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    formatPrecios(
                        precio: clienteVentasArticuloList[i].importeAnyo_1,
                        tipoPrecio: null),
                    textAlign: TextAlign.right),
              ],
            ),
          ),
          DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    formatPrecios(
                        precio: clienteVentasArticuloList[i].importeAnyo_2,
                        tipoPrecio: null),
                    textAlign: TextAlign.right),
              ],
            ),
          ),
          DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    formatPrecios(
                        precio: clienteVentasArticuloList[i].importeAnyo_3,
                        tipoPrecio: null),
                    textAlign: TextAlign.right),
              ],
            ),
          ),
          DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    formatPrecios(
                        precio: clienteVentasArticuloList[i].importeAnyo_4,
                        tipoPrecio: null),
                    textAlign: TextAlign.right),
              ],
            ),
          ),
        ],
      );

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => clienteVentasArticuloList.length;

  @override
  int get selectedRowCount => selectedRow;
}
