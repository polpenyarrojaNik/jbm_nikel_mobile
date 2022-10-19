import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/infrastructure/articulo_top_repository.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_top.dart';

class ClienteArticulosTopListPage extends ConsumerWidget {
  const ClienteArticulosTopListPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloTopProvider(clienteId));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteArticulosTop_titulo,
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
            data: (articulosTopList) => (articulosTopList.isNotEmpty)
                ? SliverFillRemaining(
                    child: ArticulosTopDataTable(
                        articulosTopList: articulosTopList),
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

class ArticulosTopDataTable extends StatefulWidget {
  const ArticulosTopDataTable({super.key, required this.articulosTopList});

  final List<ArticuloTop> articulosTopList;

  @override
  State<ArticulosTopDataTable> createState() => _ArticulosTopDataTableState();
}

class _ArticulosTopDataTableState extends State<ArticulosTopDataTable> {
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
          child: Text('Articulo', textAlign: TextAlign.center),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Text('Descripcion', textAlign: TextAlign.center),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Text('Ventas Total', textAlign: TextAlign.center),
        ),
        numeric: false,
      ),
      DataColumn(
        label: Expanded(
          child: Text('Ventas Cliente', textAlign: TextAlign.center),
        ),
        numeric: false,
      ),
    ];
  }

  List<DataRow> _createDataRows({required List<ArticuloTop> articulosTopList}) {
    final List<DataRow> dataRows = [];

    for (var i = 0; i < articulosTopList.length; i++) {
      dataRows.add(
        DataRow(
          cells: [
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      articulosTopList[i].articuloId,
                    ),
                  ),
                ],
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      articulosTopList[i].descripcion,
                    ),
                  ),
                ],
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      articulosTopList[i].ventasTotal.toString(),
                    ),
                  ),
                ],
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      articulosTopList[i].ventasCliente.toString(),
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
