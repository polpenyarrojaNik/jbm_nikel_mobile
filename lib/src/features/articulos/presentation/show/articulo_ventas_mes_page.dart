import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/bar_data.dart';
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
                ? SliverToBoxAdapter(
                    child: Column(
                      children: [
                        VentasMesDataTable(
                            articuloVentasMesList: articuloVentasMesList),
                        SizedBox(
                          height: 400,
                          child: GraficaVentasMes(
                              articuloVentasMesList: articuloVentasMesList),
                        ),
                      ],
                    ),
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

class GraficaVentasMes extends StatefulWidget {
  const GraficaVentasMes({super.key, required this.articuloVentasMesList});

  final List<ArticuloVentasMes> articuloVentasMesList;

  @override
  State<GraficaVentasMes> createState() => _GraficaVentasMesState();
}

class _GraficaVentasMesState extends State<GraficaVentasMes> {
  List<BarDataArticulosMes> dataList = [];

  @override
  void initState() {
    super.initState();
    setDataListFromVentasMes(widget.articuloVentasMesList);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceBetween,
                    borderData: FlBorderData(
                      show: true,
                      border: const Border.symmetric(
                        horizontal: BorderSide(
                          color: Color(0xFFececec),
                        ),
                      ),
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) =>
                              getYTitles(widget.articuloVentasMesList, value),
                          // reservedSize: 50,
                        ),
                      ),
                      topTitles: AxisTitles(),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) => getTiltlesMeses(
                              widget.articuloVentasMesList, value),
                        ),
                      ),
                    ),
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      getDrawingHorizontalLine: (value) => FlLine(
                        color: const Color(0xFFececec),
                        strokeWidth: 1,
                      ),
                    ),
                    barGroups: dataList.asMap().entries.map((e) {
                      final index = e.key;
                      final data = e.value;
                      return generateBarGroup(
                        index,
                        data.color,
                        data.value,
                        data.shadowValue,
                      );
                    }).toList(),
                    maxY: getMaxYValue(widget.articuloVentasMesList),
                    minY: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void setDataListFromVentasMes(List<ArticuloVentasMes> articuloVentasMesList) {
    for (var i = 0; i < articuloVentasMesList.length; i++) {
      dataList.add(BarDataArticulosMes(
          Colors.green,
          articuloVentasMesList[i].unidadesAnyo,
          articuloVentasMesList[i].unidadesAnyo_1));
    }
  }

  Widget getTiltlesMeses(
      List<ArticuloVentasMes> articuloVentasMesList, double value) {
    print(getMonthFromInt(articuloVentasMesList[value.toInt()].mes));
    return Text(articuloVentasMesList[value.toInt()].mes.toString());
  }

  Widget getYTitles(
      List<ArticuloVentasMes> articuloVentasMesList, double value) {
    String valueString = '';
    if (value != 1 &&
        value % (getMaxYValue(articuloVentasMesList) / 7).round() == 0) {
      valueString = value.toStringAsFixed(0);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: Text(
        valueString,
        style: TextStyle(
          color: Color(Colors.white.value),
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  double getMaxYValue(List<ArticuloVentasMes> articuloVentasMesList) {
    double maxY = 0;
    for (var i = 0; i < articuloVentasMesList.length; i++) {
      if (maxY < articuloVentasMesList[i].unidadesAnyo.toDouble()) {
        maxY = articuloVentasMesList[i].unidadesAnyo.toDouble();
      }
      if (maxY < articuloVentasMesList[i].unidadesAnyo_1.toDouble()) {
        maxY = articuloVentasMesList[i].unidadesAnyo_1.toDouble();
      }
    }

    if (maxY > 14) {
      if (maxY % (maxY / 7).round() == 0) {
        return maxY.roundToDouble();
      }
      for (int i = maxY.round();; i++) {
        if (i % (maxY / 7).round() == 0) {
          return i.toDouble();
        }
      }
    }
    return 14;
  }

  BarChartGroupData generateBarGroup(
    int x,
    Color color,
    int value,
    int shadowValue,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: value.toDouble(),
          color: color,
          width: 6,
        ),
        BarChartRodData(
          toY: shadowValue.toDouble(),
          color: const Color(0xFFCCCCCC),
          width: 6,
        ),
      ],
    );
  }
}
