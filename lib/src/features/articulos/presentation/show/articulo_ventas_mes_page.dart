import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_ventas_mes.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloVentasMesPage extends ConsumerWidget {
  const ArticuloVentasMesPage(
      {super.key, required this.articuloId, required this.descripcion});

  final String articuloId;
  final String descripcion;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloVentasMesProvider(articuloId));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).articulo_show_articuloVentasMes_titulo,
            entityId: articuloId,
            subtitle: descripcion,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (articuloVentasMesList) => (articuloVentasMesList.isNotEmpty)
                ? SliverFillRemaining(
                    child: VentasMesDataTable(
                        articuloVentasMesList: articuloVentasMesList),
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
  const VentasMesDataTable({super.key, required this.articuloVentasMesList});

  final List<ArticuloVentasMes> articuloVentasMesList;

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
                articuloVentasMesList: widget.articuloVentasMesList),
          ),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: Expanded(
          child: Text(S.of(context).articulo_show_articuloVentasMes_mes,
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
      {required List<ArticuloVentasMes> articuloVentasMesList}) {
    final List<DataRow> dataRows = [];

    for (var i = 0; i < articuloVentasMesList.length; i++) {
      dataRows.add(
        DataRow(
          cells: [
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      getMonthFromInt(articuloVentasMesList[i].mes),
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
                        articuloVentasMesList[i].unidadesAnyo,
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
                          articuloVentasMesList[i].unidadesAnyo_1,
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
                          articuloVentasMesList[i].unidadesAnyo_2,
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
                          articuloVentasMesList[i].unidadesAnyo_3,
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
                          articuloVentasMesList[i].unidadesAnyo_4,
                        ),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    dataRows.add(
      DataRow(cells: [
        DataCell(
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(S.of(context).articulo_show_articuloVentasMes_total,
                    style: Theme.of(context).textTheme.subtitle2),
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
                  calcularTotalAnyo(
                      anyo: 0, articuloVentasMesList: articuloVentasMesList),
                  textAlign: TextAlign.right,
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
                  calcularTotalAnyo(
                      anyo: -1, articuloVentasMesList: articuloVentasMesList),
                  textAlign: TextAlign.right,
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
                  calcularTotalAnyo(
                      anyo: -2, articuloVentasMesList: articuloVentasMesList),
                  textAlign: TextAlign.right,
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
                  calcularTotalAnyo(
                      anyo: -3, articuloVentasMesList: articuloVentasMesList),
                  textAlign: TextAlign.right,
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
                  calcularTotalAnyo(
                      anyo: -4, articuloVentasMesList: articuloVentasMesList),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
    return dataRows;
  }

  String calcularTotalAnyo(
      {required int anyo,
      required List<ArticuloVentasMes> articuloVentasMesList}) {
    int totalAnyo = 0;

    for (var i = 0; i < articuloVentasMesList.length; i++) {
      if (anyo == 0) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo;
      } else if (anyo == -1) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo_1;
      } else if (anyo == -2) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo_2;
      } else if (anyo == -3) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo_3;
      } else if (anyo == -4) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo_4;
      }
    }
    return totalAnyo.toString();
  }
}
