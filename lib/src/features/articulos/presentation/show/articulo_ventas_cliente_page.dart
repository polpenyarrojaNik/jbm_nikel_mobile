import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_ventas_cliente.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloVentasClientePage extends ConsumerWidget {
  const ArticuloVentasClientePage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloVentasClienteProvider(articuloId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).articulo_show_articuloVentasCliente_titulo,
            entityId: articuloId,
            subtitle: description,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (articuloVentasClienteList) => (articuloVentasClienteList
                    .isNotEmpty)
                ? SliverToBoxAdapter(
                    child: VentasClienteDataTable(
                        articuloVentasClienteList: articuloVentasClienteList),
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

class VentasClienteDataTable extends StatefulWidget {
  const VentasClienteDataTable(
      {super.key, required this.articuloVentasClienteList});

  final List<ArticuloVentasCliente> articuloVentasClienteList;

  @override
  State<VentasClienteDataTable> createState() => _VentasClienteDataTableState();
}

class _VentasClienteDataTableState extends State<VentasClienteDataTable> {
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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: DataTable(
            sortColumnIndex: _currentSortColumn,
            sortAscending: _sortAsc,
            horizontalMargin: 16,
            columns: _createColumns(widget.articuloVentasClienteList),
            rows: _createDataRows(
              articuloVentasClienteList: widget.articuloVentasClienteList,
            ),
          ),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns(
      List<ArticuloVentasCliente> articuloVentasClienteList) {
    return [
      DataColumn(
        label: Expanded(
          child: Text(
              S.of(context).articulo_show_articuloVentasArticulo_cliente,
              textAlign: TextAlign.center),
        ),
        numeric: true,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_cantidad}\n${DateTime.now().year.toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyoAsc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.cantidadAnyo.compareTo(a.cantidadAnyo));
            } else {
              _sortAsc = false;
              isCantAnyoAsc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.cantidadAnyo.compareTo(b.cantidadAnyo));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Center(
            child: Text(
              '${S.of(context).articulo_show_articuloVentasArticulo_cantidad}\n${(DateTime.now().year - 1).toString()}',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyo1Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.cantidadAnyo_1.compareTo(a.cantidadAnyo_1));
            } else {
              _sortAsc = false;
              isCantAnyo1Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.cantidadAnyo_1.compareTo(b.cantidadAnyo_1));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_cantidad}\n${(DateTime.now().year - 2).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyo2Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.cantidadAnyo_2.compareTo(a.cantidadAnyo_2));
            } else {
              _sortAsc = false;
              isCantAnyo2Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.cantidadAnyo_2.compareTo(b.cantidadAnyo_2));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_cantidad}\n${(DateTime.now().year - 3).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyo3Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.cantidadAnyo_3.compareTo(a.cantidadAnyo_3));
            } else {
              _sortAsc = false;
              isCantAnyo3Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.cantidadAnyo_3.compareTo(b.cantidadAnyo_3));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_cantidad}\n${(DateTime.now().year - 4).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isCantAnyo4Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.cantidadAnyo_4.compareTo(a.cantidadAnyo_4));
            } else {
              _sortAsc = false;
              isCantAnyo4Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.cantidadAnyo_4.compareTo(b.cantidadAnyo_4));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_importe}\n${DateTime.now().year.toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyoAsc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.importeAnyo.compareTo(a.importeAnyo));
            } else {
              _sortAsc = false;
              isImporteAnyoAsc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.importeAnyo.compareTo(b.importeAnyo));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Center(
            child: Text(
              '${S.of(context).articulo_show_articuloVentasArticulo_importe}\n${(DateTime.now().year - 1).toString()}',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyo1Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.importeAnyo_1.compareTo(a.importeAnyo_1));
            } else {
              _sortAsc = false;
              isImporteAnyo1Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.importeAnyo_1.compareTo(b.importeAnyo_1));
            }
          });
        },
      ),
      DataColumn(
        label: Center(
            child: Text(
                '${S.of(context).articulo_show_articuloVentasArticulo_importe}\n${(DateTime.now().year - 2).toString()}',
                textAlign: TextAlign.center)),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyo2Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.importeAnyo_2.compareTo(a.importeAnyo_2));
            } else {
              _sortAsc = false;
              isImporteAnyo2Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.importeAnyo_2.compareTo(b.importeAnyo_2));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_importe}\n${(DateTime.now().year - 3).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyo3Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.importeAnyo_3.compareTo(a.importeAnyo_3));
            } else {
              _sortAsc = false;
              isImporteAnyo3Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.importeAnyo_3.compareTo(b.importeAnyo_3));
            }
          });
        },
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_importe}\n${(DateTime.now().year - 4).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
        onSort: (i, sortAscending) {
          setState(() {
            _currentSortColumn = i;
            if (_sortAsc == false) {
              _sortAsc = true;
              isImporteAnyo4Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => b.importeAnyo_4.compareTo(a.importeAnyo_4));
            } else {
              _sortAsc = false;
              isImporteAnyo4Asc = _sortAsc;
              articuloVentasClienteList
                  .sort((a, b) => a.importeAnyo_4.compareTo(b.importeAnyo_4));
            }
          });
        },
      ),
    ];
  }

  List<DataRow> _createDataRows(
      {required List<ArticuloVentasCliente> articuloVentasClienteList}) {
    final List<DataRow> dataRows = [];

    for (var i = 0; i < articuloVentasClienteList.length; i++) {
      dataRows.add(
        DataRow(
          onLongPress: () => setState(() {
            selectedRow = i;
          }),
          selected: selectedRow == i,
          cells: [
            DataCell(
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('#${articuloVentasClienteList[i].clienteId}'),
                    gapW12,
                    Flexible(
                      child: Text(
                        articuloVentasClienteList[i].nombreCliente,
                        style: Theme.of(context).textTheme.caption,
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
                        articuloVentasClienteList[i].cantidadAnyo,
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
                          articuloVentasClienteList[i].cantidadAnyo_1,
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
                          articuloVentasClienteList[i].cantidadAnyo_2,
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
                          articuloVentasClienteList[i].cantidadAnyo_3,
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
                          articuloVentasClienteList[i].cantidadAnyo_4,
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
                          precio: articuloVentasClienteList[i].importeAnyo,
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
                            precio: articuloVentasClienteList[i].importeAnyo_1,
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
                            precio: articuloVentasClienteList[i].importeAnyo_2,
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
                            precio: articuloVentasClienteList[i].importeAnyo_3,
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
                            precio: articuloVentasClienteList[i].importeAnyo_4,
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
