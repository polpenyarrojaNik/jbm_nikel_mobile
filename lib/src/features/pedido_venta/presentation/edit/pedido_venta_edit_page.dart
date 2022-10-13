import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/index/cliente_lista_tile.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_direccion_page.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_linea_nuevo_tile.dart';
import 'package:money2/money2.dart';
import 'package:uuid/uuid.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/slider_background.dart';
import '../../../../core/presentation/toasts.dart';
import '../../../articulos/domain/articulo.dart';
import '../../../articulos/presentation/index/articulo_search_state_provider.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/domain/cliente_direccion.dart';
import '../../../cliente/infrastructure/cliente_repository.dart';
import '../../../cliente/presentation/index/cliente_search_state.dart';
import '../../domain/pedido_venta_linea.dart';
import '../../domain/seleccionar_cantidad_param.dart';
import '../../infrastructure/pedido_venta_repository.dart';
import '../index/pedido_search_state.dart';
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
          saved: (pedidoVentaAppId) {
            ref.invalidate(pedidoVentaProvider(pedidoVentaIdLocalParam!));
            ref.invalidate(pedidoVentaLineaProvider(pedidoVentaIdLocalParam!));
            ref.invalidate(pedidosSearchResultsProvider);
            context.router.pop();
          },
          deleted: () => context.router.popUntilRouteWithName('/pedido'),
          savedError: (_, __, ___, ____, _____, ______, error, _______) =>
              context.showErrorBar(
            duration: const Duration(seconds: 5),
            content: Text((error is AppException)
                ? error.details.message
                : error.toString()),
          ),
          orElse: () => null,
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          (widget.isNew)
              ? S.of(context).pedido_edit_pedidoEdit_nuevoPedido
              : S.of(context).pedido_edit_pedidoEdit_editarPedido,
        ),
      ),
      body: SafeArea(
        child: state.maybeWhen(
          orElse: () => const ProgressIndicatorWidget(),
          data: (
            cliente,
            clienteDireccion,
            pedidoVentaLineaList,
            currentStep,
            observaciones,
            pedidoCliente,
          ) =>
              PedidoVentaEditForm(
            isNew: widget.isNew,
            pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
            cliente: cliente,
            clienteDireccion: clienteDireccion,
            pedidoVentaLineaList: pedidoVentaLineaList,
            currentStep: currentStep,
            observaciones: observaciones,
            pedidoCliente: pedidoCliente,
          ),
          error: (Object error, StackTrace? _) => ErrorMessageWidget(
            (error is AppException) ? error.details.message : error.toString(),
          ),
          savedError: (cliente, clienteDireccion, pedidoVentaLineaList,
                  currentStep, observaciones, pedidoCliente, error, _) =>
              PedidoVentaEditForm(
            isNew: widget.isNew,
            pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
            cliente: cliente,
            clienteDireccion: clienteDireccion,
            pedidoVentaLineaList: pedidoVentaLineaList,
            currentStep: currentStep,
            observaciones: observaciones,
            pedidoCliente: pedidoCliente,
          ),
        ),
      ),
    );
  }
}

class PedidoVentaEditForm extends ConsumerStatefulWidget {
  const PedidoVentaEditForm({
    super.key,
    required this.isNew,
    required this.pedidoVentaIdLocalParam,
    required this.cliente,
    required this.clienteDireccion,
    required this.pedidoVentaLineaList,
    required this.currentStep,
    required this.observaciones,
    required this.pedidoCliente,
  });

  final bool isNew;
  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final Cliente? cliente;
  final ClienteDireccion? clienteDireccion;
  final List<PedidoVentaLinea> pedidoVentaLineaList;
  final int currentStep;
  final String? observaciones;
  final String? pedidoCliente;

  @override
  ConsumerState<PedidoVentaEditForm> createState() =>
      _PedidoVentaEditFormState();
}

class _PedidoVentaEditFormState extends ConsumerState<PedidoVentaEditForm> {
  @override
  Widget build(BuildContext context) {
    ref.listen<Cliente?>(clienteForFromStateProvider, (_, state) {
      if (state != null) {
        ref
            .read(pedidoVentaEditPageControllerProvider(
                    widget.pedidoVentaIdLocalParam)
                .notifier)
            .selectCliente(cliente: state);
      }
    });

    return WillPopScope(
      onWillPop: () async => _askIfUserPop(context),
      child: IconStepper(
        currentStep: widget.currentStep,
        steps: getSteps(),
        type: IconStepperType.horizontal,
        onStepContinue: () => continued(context, widget.currentStep, ref),
        onStepCancel: (widget.currentStep <= 0) ? null : () => cancel(ref),
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
            .read(pedidoVentaEditPageControllerProvider(
                    widget.pedidoVentaIdLocalParam)
                .notifier)
            .navigateToNextStep();
        break;
      case 3:
        ref
            .read(pedidoVentaEditPageControllerProvider(
                    widget.pedidoVentaIdLocalParam)
                .notifier)
            .upsertPedidoVenta(
              pedidoVentaAppId: widget.pedidoVentaIdLocalParam.id,
              cliente: widget.cliente!,
              clienteDireccion: widget.clienteDireccion,
              pedidoVentaLineaList: widget.pedidoVentaLineaList,
              observaciones: widget.observaciones,
              pedidoCliente: widget.pedidoCliente,
            );
        break;
      default:
        ref
            .read(pedidoVentaEditPageControllerProvider(
                    widget.pedidoVentaIdLocalParam)
                .notifier)
            .navigateToNextStep();
    }
  }

  void cancel(WidgetRef ref) {
    ref
        .read(pedidoVentaEditPageControllerProvider(
                widget.pedidoVentaIdLocalParam)
            .notifier)
        .navigateToPreviousStep();
  }

  void tapped(int value, WidgetRef ref) {
    ref
        .read(pedidoVentaEditPageControllerProvider(
                widget.pedidoVentaIdLocalParam)
            .notifier)
        .navigateToNextStep();
  }

  void selectClienteValidate(BuildContext context, WidgetRef ref) {
    if (widget.cliente != null) {
      ref
          .read(pedidoVentaEditPageControllerProvider(
                  widget.pedidoVentaIdLocalParam)
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
    if (widget.pedidoVentaLineaList.isNotEmpty) {
      ref
          .read(pedidoVentaEditPageControllerProvider(
                  widget.pedidoVentaIdLocalParam)
              .notifier)
          .navigateToNextStep();
    } else {
      showToast(S.of(context).pedido_edit_pedidoEdit_anadeAlgunaLinea, context);
    }
  }

  List<IconStep> getSteps() {
    return [
      IconStep(
        icon: Icons.account_circle,
        content: StepSelectClienteContent(
          cliente: widget.cliente,
          clienteDireccion: widget.clienteDireccion,
          pedidoVentaIdLocalParam: widget.pedidoVentaIdLocalParam,
          isNew: widget.isNew,
        ),
        state: widget.currentStep >= 0
            ? (widget.currentStep == 0
                ? IconStepState.editing
                : IconStepState.complete)
            : IconStepState.disabled,
        isActive: widget.currentStep >= 0,
      ),
      IconStep(
        icon: Icons.list_alt,
        content: StepArticuloListContent(
          pedidoVentaIdIsLocalParam: widget.pedidoVentaIdLocalParam,
          cliente: widget.cliente,
          state: widget.currentStep >= 1
              ? (widget.currentStep == 1
                  ? IconStepState.editing
                  : IconStepState.complete)
              : IconStepState.disabled,
          isActive: true,
          pedidoVentaLineaList: widget.pedidoVentaLineaList,
        ),
      ),
      IconStep(
        icon: Icons.note,
        content: StepObservacionesContent(
          pedidoVentaIdLocalParam: widget.pedidoVentaIdLocalParam,
          state: widget.currentStep >= 2
              ? (widget.currentStep == 2
                  ? IconStepState.editing
                  : IconStepState.complete)
              : IconStepState.disabled,
          isActive: true,
          observaciones: widget.observaciones,
          pedidoCliente: widget.pedidoCliente,
        ),
      ),
      IconStep(
        icon: Icons.summarize_sharp,
        content: StepResumenContent(
          pedidoVentaIdLocalParam: widget.pedidoVentaIdLocalParam,
          state: widget.currentStep >= 3
              ? (widget.currentStep == 3
                  ? IconStepState.editing
                  : IconStepState.complete)
              : IconStepState.disabled,
          isActive: true,
          cliente: widget.cliente,
          clienteDireccion: widget.clienteDireccion,
          pedidoVentaLineaList: widget.pedidoVentaLineaList,
          observaciones: widget.observaciones,
          pedidoCliente: widget.pedidoCliente,
        ),
      ),
    ];
  }
}

class StepSelectClienteContent extends ConsumerStatefulWidget {
  const StepSelectClienteContent(
      {super.key,
      required this.cliente,
      required this.clienteDireccion,
      required this.pedidoVentaIdLocalParam,
      required this.isNew});

  final Cliente? cliente;
  final ClienteDireccion? clienteDireccion;
  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
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
                child: Text(
                  S.of(context).pedido_edit_pedidoEdit_seleccioneCliente,
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      ref.listen<AsyncValue<List<ClienteDireccion>>>(
          clienteDireccionProvider(widget.cliente!.id), (_, state) {
        state.whenData((clienteDireccionesList) {
          for (var i = 0; i < clienteDireccionesList.length; i++) {
            if (widget.isNew) {
              if (clienteDireccionesList[i].predeterminada) {
                ref
                    .read(pedidoVentaEditPageControllerProvider(
                            widget.pedidoVentaIdLocalParam)
                        .notifier)
                    .selectDireccion(
                        clienteDireccion: clienteDireccionesList[i]);
              }
            }
          }
        });
      });
      final state = ref.watch(clienteDireccionProvider(widget.cliente!.id));
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
                  child: ClienteListaTile(
                    cliente: widget.cliente!,
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MobileCustomSeparators(
                  separatorTitle:
                      S.of(context).pedido_edit_pedidoEdit_direccionesEnvio),
              gapH16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () => ref
                      .read(pedidoVentaEditPageControllerProvider(
                              widget.pedidoVentaIdLocalParam)
                          .notifier)
                      .selectDireccion(clienteDireccion: null),
                  child: Container(
                    color: (widget.clienteDireccion == null)
                        ? Theme.of(context).colorScheme.secondaryContainer
                        : Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClienteListaTile(
                        cliente: widget.cliente!,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              state.when(
                data: (clienteDireccionesList) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: clienteDireccionesList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () => ref
                          .read(pedidoVentaEditPageControllerProvider(
                                  widget.pedidoVentaIdLocalParam)
                              .notifier)
                          .selectDireccion(
                              clienteDireccion: clienteDireccionesList[i]),
                      child: Container(
                        color: (widget.clienteDireccion != null &&
                                widget.clienteDireccion!.direccionId ==
                                    clienteDireccionesList[i].direccionId)
                            ? Theme.of(context).colorScheme.secondaryContainer
                            : null,
                        child: ClienteDireccionTile(
                            clienteDireccion: clienteDireccionesList[i]),
                      ),
                    ),
                    separatorBuilder: (context, i) => const Divider(),
                  ),
                ),
                error: (error, _) => ErrorMessageWidget(error.toString()),
                loading: () => const ProgressIndicatorWidget(),
              ),
            ],
          ),
        ],
      );
    }
  }

  void navigateToSelectCliente(BuildContext context, bool isNew) async {
    if (isNew) {
      context.router.push(
        ClienteListaRoute(isSearchClienteForFrom: true),
      );
    } else {
      return showToast(
        S.of(context).pedido_edit_pedidoEdit_noPuedesCambiarCliente,
        context,
      );
    }
  }
}

class StepArticuloListContent extends ConsumerWidget {
  const StepArticuloListContent(
      {super.key,
      required this.pedidoVentaIdIsLocalParam,
      required this.cliente,
      required this.state,
      required this.isActive,
      required this.pedidoVentaLineaList});

  final EntityIdIsLocalParam pedidoVentaIdIsLocalParam;
  final Cliente? cliente;
  final IconStepState state;
  final bool isActive;
  final List<PedidoVentaLinea> pedidoVentaLineaList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<Articulo?>(
      articuloForFromStateProvider,
      (_, state) => setArtiucloValue(
          context: context,
          clienteId: cliente!.id,
          pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
          newArticuloValue: state),
    );
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
                            pedidoVentaIdIsLocalParam,
                          ),
                          child: Dismissible(
                            key: UniqueKey(),
                            background: const SliderBackround(),
                            onDismissed: (_) => deletePedidoVentaLinea(
                                pedidoVentaLineaList[i], ref),
                            child: PedidoVentaLineaNuevoTile(
                              pedidoVentaLinea: pedidoVentaLineaList[i],
                            ),
                          ),
                        ),
                      )
                    : Center(
                        child: Text(
                          S.of(context).pedido_edit_pedidoEdit_sinArticulos,
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
                context, cliente!.id, pedidoVentaIdIsLocalParam),
          ),
        ),
      ],
    );
  }

  void deletePedidoVentaLinea(
      PedidoVentaLinea pedidoVentaLinea, WidgetRef ref) {
    ref
        .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdIsLocalParam)
            .notifier)
        .deletePedidoVentaLinea(pedidoVentaLineaToDelete: pedidoVentaLinea);
  }

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
    context.router.push(SeleccionarCantidadRoute(
        seleccionarCantidadParam: seleccionarCantidadParam));
  }

  void navigateToAddArticulo(BuildContext context, String clienteId,
      EntityIdIsLocalParam pedidoVentaIdIsLocalParam) {
    context.router.push(
      ArticuloListaRoute(isSearchArticuloForForm: true),
    );
  }

  void setArtiucloValue(
      {required BuildContext context,
      required String clienteId,
      required EntityIdIsLocalParam pedidoVentaIdIsLocalParam,
      Articulo? newArticuloValue}) {
    if (newArticuloValue != null) {
      final seleccionarCantidadParam = SeleccionarCantidadParam(
        pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
        clienteId: clienteId,
        articuloId: newArticuloValue.id,
      );

      context.router.push(
        SeleccionarCantidadRoute(
          seleccionarCantidadParam: seleccionarCantidadParam,
        ),
      );
    }
  }
}

class StepObservacionesContent extends ConsumerWidget {
  const StepObservacionesContent(
      {super.key,
      required this.pedidoVentaIdLocalParam,
      required this.observaciones,
      required this.pedidoCliente,
      required this.state,
      required this.isActive});

  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final String? observaciones;
  final String? pedidoCliente;
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
              name: 'pedidoCliente',
              keyboardType: TextInputType.multiline,
              initialValue: pedidoCliente,
              decoration: InputDecoration(
                labelText: S.of(context).pedido_edit_pedidoEdit_pedidoCliente,
              ),
              onChanged: (value) => ref
                  .read(pedidoVentaEditPageControllerProvider(
                          pedidoVentaIdLocalParam)
                      .notifier)
                  .setPedidoCliente(value),
            ),
            FormBuilderTextField(
              name: 'observaciones',
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 3,
              initialValue: observaciones,
              decoration: InputDecoration(
                labelText: S.of(context).pedido_edit_pedidoEdit_observaciones,
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
    required this.clienteDireccion,
    required this.pedidoVentaLineaList,
    required this.observaciones,
    required this.pedidoCliente,
  });

  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final IconStepState state;
  final bool isActive;
  final Cliente? cliente;
  final ClienteDireccion? clienteDireccion;
  final List<PedidoVentaLinea> pedidoVentaLineaList;
  final String? observaciones;
  final String? pedidoCliente;

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
                  child: ClienteListaTile(
                    cliente: cliente!,
                  ),
                ),
              ),
              gapH8,
              if (pedidoCliente != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).pedido_edit_pedidoEdit_pedidoCliente,
                  value: pedidoCliente,
                ),
              if (observaciones != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).pedido_edit_pedidoEdit_observaciones,
                  value: observaciones,
                ),
              if (observaciones != null) const Divider(),
              RowFieldTextDetalle(
                fieldTitleValue: S.of(context).pedido_edit_pedidoEdit_total,
                value:
                    getImporteTotal(pedidoVentaLineaList, cliente!.divisa!.id),
              ),
            ],
          ),
        ),
        MobileCustomSeparators(
            separatorTitle: S.of(context).pedido_edit_pedidoEdit_lineas),
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
      if (pedidoVentaLineaList[i].importeLinea != null) {
        total = total + pedidoVentaLineaList[i].importeLinea!;
      }
    }

    return total.toString();
  }
}
