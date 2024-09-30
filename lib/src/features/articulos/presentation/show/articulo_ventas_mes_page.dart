import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/bar_data.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/legend_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../domain/articulo_ventas_mes.dart';
import '../../infrastructure/articulo_repository.dart';

@RoutePage()
class ArticuloVentasMesPage extends ConsumerWidget {
  const ArticuloVentasMesPage(
      {super.key, required this.articuloId, required this.descripcion});

  final String articuloId;
  final String descripcion;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloVentasMesProvider(articuloId));

    final user = ref.read(usuarioNotifierProvider);
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).articulo_show_articuloVentasMes_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: articuloId,
            subtitle: descripcion,
          ),
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (articuloVentasMesList) => (articuloVentasMesList.isNotEmpty)
                ? Expanded(
                    child: ListView(
                      children: [
                        VentasMesDataTable(
                          articuloVentasMesList: articuloVentasMesList,
                          showTodos: user?.verTotalVentas ?? false,
                        ),
                        gapH16,
                        Container(
                          height: 420,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: GraficaVentasMes(
                              articuloVentasMesList: articuloVentasMesList),
                        ),
                        gapH16,
                        const LeyendaWidget(),
                      ],
                    ),
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
    );
  }
}

class VentasMesDataTable extends StatefulWidget {
  const VentasMesDataTable(
      {super.key,
      required this.articuloVentasMesList,
      required this.showTodos});

  final List<ArticuloVentasMes> articuloVentasMesList;
  final bool showTodos;

  @override
  State<VentasMesDataTable> createState() => _VentasMesDataTableState();
}

class _VentasMesDataTableState extends State<VentasMesDataTable> {
  List<DataColumn> columns = [];
  List<DataRow> rows = [];
  int selectedRow = -1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          horizontalMargin: 16,
          columnSpacing: 16,
          columns: _createColumns(),
          rows: _createDataRows(
            articuloVentasMesList: widget.articuloVentasMesList,
            showTodos: widget.showTodos,
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
              textAlign: TextAlign.left),
        ),
        numeric: true,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(DateTime.now().year.toString(),
                  textAlign: TextAlign.right)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text(
            (DateTime.now().year - 1).toString(),
            textAlign: TextAlign.right,
          )),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text((DateTime.now().year - 2).toString(),
                  textAlign: TextAlign.right)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text((DateTime.now().year - 3).toString(),
                  textAlign: TextAlign.right)),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
              child: Text((DateTime.now().year - 4).toString(),
                  textAlign: TextAlign.right)),
        ),
        numeric: false,
      ),
    ];
  }

  List<DataRow> _createDataRows({
    required List<ArticuloVentasMes> articuloVentasMesList,
    required bool showTodos,
  }) {
    final dataRows = <DataRow>[];

    for (var i = 0; i < articuloVentasMesList.length; i++) {
      dataRows.add(
        DataRow(
          onLongPress: () => setState(() {
            selectedRow = i;
          }),
          selected: selectedRow == i,
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
                      showTodos
                          ? '${numberFormatCantidades(
                              articuloVentasMesList[i].unidadesAnyo,
                            )} (${numberFormatCantidades(
                              articuloVentasMesList[i].unidadesAnyoTodos,
                            )})'
                          : numberFormatCantidades(
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
                        showTodos
                            ? '${numberFormatCantidades(
                                articuloVentasMesList[i].unidadesAnyo_1,
                              )} (${numberFormatCantidades(
                                articuloVentasMesList[i].unidadesAnyoTodos_1,
                              )})'
                            : numberFormatCantidades(
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
                        showTodos
                            ? '${numberFormatCantidades(
                                articuloVentasMesList[i].unidadesAnyo_2,
                              )} (${numberFormatCantidades(
                                articuloVentasMesList[i].unidadesAnyoTodos_2,
                              )})'
                            : numberFormatCantidades(
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
                        showTodos
                            ? '${numberFormatCantidades(
                                articuloVentasMesList[i].unidadesAnyo_3,
                              )} (${numberFormatCantidades(
                                articuloVentasMesList[i].unidadesAnyoTodos_3,
                              )})'
                            : numberFormatCantidades(
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
                        showTodos
                            ? '${numberFormatCantidades(
                                articuloVentasMesList[i].unidadesAnyo_4,
                              )} (${numberFormatCantidades(
                                articuloVentasMesList[i].unidadesAnyoTodos_4,
                              )})'
                            : numberFormatCantidades(
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
                    style: Theme.of(context).textTheme.titleSmall),
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
                      anyo: 0,
                      articuloVentasMesList: articuloVentasMesList,
                      showTodos: showTodos),
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
                      anyo: -1,
                      articuloVentasMesList: articuloVentasMesList,
                      showTodos: showTodos),
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
                      anyo: -2,
                      articuloVentasMesList: articuloVentasMesList,
                      showTodos: showTodos),
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
                      anyo: -3,
                      articuloVentasMesList: articuloVentasMesList,
                      showTodos: showTodos),
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
                      anyo: -4,
                      articuloVentasMesList: articuloVentasMesList,
                      showTodos: showTodos),
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

  String calcularTotalAnyo({
    required int anyo,
    required List<ArticuloVentasMes> articuloVentasMesList,
    required bool showTodos,
  }) {
    var totalAnyo = 0;
    var totalAnyoTodos = 0;

    for (var i = 0; i < articuloVentasMesList.length; i++) {
      if (anyo == 0) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo;
        totalAnyoTodos += articuloVentasMesList[i].unidadesAnyoTodos ?? 0;
      } else if (anyo == -1) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo_1;
        totalAnyoTodos += articuloVentasMesList[i].unidadesAnyoTodos_1 ?? 0;
      } else if (anyo == -2) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo_2;
        totalAnyoTodos += articuloVentasMesList[i].unidadesAnyoTodos_2 ?? 0;
      } else if (anyo == -3) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo_3;
        totalAnyoTodos += articuloVentasMesList[i].unidadesAnyoTodos_3 ?? 0;
      } else if (anyo == -4) {
        totalAnyo += articuloVentasMesList[i].unidadesAnyo_4;
        totalAnyoTodos += articuloVentasMesList[i].unidadesAnyoTodos_4 ?? 0;
      }
    }
    return showTodos
        ? '${numberFormatCantidades(totalAnyo)} (${numberFormatCantidades(totalAnyoTodos)})'
        : numberFormatCantidades(totalAnyo);
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
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceBetween,
                  borderData: FlBorderData(
                    border: const Border.symmetric(
                      horizontal: BorderSide(
                        color: Color(0xFFececec),
                      ),
                    ),
                  ),
                  titlesData: FlTitlesData(
                    topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    leftTitles: const AxisTitles(
                      sideTitles:
                          SideTitles(showTitles: true, reservedSize: 50),
                    ),
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
                    getDrawingHorizontalLine: (value) => const FlLine(
                      color: Color(0xFFececec),
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
    return Text(articuloVentasMesList[value.toInt()].mes.toString());
  }

  Widget getYTitles(
      List<ArticuloVentasMes> articuloVentasMesList, double value) {
    var valueString = '';
    if (value != 1 &&
        value % (getMaxYValue(articuloVentasMesList) / 9).round() == 0) {
      valueString = value.toStringAsFixed(0);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: Text(
        valueString,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: Theme.of(context).textTheme.bodySmall?.fontSize),
      ),
    );
  }

  double getMaxYValue(List<ArticuloVentasMes> articuloVentasMesList) {
    var maxY = 0.0;
    for (var i = 0; i < articuloVentasMesList.length; i++) {
      if (maxY < articuloVentasMesList[i].unidadesAnyo.toDouble()) {
        maxY = articuloVentasMesList[i].unidadesAnyo.toDouble();
      }
      if (maxY < articuloVentasMesList[i].unidadesAnyo_1.toDouble()) {
        maxY = articuloVentasMesList[i].unidadesAnyo_1.toDouble();
      }
    }

    if (maxY > 18) {
      if (maxY % (maxY / 9).round() == 0) {
        return maxY.roundToDouble();
      }
      for (var i = maxY.round();; i++) {
        if (i % (maxY / 9).round() == 0) {
          return i.toDouble();
        }
      }
    }
    return 18;
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
