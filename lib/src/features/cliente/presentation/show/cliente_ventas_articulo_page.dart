import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_ventas_articulo.dart';
import 'cliente_ventas_articulo_controller.dart';

@RoutePage()
class ClienteVentasArticuloPage extends ConsumerWidget {
  ClienteVentasArticuloPage({
    super.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final String clienteId;
  final String? nombreCliente;

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomSearchAppBar(
        isSearchingFirst: false,
        title: S.of(context).cliente_show_clienteVentasArticulo_titulo,
        searchTitle: S.of(context).cliente_show_clienteVentasArticulo_buscar,
        onChanged: (searchText) => _debouncer.run(() {
          ref
              .read(clienteVentasArticuloQueryParamsControllerProvider.notifier)
              .setSearchQuery(searchText);
        }),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          const Gap(8),
          VentasArticuloDataTable(clienteId: clienteId),
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
        clienteId: widget.clienteId,
      ),
    );
    return Expanded(
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (error, _) => ErrorMessageWidget(error.toString()),
        data: (clienteVentasArticuloList) => PaginatedDataTable2(
          sortColumnIndex: _currentSortColumn,
          sortAscending: _sortAsc,
          horizontalMargin: 12,
          columnSpacing: 12,
          autoRowsToHeight: true,
          minWidth: 1500,
          lmRatio: 2,
          smRatio: 0.7,
          fit: FlexFit.tight,
          columns: _createColumns(clienteVentasArticuloList),
          source: _ClienteVentasArticuloDataList(
            clienteVentasArticuloList,
            selectedRow,
            (numRow) => setState(() => selectedRow = numRow),
            context,
          ),
        ),
      ),
    );
  }

  List<DataColumn2> _createColumns(
    List<ClienteVentasArticulo> clienteVentasArticuloList,
  ) {
    return [
      DataColumn2(
        label: Text(
          S.of(context).cliente_show_clienteVentasArticulo_articulo,
          textAlign: TextAlign.left,
        ),
        size: ColumnSize.S,
      ),
      DataColumn2(
        label: Text(
          S.of(context).cliente_show_clienteVentasArticulo_description,
          textAlign: TextAlign.left,
        ),
        size: ColumnSize.L,
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${DateTime.now().year.toString()}',
          textAlign: TextAlign.right,
        ),
        size: ColumnSize.M,
        numeric: true,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isCantAnyoAsc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.cantidadAnyo.compareTo(a.cantidadAnyo),
              );
            } else {
              _sortAsc = false;
              isCantAnyoAsc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.cantidadAnyo.compareTo(b.cantidadAnyo),
              );
            }
          });
        },
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 1).toString()}',
          textAlign: TextAlign.right,
        ),
        size: ColumnSize.M,
        numeric: true,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isCantAnyo1Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.cantidadAnyo_1.compareTo(a.cantidadAnyo_1),
              );
            } else {
              _sortAsc = false;
              isCantAnyo1Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.cantidadAnyo_1.compareTo(b.cantidadAnyo_1),
              );
            }
          });
        },
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 2).toString()}',
          textAlign: TextAlign.right,
        ),
        numeric: true,
        size: ColumnSize.M,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isCantAnyo2Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.cantidadAnyo_2.compareTo(a.cantidadAnyo_2),
              );
            } else {
              _sortAsc = false;
              isCantAnyo2Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.cantidadAnyo_2.compareTo(b.cantidadAnyo_2),
              );
            }
          });
        },
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 3).toString()}',
          textAlign: TextAlign.right,
        ),
        numeric: true,
        size: ColumnSize.M,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isCantAnyo3Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.cantidadAnyo_3.compareTo(a.cantidadAnyo_3),
              );
            } else {
              _sortAsc = false;
              isCantAnyo3Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.cantidadAnyo_3.compareTo(b.cantidadAnyo_3),
              );
            }
          });
        },
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_cantidad}\n${(DateTime.now().year - 4).toString()}',
          textAlign: TextAlign.right,
        ),
        numeric: true,
        size: ColumnSize.M,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isCantAnyo4Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.cantidadAnyo_4.compareTo(a.cantidadAnyo_4),
              );
            } else {
              _sortAsc = false;
              isCantAnyo4Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.cantidadAnyo_4.compareTo(b.cantidadAnyo_4),
              );
            }
          });
        },
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${DateTime.now().year.toString()}',
          textAlign: TextAlign.right,
        ),
        numeric: true,
        size: ColumnSize.M,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isImporteAnyoAsc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.importeAnyo.compareTo(a.importeAnyo),
              );
            } else {
              _sortAsc = false;
              isImporteAnyoAsc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.importeAnyo.compareTo(b.importeAnyo),
              );
            }
          });
        },
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 1).toString()}',
          textAlign: TextAlign.right,
        ),
        numeric: true,
        size: ColumnSize.M,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isImporteAnyo1Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.importeAnyo_1.compareTo(a.importeAnyo_1),
              );
            } else {
              _sortAsc = false;
              isImporteAnyo1Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.importeAnyo_1.compareTo(b.importeAnyo_1),
              );
            }
          });
        },
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 2).toString()}',
          textAlign: TextAlign.right,
        ),
        numeric: true,
        size: ColumnSize.M,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isImporteAnyo2Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.importeAnyo_2.compareTo(a.importeAnyo_2),
              );
            } else {
              _sortAsc = false;
              isImporteAnyo2Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.importeAnyo_2.compareTo(b.importeAnyo_2),
              );
            }
          });
        },
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 3).toString()}',
          textAlign: TextAlign.right,
        ),
        numeric: true,
        size: ColumnSize.M,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isImporteAnyo3Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.importeAnyo_3.compareTo(a.importeAnyo_3),
              );
            } else {
              _sortAsc = false;
              isImporteAnyo3Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.importeAnyo_3.compareTo(b.importeAnyo_3),
              );
            }
          });
        },
      ),
      DataColumn2(
        label: Text(
          '${S.of(context).cliente_show_clienteVentasArticulo_importe}\n${(DateTime.now().year - 4).toString()}',
          textAlign: TextAlign.right,
        ),
        numeric: true,
        size: ColumnSize.M,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (!_sortAsc) {
              _sortAsc = true;
              isImporteAnyo4Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => b.importeAnyo_4.compareTo(a.importeAnyo_4),
              );
            } else {
              _sortAsc = false;
              isImporteAnyo4Asc = _sortAsc;
              clienteVentasArticuloList.sort(
                (a, b) => a.importeAnyo_4.compareTo(b.importeAnyo_4),
              );
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

  _ClienteVentasArticuloDataList(
    this.clienteVentasArticuloList,
    this.selectedRow,
    this.changedSelectedRowFunction,
    this.context,
  );

  @override
  DataRow getRow(int i) => DataRow(
    selected: selectedRow == i,
    onLongPress: () => changedSelectedRowFunction(i),
    cells: [
      DataCell(Text(clienteVentasArticuloList[i].articuloId)),
      DataCell(
        Text(
          clienteVentasArticuloList[i].descripcion,
          style: Theme.of(context).textTheme.bodySmall,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      DataCell(
        Text(
          numberFormatCantidades(clienteVentasArticuloList[i].cantidadAnyo),
          textAlign: TextAlign.right,
        ),
      ),
      DataCell(
        Text(
          numberFormatCantidades(clienteVentasArticuloList[i].cantidadAnyo_1),
          textAlign: TextAlign.right,
        ),
      ),
      DataCell(
        Text(
          numberFormatCantidades(clienteVentasArticuloList[i].cantidadAnyo_2),
          textAlign: TextAlign.right,
        ),
      ),
      DataCell(
        Text(
          numberFormatCantidades(clienteVentasArticuloList[i].cantidadAnyo_3),
          textAlign: TextAlign.right,
        ),
      ),
      DataCell(
        Text(
          numberFormatCantidades(clienteVentasArticuloList[i].cantidadAnyo_4),
          textAlign: TextAlign.right,
        ),
      ),
      DataCell(
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              formatPrecios(
                precio: clienteVentasArticuloList[i].importeAnyo,
                tipoPrecio: null,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          formatPrecios(
            precio: clienteVentasArticuloList[i].importeAnyo_1,
            tipoPrecio: null,
          ),
          textAlign: TextAlign.right,
        ),
      ),
      DataCell(
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              formatPrecios(
                precio: clienteVentasArticuloList[i].importeAnyo_2,
                tipoPrecio: null,
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
                precio: clienteVentasArticuloList[i].importeAnyo_3,
                tipoPrecio: null,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          formatPrecios(
            precio: clienteVentasArticuloList[i].importeAnyo_4,
            tipoPrecio: null,
          ),
          textAlign: TextAlign.right,
        ),
      ),
    ],
  );

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => clienteVentasArticuloList.length;

  @override
  int get selectedRowCount => selectedRow == -1 ? 0 : selectedRow;
}
