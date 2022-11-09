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
              articuloVentasClienteList: widget.articuloVentasClienteList,
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
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_cantidad}\n${(DateTime.now().year - 2).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_cantidad}\n${(DateTime.now().year - 3).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_cantidad}\n${(DateTime.now().year - 4).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_importe}\n${DateTime.now().year.toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
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
      ),
      DataColumn(
        label: Center(
            child: Text(
                '${S.of(context).articulo_show_articuloVentasArticulo_importe}\n${(DateTime.now().year - 2).toString()}',
                textAlign: TextAlign.center)),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_importe}\n${(DateTime.now().year - 3).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
                  '${S.of(context).articulo_show_articuloVentasArticulo_importe}\n${(DateTime.now().year - 4).toString()}',
                  textAlign: TextAlign.center)),
        ),
        numeric: false,
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
