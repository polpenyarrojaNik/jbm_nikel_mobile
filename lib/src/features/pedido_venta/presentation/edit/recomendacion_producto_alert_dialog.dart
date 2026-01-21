import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../domain/pedido_local_param.dart';
import '../../domain/pedido_venta_linea.dart';
import '../../domain/recomendacion_producto.dart';
import '../../domain/seleccionar_cantidad_param.dart';
import '../../infrastructure/pedido_venta_repository.dart';
import 'pedido_venta_edit_page_controller.dart';
import 'select_quantity_page.dart';

part 'recomendacion_producto_alert_dialog.g.dart';

@riverpod
class RecomendacionProductoAlertDialogController
    extends _$RecomendacionProductoAlertDialogController {
  @override
  Future<List<RecomendacionProducto>> build(
    PedidoLocalParam pedidoLocalParam,
    String clienteId,
    List<PedidoVentaLinea> pedidoVentaLineaList,
  ) async {
    if (pedidoLocalParam.isEdit) {
      return [];
    }
    final recomendacionProductoList = await ref
        .read(pedidoVentaRepositoryProvider)
        .getRecomendacionProductoList(
          pedidoLocalParam.pedidoAppId!,
          clienteId,
          pedidoVentaLineaList,
        );

    ref
        .read(pedidoVentaEditPageControllerProvider(pedidoLocalParam).notifier)
        .setRecomendacionProductoList(recomendacionProductoList);

    return recomendacionProductoList;
  }
}

class RecomendacionProductoAlertDialog extends ConsumerWidget {
  const RecomendacionProductoAlertDialog({
    super.key,
    required this.pedidoLocalParam,
    required this.clienteId,
    required this.pedidoVentaLineaList,
    required this.dialogContext,
    required this.isEdit,
  });

  final PedidoLocalParam pedidoLocalParam;
  final String clienteId;
  final List<PedidoVentaLinea> pedidoVentaLineaList;
  final BuildContext dialogContext;
  final bool isEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      recomendacionProductoAlertDialogControllerProvider(
        pedidoLocalParam,
        clienteId,
        pedidoVentaLineaList,
      ),
    );

    return state.when(
      data: (recomendacionProductoList) {
        if (recomendacionProductoList.isEmpty) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pop(dialogContext);
          });
          return SizedBox.shrink();
        }
        return RecomendacionProductoListDialog(
          recomendacionesProductoList: recomendacionProductoList,
          pedidoLocalParam: pedidoLocalParam,
          clienteId: clienteId,
          pedidoVentaLineaList: pedidoVentaLineaList,
          dialogContext: dialogContext,
        );
      },
      loading: () => AlertDialog(
        title: Text(S.of(context).productRecommendations),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            const Gap(8),
            Text(S.of(context).searchingRecommendations),
          ],
        ),
      ),
      error: (error, stackTrace) => AlertDialog(
        title: Text(S.of(context).productRecommendations),
        content: ErrorMessageWidget(error.toString()),
      ),
    );
  }
}

class RecomendacionProductoListDialog extends StatefulWidget {
  const RecomendacionProductoListDialog({
    super.key,
    required this.recomendacionesProductoList,
    required this.pedidoLocalParam,
    required this.clienteId,
    required this.pedidoVentaLineaList,
    required this.dialogContext,
  });

  final List<RecomendacionProducto> recomendacionesProductoList;
  final PedidoLocalParam pedidoLocalParam;
  final String clienteId;
  final List<PedidoVentaLinea> pedidoVentaLineaList;
  final BuildContext dialogContext;

  @override
  State<RecomendacionProductoListDialog> createState() =>
      _RecomendacionProductoListDialogState();
}

class _RecomendacionProductoListDialogState
    extends State<RecomendacionProductoListDialog> {
  late List<RecomendacionProducto> currentRecomendacionesProductoList =
      widget.recomendacionesProductoList;

  @override
  void initState() {
    super.initState();
    currentRecomendacionesProductoList = widget.recomendacionesProductoList
        .map((e) => e)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).productRecommendations),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: currentRecomendacionesProductoList.length,
          itemBuilder: (context, i) => RecomendacionProductoListTile(
            recomendacionProducto: currentRecomendacionesProductoList[i],
            onTap: widget.pedidoLocalParam.isEdit
                ? () => onTapRecomendacionProductoItem(
                    widget.pedidoLocalParam,
                    widget.clienteId,
                    widget.pedidoVentaLineaList,
                    currentRecomendacionesProductoList[i],
                  )
                : () => {},
          ),
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowAlignment: OverflowBarAlignment.center,

      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(widget.dialogContext).pop();
          },

          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(
              Theme.of(context).colorScheme.onPrimary,
            ),
            backgroundColor: WidgetStatePropertyAll(
              Theme.of(context).colorScheme.primary,
            ),
          ),

          child: Text(
            S.of(context).imNotInterestedInAnyArticles,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  void onTapRecomendacionProductoItem(
    PedidoLocalParam pedidoLocalParam,
    String clienteId,
    List<PedidoVentaLinea> pedidoVentaLineaList,
    RecomendacionProducto recomendacionProducto,
  ) async {
    final seleccionarCantidadParam = SeleccionarCantidadParam(
      pedidoVentaParam: pedidoLocalParam,
      clienteId: clienteId,
      articuloId: recomendacionProducto.articuloId,
      posicionLinea: pedidoVentaLineaList.length,
      createdFromCliente: pedidoLocalParam.createPedidoFromClienteId != null,
      addNewLineaDesdeArticulo: false,
      recomendado: true,
    );

    final added = await Navigator.push<bool>(
      widget.dialogContext,
      MaterialPageRoute(
        builder: (context) => SeleccionarCantidadPage(
          seleccionarCantidadParam: seleccionarCantidadParam,
        ),
      ),
    );

    if (context.mounted && added == true) {
      setState(() {
        currentRecomendacionesProductoList.remove(recomendacionProducto);
        if (currentRecomendacionesProductoList.isEmpty) {
          Navigator.of(widget.dialogContext).pop();
        }
      });
    }
  }
}

class RecomendacionProductoListTile extends StatelessWidget {
  const RecomendacionProductoListTile({
    super.key,
    required this.recomendacionProducto,
    required this.onTap,
  });

  final RecomendacionProducto recomendacionProducto;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recomendacionProducto.articuloId,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  Text(
                    recomendacionProducto.descripcion ??
                        S.of(context).unknownDescription,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
