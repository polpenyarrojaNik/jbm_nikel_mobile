import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/index/cliente_lista_tile.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_linea_nuevo_tile.dart';
import 'package:money2/money2.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/slider_background.dart';
import '../../../../core/presentation/toasts.dart';
import '../../../../core/routing/app_router.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/presentation/index/cliente_search_state.dart';
import '../../domain/pedido_venta_linea.dart';
import '../../domain/seleccionar_cantidad_param.dart';
import 'ask_pop_alert_dialog.dart';
import 'icon_stepper.dart';

class PedidoVentaEditPage extends ConsumerStatefulWidget {
  PedidoVentaEditPage({super.key, String? id, bool? isNew})
      : id = id ?? const Uuid().v4(),
        isNew = id == null ? true : false;

  final String id;
  final bool isNew;

  @override
  ConsumerState<PedidoVentaEditPage> createState() =>
      _PedidoVentaEditPageState();
}

class _PedidoVentaEditPageState extends ConsumerState<PedidoVentaEditPage> {
  EntityIdIsLocalParam? pedidoVentaIdLocalParam;

  @override
  void initState() {
    super.initState();
    pedidoVentaIdLocalParam =
        EntityIdIsLocalParam(id: widget.id, isLocal: true, isNew: widget.isNew);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref
        .watch(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam!));

    ref.listen<PedidoVentaEditPageControllerState>(
      pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam!),
      (__, state) {
        state.maybeWhen(
          // saved: (pedidoVenta) {
          //   ref.invalidate(pedidoVentaProvider(pedidoVentaIdLocalParam!));
          //   ref.invalidate(pedidosSearchResultsProvider);
          //   context.showSuccessBar(content: const Text('Saved'));
          //   context.goNamed(
          //     AppRoutes.visitashow.name,
          //     params: {
          //       'id': (pedidoVenta.pedidoVentaId != null)
          //           ? pedidoVenta.pedidoVentaId!
          //           : pedidoVenta.pedidoVentaAppId!
          //     },
          //     extra: pedidoVentaIdLocalParam!.isLocal,
          //   );
          // },
          deleted: () => context.goNamed(
            AppRoutes.visitaindex.name,
          ),
          // savedError: (_, error, __) => context.showErrorBar(
          //   duration: const Duration(seconds: 5),
          //   content: Text((error is AppException)
          //       ? error.details.message
          //       : error.toString()),
          // ),
          orElse: () => null,
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          (widget.isNew) ? 'Nuevo pedido' : 'Editar pedido',
        ),
      ),
      body: state.when(
        loading: () => const ProgressIndicatorWidget(),
        data: (cliente, pedidoVentaLineaList, currentStep, observaciones) =>
            PedidoVentaEditForm(
          isNew: widget.isNew,
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
          cliente: cliente,
          pedidoVentaLineaList: pedidoVentaLineaList,
          currentStep: currentStep,
          observaciones: observaciones,
        ),
        error: (Object error, StackTrace? _) => ErrorMessageWidget(
          (error is AppException) ? error.details.message : error.toString(),
        ),
        // saved: (pedidoVenta) => PedidoVentaEditForm(
        //   isNew: widget.isNew,
        //   pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
        //   pedidoVenta: pedidoVenta,
        // ),
        // saving: (pedidoVenta) => PedidoVentaEditForm(
        //   isNew: widget.isNew,
        //   pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
        //   pedidoVenta: pedidoVenta,
        // ),
        // savedError:
        //     (PedidoVenta pedidoVenta, Object error, StackTrace? stackTrace) =>
        //         PedidoVentaEditForm(
        //   isNew: widget.isNew,
        //   pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
        //   pedidoVenta: pedidoVenta,
        // ),
        deleted: () => const ProgressIndicatorWidget(),
      ),
    );
  }
}

class PedidoVentaEditForm extends ConsumerWidget {
  const PedidoVentaEditForm(
      {super.key,
      required this.isNew,
      required this.pedidoVentaIdLocalParam,
      required this.cliente,
      required this.pedidoVentaLineaList,
      required this.currentStep,
      required this.observaciones});

  final bool isNew;
  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final Cliente? cliente;
  final List<PedidoVentaLinea> pedidoVentaLineaList;
  final int currentStep;
  final String? observaciones;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<Cliente?>(clienteForFromStateProvider, (_, state) {
      if (state != null) {
        ref
            .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
                .notifier)
            .selectCliente(cliente: state);
      }
    });

    return WillPopScope(
      onWillPop: () async => _askIfUserPop(context),
      child: IconStepper(
        currentStep: currentStep,
        steps: getSteps(),
        type: IconStepperType.horizontal,
        onStepContinue: () => continued(context, currentStep, ref),
        onStepCancel: (currentStep <= 0) ? null : () => cancel(ref),
        onStepTapped: (value) => tapped(value, ref),
      ),
    );
  }

  Future<bool> _askIfUserPop(BuildContext context) async {
    final result = await showDialog(
      context: context,
      builder: (ctx) {
        return AskPopAlertDialog(contextEditPage: context);
      },
    ) as bool?;
    return result ?? false;
  }

  void continued(BuildContext context, int currentStep, WidgetRef ref) {
    FocusScope.of(context).unfocus();
    switch (currentStep) {
      case 0:
        selectClienteValidate(context, ref);
        break;
      case 1:
        selectLineasValidate(context, ref);
        break;
      case 2:
        ref
            .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
                .notifier)
            .navigateToNextStep();
        break;
      case 3:
        ref
            .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
                .notifier)
            .upsertPedidoVenta(
                cliente: cliente!,
                pedidoVentaLineaList: pedidoVentaLineaList,
                observaciones: observaciones!);
        break;
      default:
        ref
            .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
                .notifier)
            .navigateToNextStep();
    }
  }

  void cancel(WidgetRef ref) {
    ref
        .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
            .notifier)
        .navigateToPreviousStep();
  }

  void tapped(int value, WidgetRef ref) {
    ref
        .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
            .notifier)
        .navigateToNextStep();
  }

  void saveForm() async {}

  void selectClienteValidate(BuildContext context, WidgetRef ref) {
    if (cliente != null) {
      ref
          .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
              .notifier)
          .navigateToNextStep();
    } else {
      showToast(
        'Seleccione un cliente para continuar.',
        context,
      );
    }
  }

  void selectLineasValidate(BuildContext context, WidgetRef ref) {
    if (pedidoVentaLineaList.isNotEmpty) {
      ref
          .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
              .notifier)
          .navigateToNextStep();
    } else {
      showToast('Añade alguna línea al pedido', context);
    }
  }

  List<IconStep> getSteps() {
    return [
      IconStep(
        icon: Icons.account_circle,
        content: StepSelectClienteContent(
          cliente: cliente,
          isNew: isNew,
        ),
        state: currentStep >= 0
            ? (currentStep == 0
                ? IconStepState.editing
                : IconStepState.complete)
            : IconStepState.disabled,
        isActive: currentStep >= 0,
      ),
      IconStep(
        icon: Icons.list_alt,
        content: StepArticuloListContent(
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam,
          cliente: cliente,
          state: currentStep >= 1
              ? (currentStep == 1
                  ? IconStepState.editing
                  : IconStepState.complete)
              : IconStepState.disabled,
          isActive: true,
          pedidoVentaLineaList: pedidoVentaLineaList,
        ),
      ),
      IconStep(
        icon: Icons.note,
        content: StepObservacionesContent(
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam,
          state: currentStep >= 2
              ? (currentStep == 2
                  ? IconStepState.editing
                  : IconStepState.complete)
              : IconStepState.disabled,
          isActive: true,
          observaciones: observaciones,
        ),
      ),
      IconStep(
        icon: Icons.summarize_sharp,
        content: StepResumenContent(
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam,
          state: currentStep >= 3
              ? (currentStep == 3
                  ? IconStepState.editing
                  : IconStepState.complete)
              : IconStepState.disabled,
          isActive: true,
          cliente: cliente,
          pedidoVentaLineaList: pedidoVentaLineaList,
          observaciones: observaciones,
        ),
      ),
    ];
  }
}

class StepSelectClienteContent extends ConsumerStatefulWidget {
  const StepSelectClienteContent(
      {super.key, required this.cliente, required this.isNew});

  final Cliente? cliente;
  final bool isNew;

  @override
  ConsumerState<StepSelectClienteContent> createState() =>
      _StepSelectClienteContentState();
}

class _StepSelectClienteContentState
    extends ConsumerState<StepSelectClienteContent> {
  @override
  void initState() {
    super.initState();
    if (widget.cliente == null) {
      Future.microtask(() => navigateToSelectCliente(context, widget.isNew));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.cliente == null) {
      return Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextButton(
                onPressed: () => navigateToSelectCliente(context, widget.isNew),
                child: const Text(
                  'Seleccione un cliente',
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => navigateToSelectCliente(context, widget.isNew),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(
                      0.2,
                    ),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: ClienteListaTile(
                          cliente: widget.cliente!,
                        ),
                      ),
                      gapW4,
                      Icon(
                        Icons.navigate_next,
                        color: Theme.of(context).textTheme.caption!.color,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

  void navigateToSelectCliente(BuildContext context, bool isNew) async {
    if (isNew) {
      context.goNamed(AppRoutes.pedidoventanewsearchcliente.name);
    } else {
      return showToast(
        'No puedes cambiar el cliente',
        context,
      );
    }
  }
}

class StepArticuloListContent extends StatelessWidget {
  const StepArticuloListContent(
      {super.key,
      required this.pedidoVentaIdLocalParam,
      required this.cliente,
      required this.state,
      required this.isActive,
      required this.pedidoVentaLineaList});

  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final Cliente? cliente;
  final IconStepState state;
  final bool isActive;
  final List<PedidoVentaLinea> pedidoVentaLineaList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: (pedidoVentaLineaList.isNotEmpty)
                    ? ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: pedidoVentaLineaList.length,
                        separatorBuilder: (context, i) => const Divider(),
                        itemBuilder: (context, i) => GestureDetector(
                          onTap: () => updatePedidoVentaLinea(
                            context,
                            cliente!.id,
                            pedidoVentaLineaList[i],
                            i,
                            pedidoVentaIdLocalParam,
                          ),
                          child: Dismissible(
                            key: UniqueKey(),
                            background: const SliderBackround(),
                            onDismissed: (_) =>
                                deletePedidoVentaLinea(pedidoVentaLineaList[i]),
                            child: PedidoVentaLineaNuevoTile(
                              pedidoVentaLinea: pedidoVentaLineaList[i],
                            ),
                          ),
                        ),
                      )
                    : const Center(
                        child: Text(
                          'Sin artículos',
                        ),
                      ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          right: 20,
          child: FloatingActionButton(
            child: const Icon(
              Icons.add,
            ),
            onPressed: () => navigateToAddArticulo(
                context, cliente!.id, pedidoVentaIdLocalParam),
          ),
        ),
      ],
    );
  }

  void deletePedidoVentaLinea(PedidoVentaLinea pedidoVentaLinea) {}

  void updatePedidoVentaLinea(
      BuildContext context,
      String clienteId,
      PedidoVentaLinea pedidoVentaLinea,
      int i,
      EntityIdIsLocalParam pedidoVentaIdIsLocalParam) {
    final seleccionarCantidadParam = SeleccionarCantidadParam(
      pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
      clienteId: clienteId,
      articuloId: pedidoVentaLinea.articuloId,
      cantidad: pedidoVentaLinea.cantidad.toInt(),
      posicionLineaActualizar: i,
    );
    if (pedidoVentaIdIsLocalParam.isNew) {
      context.goNamed(AppRoutes.pedidoventanewseleccionarcantidad.name,
          extra: seleccionarCantidadParam);
    } else {
      context.goNamed(
        AppRoutes.pedidoventaeditseleccionarcantidad.name,
        params: {'id': pedidoVentaIdIsLocalParam.id},
        extra: seleccionarCantidadParam,
      );
    }
  }

  void navigateToAddArticulo(BuildContext context, String clienteId,
      EntityIdIsLocalParam pedidoVentaIdIsLocalParam) {
    final seleccionarCantidadParam = SeleccionarCantidadParam(
      pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
      clienteId: clienteId,
    );
    if (pedidoVentaIdIsLocalParam.isNew) {
      context.goNamed(AppRoutes.pedidoventanewseleccionarcantidad.name,
          extra: seleccionarCantidadParam);
    } else {
      context.goNamed(
        AppRoutes.pedidoventaeditseleccionarcantidad.name,
        params: {'id': pedidoVentaIdIsLocalParam.id},
        extra: seleccionarCantidadParam,
      );
    }
  }
}

class StepObservacionesContent extends ConsumerWidget {
  const StepObservacionesContent(
      {super.key,
      required this.pedidoVentaIdLocalParam,
      required this.observaciones,
      required this.state,
      required this.isActive});

  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final String? observaciones;
  final IconStepState state;
  final bool isActive;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: FormBuilder(
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormBuilderTextField(
              name: 'observaciones',
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 3,
              initialValue: observaciones,
              decoration: const InputDecoration(
                labelText: 'Observaciones',
              ),
              onChanged: (value) => ref
                  .read(pedidoVentaEditPageControllerProvider(
                          pedidoVentaIdLocalParam)
                      .notifier)
                  .setObservaciones(value),
            ),
          ],
        ),
      ),
    );
  }
}

class StepResumenContent extends StatelessWidget {
  const StepResumenContent({
    super.key,
    required this.pedidoVentaIdLocalParam,
    required this.state,
    required this.isActive,
    required this.cliente,
    required this.pedidoVentaLineaList,
    required this.observaciones,
  });

  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final IconStepState state;
  final bool isActive;
  final Cliente? cliente;
  final List<PedidoVentaLinea> pedidoVentaLineaList;
  final String? observaciones;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(
                      0.2,
                    ),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: ClienteListaTile(
                          cliente: cliente!,
                        ),
                      ),
                      gapW4,
                      Icon(
                        Icons.navigate_next,
                        color: Theme.of(context).textTheme.caption!.color,
                      )
                    ],
                  ),
                ),
              ),
              gapH8,
              if (observaciones != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue: 'Observaciones',
                  value: observaciones,
                ),
              if (observaciones != null) const Divider(),
              RowFieldTextDetalle(
                  fieldTitleValue: 'Total',
                  value: getImporteTotal(
                      pedidoVentaLineaList, cliente!.divisa!.id)),
            ],
          ),
        ),
        const MobileCustomSeparators(separatorTitle: 'Líneas'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, i) => PedidoVentaLineaNuevoTile(
              pedidoVentaLinea: pedidoVentaLineaList[i],
            ),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: pedidoVentaLineaList.length,
          ),
        ),
      ],
    );
  }

  String getImporteTotal(
      List<PedidoVentaLinea> pedidoVentaLineaList, String divisaId) {
    Money total = Money.parse('0', code: divisaId);
    for (var i = 0; i < pedidoVentaLineaList.length; i++) {
      total = total + pedidoVentaLineaList[i].importeLinea!;
    }

    return total.toString();
  }
}
