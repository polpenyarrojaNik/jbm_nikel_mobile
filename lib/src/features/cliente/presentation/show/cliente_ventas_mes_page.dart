import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:money2/money2.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/bar_data.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/legend_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
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
      appBar: AppBar(
        title: Text(S.of(context).cliente_show_clienteVentasMes_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (clienteVentasMesList) => (clienteVentasMesList.isNotEmpty)
                ? Expanded(
                    child: ListView(
                      children: [
                        VentasMesDataTable(
                          clienteVentasMesList: clienteVentasMesList,
                        ),
                        gapH16,
                        Container(
                          height: 420,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: GraficaVentasMes(
                              clienteVentasMesList: clienteVentasMesList),
                        ),
                        gapH8,
                        const LeyendaWidget(),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16.0),
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
  int selectedRow = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        horizontalMargin: 16,
        columns: _createColumns(),
        rows:
            _createDataRows(clienteVentasMesList: widget.clienteVentasMesList),
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
                textAlign: TextAlign.center),
          ),
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
                textAlign: TextAlign.center),
          ),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
            child: Text((DateTime.now().year - 3).toString(),
                textAlign: TextAlign.center),
          ),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Center(
            child: Text((DateTime.now().year - 4).toString(),
                textAlign: TextAlign.center),
          ),
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

    dataRows.add(
      DataRow(cells: [
        DataCell(
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(S.of(context).cliente_show_clienteVentasMes_total,
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
                      anyo: 0, clienteVentasMesList: clienteVentasMesList),
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
                      anyo: -1, clienteVentasMesList: clienteVentasMesList),
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
                      anyo: -2, clienteVentasMesList: clienteVentasMesList),
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
                      anyo: -3, clienteVentasMesList: clienteVentasMesList),
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
                      anyo: -4, clienteVentasMesList: clienteVentasMesList),
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
      required List<ClienteVentasMes> clienteVentasMesList}) {
    final divisaId = clienteVentasMesList[0].importeAnyo.currency.code;

    Money totalAnyo = Money.fromInt(0, code: divisaId);

    for (var i = 0; i < clienteVentasMesList.length; i++) {
      if (anyo == 0) {
        totalAnyo += clienteVentasMesList[i].importeAnyo;
      } else if (anyo == -1) {
        totalAnyo += clienteVentasMesList[i].importeAnyo_1;
      } else if (anyo == -2) {
        totalAnyo += clienteVentasMesList[i].importeAnyo_2;
      } else if (anyo == -3) {
        totalAnyo += clienteVentasMesList[i].importeAnyo_3;
      } else if (anyo == -4) {
        totalAnyo += clienteVentasMesList[i].importeAnyo_4;
      }
    }
    return totalAnyo.toString();
  }
}

class GraficaVentasMes extends StatefulWidget {
  const GraficaVentasMes({super.key, required this.clienteVentasMesList});

  final List<ClienteVentasMes> clienteVentasMesList;

  @override
  State<GraficaVentasMes> createState() => _GraficaVentasMesState();
}

class _GraficaVentasMesState extends State<GraficaVentasMes> {
  List<BarDataClientesMes> dataList = [];

  @override
  void initState() {
    super.initState();
    setDataListFromVentasMes(widget.clienteVentasMesList);
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
                    show: true,
                    border: const Border.symmetric(
                      horizontal: BorderSide(
                        color: Color(0xFFececec),
                      ),
                    ),
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles:
                          SideTitles(showTitles: true, reservedSize: 50),
                    ),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) =>
                            getTiltlesMeses(widget.clienteVentasMesList, value),
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
                  // maxY: getMaxYValue(widget.clienteVentasMesList),
                  minY: 0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void setDataListFromVentasMes(List<ClienteVentasMes> clienteVentasMesList) {
    for (var i = 0; i < clienteVentasMesList.length; i++) {
      dataList.add(BarDataClientesMes(
          Colors.green,
          clienteVentasMesList[i].importeAnyo,
          clienteVentasMesList[i].importeAnyo_1));
    }
  }

  Widget getTiltlesMeses(
      List<ClienteVentasMes> clienteVentasMesList, double value) {
    return Text(clienteVentasMesList[value.toInt()].mes.toString());
  }

  Widget getYTitles(List<ClienteVentasMes> clienteVentasMesList, double value) {
    String valueString = '';
    if (value != 1 &&
        value % (getMaxYValue(clienteVentasMesList) / 9).round() == 0) {
      valueString = value.toStringAsFixed(0);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: Text(
        valueString,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(fontSize: Theme.of(context).textTheme.caption?.fontSize),
      ),
    );
  }

  double getMaxYValue(List<ClienteVentasMes> clienteVentasMesList) {
    double maxY = 0;
    for (var i = 0; i < clienteVentasMesList.length; i++) {
      if (maxY <
          clienteVentasMesList[i].importeAnyo.amount.toDecimal().toDouble()) {
        maxY =
            clienteVentasMesList[i].importeAnyo.amount.toDecimal().toDouble();
      }
      if (maxY <
          clienteVentasMesList[i].importeAnyo_1.amount.toDecimal().toDouble()) {
        maxY =
            clienteVentasMesList[i].importeAnyo_1.amount.toDecimal().toDouble();
      }
    }

    if (maxY > 18) {
      if (maxY % (maxY / 9).round() == 0) {
        return maxY.roundToDouble();
      }
      for (int i = maxY.round();; i++) {
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
    Money value,
    Money shadowValue,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: value.amount.toDecimal().toDouble(),
          color: color,
          width: 6,
        ),
        BarChartRodData(
          toY: shadowValue.amount.toDecimal().toDouble(),
          color: const Color(0xFFCCCCCC),
          width: 6,
        ),
      ],
    );
  }
}
