import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/infrastructure/articulo_top_repository.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/articulo_top.dart';

@RoutePage()
class ClienteArticulosTopListPage extends ConsumerWidget {
  const ClienteArticulosTopListPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloTopProvider(clienteId));

    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clienteArticulosTop_titulo),
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
            data: (articulosTopList) => (articulosTopList.isNotEmpty)
                ? ArticulosTopDataTable(articulosTopList: articulosTopList)
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

class ArticulosTopDataTable extends StatefulWidget {
  const ArticulosTopDataTable({super.key, required this.articulosTopList});

  final List<ArticuloTop> articulosTopList;

  @override
  State<ArticulosTopDataTable> createState() => _ArticulosTopDataTableState();
}

class _ArticulosTopDataTableState extends State<ArticulosTopDataTable> {
  List<DataColumn> columns = [];
  List<DataRow> rows = [];
  int selectedRow = -1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            horizontalMargin: 16,
            columnSpacing: 16,
            columns: _createColumns(),
            rows: _createDataRows(articulosTopList: widget.articulosTopList),
          ),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: Expanded(
          child: Text(S.of(context).cliente_show_clienteArticulosTop_num,
              textAlign: TextAlign.center),
        ),
        numeric: true,
      ),
      DataColumn(
        label: Text(S.of(context).cliente_show_clienteArticulosTop_articulo,
            textAlign: TextAlign.left),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              S.of(context).cliente_show_clienteArticulosTop_descripcion,
              textAlign: TextAlign.left),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              S.of(context).cliente_show_clienteArticulosTop_ventasTotal,
              textAlign: TextAlign.right),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Text(
              S.of(context).cliente_show_clienteArticulosTop_ventasCliente,
              textAlign: TextAlign.right),
        ),
        numeric: false,
      ),
    ];
  }

  List<DataRow> _createDataRows({required List<ArticuloTop> articulosTopList}) {
    final dataRows = <DataRow>[];

    for (var i = 0; i < articulosTopList.length; i++) {
      dataRows.add(
        DataRow(
          onLongPress: () => setState(() {
            selectedRow = i;
          }),
          selected: selectedRow == i,
          cells: [
            DataCell(
              Center(
                child: Text((i + 1).toString()),
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                    child: Text(
                      articulosTopList[i].articuloId,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            DataCell(
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        articulosTopList[i].descripcion,
                        style: Theme.of(context).textTheme.bodySmall,
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
                      articulosTopList[i].ventasTotal.toString(),
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
                      articulosTopList[i].ventasCliente.toString(),
                      textAlign: TextAlign.right,
                    ),
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
