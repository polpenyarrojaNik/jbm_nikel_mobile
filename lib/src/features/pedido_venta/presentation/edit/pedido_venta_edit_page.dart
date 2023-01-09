import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/index/cliente_lista_tile.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_direccion_page.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_linea_nuevo_tile.dart';
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
import '../../../articulos/presentation/index/articulo_search_controller.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/domain/cliente_direccion.dart';
import '../../../cliente/infrastructure/cliente_repository.dart';
import '../../../cliente/presentation/index/cliente_search_controller.dart';
import '../../domain/pedido_venta_linea.dart';
import '../../domain/seleccionar_cantidad_param.dart';
import '../../infrastructure/pedido_venta_repository.dart';
import '../index/pedido_search_controller.dart';
import 'ask_pop_alert_dialog.dart';
import 'crear_csv_controller.dart';
import 'icon_stepper.dart';

class PedidoVentaEditPage extends ConsumerStatefulWidget {
  PedidoVentaEditPage(
      {super.key, String? id, bool? isNew, this.createPedidoFromClienteId})
      : id = id ?? const Uuid().v4(),
        isNew = id == null ? true : false;

  final String id;
  final bool isNew;
  final String? createPedidoFromClienteId;

  @override
  ConsumerState<PedidoVentaEditPage> createState() =>
      _PedidoVentaEditPageState();
}

class _PedidoVentaEditPageState extends ConsumerState<PedidoVentaEditPage> {
  EntityIdIsLocalParam? pedidoVentaIdLocalParam;

  @override
  void initState() {
    super.initState();
    pedidoVentaIdLocalParam = EntityIdIsLocalParam(
      id: widget.id,
      isLocal: true,
      isNew: widget.isNew,
      createPedidoFromClienteId: widget.createPedidoFromClienteId,
    );
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
            if (!widget.isNew) {
              ref.invalidate(pedidoVentaProvider(pedidoVentaIdLocalParam!));
              ref.invalidate(
                  pedidoVentaLineaProvider(pedidoVentaIdLocalParam!));
            }
            ref.invalidate(pedidoVentaIndexScreenPaginatedControllerProvider);
            ref.invalidate(pedidoVentaIndexScreenControllerProvider);
            context.router.pop();
          },
          deleted: () => context.router.popUntilRouteWithName('/pedido'),
          savedError: (_, __, ___, ____, _____, ______, _________, __________,
                  error, _______) =>
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

    ref.listen<CrearCsvControllerState>(
        crearCsvControllerProvider,
        (_, state) => state.maybeWhen(
              orElse: () => null,
              loading: () =>
                  showToast('Creating csv file to send mail...', context),
              data: (csvFile) => openFile(csvFile),
            ));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          (widget.isNew)
              ? S.of(context).pedido_edit_pedidoEdit_nuevoPedido
              : S.of(context).pedido_edit_pedidoEdit_editarPedido,
        ),
        actions: state.maybeWhen(
            orElse: () => null,
            savedError: (_, __, pedidoVentaLineasList, ____, _____, ______,
                    _________, __________, error, _______) =>
                [
                  IconButton(
                      icon: const Icon(Icons.share),
                      onPressed: () =>
                          createCsvFile(widget.id, pedidoVentaLineasList)),
                ]),
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
            oferta,
            ofertaFechaHasta,
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
            oferta: oferta,
            ofertaFechaHasta: ofertaFechaHasta,
          ),
          error: (Object error, StackTrace? _) => ErrorMessageWidget(
            (error is AppException) ? error.details.message : error.toString(),
          ),
          savedError: (cliente,
                  clienteDireccion,
                  pedidoVentaLineaList,
                  currentStep,
                  observaciones,
                  pedidoCliente,
                  oferta,
                  ofertaFechaHasta,
                  error,
                  _) =>
              PedidoVentaEditForm(
            isNew: widget.isNew,
            pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
            cliente: cliente,
            clienteDireccion: clienteDireccion,
            pedidoVentaLineaList: pedidoVentaLineaList,
            currentStep: currentStep,
            observaciones: observaciones,
            pedidoCliente: pedidoCliente,
            oferta: oferta,
            ofertaFechaHasta: ofertaFechaHasta,
          ),
        ),
      ),
    );
  }

  void createCsvFile(String pedidoVentaAppId,
      List<PedidoVentaLinea> pedidoVentaLineaList) async {
    ref.read(crearCsvControllerProvider.notifier).crearCsvController(
        pedidoVentaAppId: pedidoVentaAppId,
        pedidoVentaLineaList: pedidoVentaLineaList);
  }

  void openFile(File csvFile) async {
    try {
      final res = await OpenFile.open(csvFile.path)
          .catchError((error, _) => throw error);

      print(res.message);
    } catch (e) {
      print(e);
    }
  }
}

class PedidoVentaEditForm extends ConsumerWidget {
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
    required this.oferta,
    required this.ofertaFechaHasta,
  });

  final bool isNew;
  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final Cliente? cliente;
  final ClienteDireccion? clienteDireccion;
  final List<PedidoVentaLinea> pedidoVentaLineaList;
  final int currentStep;
  final String? observaciones;
  final String? pedidoCliente;
  final bool oferta;
  final DateTime? ofertaFechaHasta;

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
        selectClienteDireccionValidate(context, ref);
        break;
      case 2:
        selectLineasValidate(context, ref);
        break;
      case 3:
        remarksValidate(context, ref);
        break;
      case 4:
        ref
            .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
                .notifier)
            .upsertPedidoVenta(
              pedidoVentaAppId: pedidoVentaIdLocalParam.id,
              cliente: cliente!,
              clienteDireccion: clienteDireccion,
              pedidoVentaLineaList: pedidoVentaLineaList,
              observaciones: observaciones,
              pedidoCliente: pedidoCliente,
              oferta: oferta,
              ofertaFechaHasta: ofertaFechaHasta,
            );
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

  void selectClienteDireccionValidate(BuildContext context, WidgetRef ref) {
    ref
        .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
            .notifier)
        .navigateToNextStep();
  }

  void selectLineasValidate(BuildContext context, WidgetRef ref) {
    if (pedidoVentaLineaList.isNotEmpty) {
      ref
          .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
              .notifier)
          .navigateToNextStep();
    } else {
      showToast(S.of(context).pedido_edit_pedidoEdit_anadeAlgunaLinea, context);
    }
  }

  void remarksValidate(BuildContext context, WidgetRef ref) {
    if (!oferta || oferta && ofertaFechaHasta != null) {
      ref
          .read(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam)
              .notifier)
          .navigateToNextStep();
    } else {
      showToast(
        S.of(context).pedido_edit_pedidoEdit_fechaValidezNoPuedeEstarVacia,
        context,
      );
    }
  }

  List<IconStep> getSteps() {
    return [
      IconStep(
        icon: Icons.account_circle,
        content: StepSelectClienteContent(
          cliente: cliente,
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam,
          isNew: isNew,
        ),
        state: (currentStep >= 0)
            ? (currentStep == 0
                ? IconStepState.editing
                : IconStepState.complete)
            : IconStepState.disabled,
        isActive: currentStep >= 0,
      ),
      IconStep(
        icon: Icons.location_on,
        content: StepSelectClienteDireccionContent(
          cliente: cliente,
          clienteDireccion: clienteDireccion,
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam,
          isNew: isNew,
        ),
        state: (currentStep >= 1)
            ? (currentStep == 1)
                ? IconStepState.editing
                : IconStepState.complete
            : IconStepState.disabled,
        isActive: true,
      ),
      IconStep(
        icon: Icons.list_alt,
        content: StepArticuloListContent(
          pedidoVentaIdIsLocalParam: pedidoVentaIdLocalParam,
          cliente: cliente,
          pedidoVentaLineaList: pedidoVentaLineaList,
        ),
        state: (currentStep >= 2)
            ? (currentStep == 2)
                ? IconStepState.editing
                : IconStepState.complete
            : IconStepState.disabled,
        isActive: true,
      ),
      IconStep(
        icon: Icons.more_horiz,
        content: StepObservacionesContent(
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam,
          observaciones: observaciones,
          pedidoCliente: pedidoCliente,
          oferta: oferta,
          ofertaFechaHasta: ofertaFechaHasta,
          isClientePotencial: cliente?.clientePotencial ?? false,
        ),
        state: (currentStep >= 3)
            ? (currentStep == 3)
                ? IconStepState.editing
                : IconStepState.complete
            : IconStepState.disabled,
        isActive: true,
      ),
      IconStep(
        icon: Icons.summarize,
        content: StepResumenContent(
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam,
          cliente: cliente,
          clienteDireccion: clienteDireccion,
          pedidoVentaLineaList: pedidoVentaLineaList,
          observaciones: observaciones,
          pedidoCliente: pedidoCliente,
          oferta: oferta,
          ofertaFechaHasta: ofertaFechaHasta,
        ),
        state: currentStep >= 4
            ? (currentStep == 4)
                ? IconStepState.editing
                : IconStepState.complete
            : IconStepState.disabled,
        isActive: true,
      ),
    ];
  }
}

class StepSelectClienteContent extends ConsumerStatefulWidget {
  const StepSelectClienteContent(
      {super.key,
      required this.cliente,
      required this.pedidoVentaIdLocalParam,
      required this.isNew});

  final Cliente? cliente;
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
      return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => navigateToSelectCliente(context, widget.isNew),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
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
                      IconButton(
                        onPressed: () =>
                            navigateToSelectCliente(context, widget.isNew),
                        icon: const Icon(Icons.navigate_next_outlined),
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

class StepSelectClienteDireccionContent extends ConsumerWidget {
  const StepSelectClienteDireccionContent(
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
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<List<ClienteDireccion>>>(
      clienteDireccionProvider(cliente!.id),
      (_, state) {
        state.whenData(
          (clienteDireccionesList) {
            for (var i = 0; i < clienteDireccionesList.length; i++) {
              if (isNew) {
                if (clienteDireccionesList[i].predeterminada) {
                  ref
                      .read(pedidoVentaEditPageControllerProvider(
                              pedidoVentaIdLocalParam)
                          .notifier)
                      .selectDireccion(
                          clienteDireccion: clienteDireccionesList[i]);
                }
              }
            }
          },
        );
      },
    );
    final state = ref.watch(clienteDireccionProvider(cliente!.id));
    return state.when(
      data: (clienteDireccionesList) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: clienteDireccionesList.length,
          itemBuilder: (context, i) => GestureDetector(
            onTap: () => ref
                .read(pedidoVentaEditPageControllerProvider(
                        pedidoVentaIdLocalParam)
                    .notifier)
                .selectDireccion(
                    clienteDireccion: (clienteDireccion != null &&
                            clienteDireccion!.direccionId ==
                                clienteDireccionesList[i].direccionId)
                        ? null
                        : clienteDireccionesList[i]),
            child: Container(
              color: (clienteDireccion != null &&
                      clienteDireccion!.direccionId ==
                          clienteDireccionesList[i].direccionId)
                  ? Theme.of(context).colorScheme.secondaryContainer
                  : Colors.transparent,
              child: ClienteDireccionTile(
                  clienteDireccion: clienteDireccionesList[i]),
            ),
          ),
          separatorBuilder: (context, i) => const Divider(),
        ),
      ),
      error: (error, _) => ErrorMessageWidget(error.toString()),
      loading: () => const ProgressIndicatorWidget(),
    );
  }
}

class StepArticuloListContent extends ConsumerWidget {
  const StepArticuloListContent(
      {super.key,
      required this.pedidoVentaIdIsLocalParam,
      required this.cliente,
      required this.pedidoVentaLineaList});

  final EntityIdIsLocalParam pedidoVentaIdIsLocalParam;
  final Cliente? cliente;
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(S.of(context).pedido_edit_pedidoEdit_totalLineas),
                  Text(
                    ref
                        .read(pedidoVentaRepositoryProvider)
                        .getBaseImponible(
                            pedidoVentaLineaList, cliente!.divisa!.id)
                        .toString(),
                    style: Theme.of(context).textTheme.subtitle2,
                  )
                ],
              ),
            ),
            const Divider(),
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
        precio: pedidoVentaLinea.precioDivisa.amount.toDecimal().toDouble(),
        articuloId: pedidoVentaLinea.articuloId,
        cantidad: pedidoVentaLinea.cantidad.toInt(),
        descuento1: pedidoVentaLinea.descuento1,
        descuento2: pedidoVentaLinea.descuento2,
        posicionLinea: i,
        createdFromCliente:
            pedidoVentaIdIsLocalParam.createPedidoFromClienteId != null);
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
        posicionLinea: pedidoVentaLineaList.length,
        createdFromCliente:
            pedidoVentaIdIsLocalParam.createPedidoFromClienteId != null,
      );

      context.router.push(
        SeleccionarCantidadRoute(
          seleccionarCantidadParam: seleccionarCantidadParam,
        ),
      );
    }
  }
}

class StepObservacionesContent extends ConsumerStatefulWidget {
  const StepObservacionesContent({
    super.key,
    required this.pedidoVentaIdLocalParam,
    required this.observaciones,
    required this.pedidoCliente,
    required this.oferta,
    required this.ofertaFechaHasta,
    required this.isClientePotencial,
  });

  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final String? observaciones;
  final String? pedidoCliente;
  final bool oferta;
  final DateTime? ofertaFechaHasta;
  final bool isClientePotencial;

  @override
  ConsumerState<StepObservacionesContent> createState() =>
      _StepObservacionesContentState();
}

class _StepObservacionesContentState
    extends ConsumerState<StepObservacionesContent> {
  final TextEditingController ofertaFechaHastaController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    ofertaFechaHastaController.text = (widget.ofertaFechaHasta != null)
        ? dateFormatter(widget.ofertaFechaHasta!.toLocal().toIso8601String())
        : '';
  }

  @override
  void dispose() {
    super.dispose();
    ofertaFechaHastaController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: FormBuilder(
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormBuilderSwitch(
                name: 'oferta',
                title: Text(S.of(context).pedido_edit_pedidoEdit_oferta),
                initialValue: widget.oferta,
                enabled: !widget.isClientePotencial,
                onChanged: (value) => ref
                    .read(pedidoVentaEditPageControllerProvider(
                            widget.pedidoVentaIdLocalParam)
                        .notifier)
                    .setOfertaSN(value),
              ),
              FormBuilderTextField(
                name: 'ofertaFechaHasta',
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: 'Fecha validez oferta',
                ),
                readOnly: true,
                enabled: widget.oferta,
                controller: ofertaFechaHastaController,
                onTap: () => selectDate(context, ref, widget.ofertaFechaHasta),
              ),
              FormBuilderTextField(
                name: 'pedidoCliente',
                keyboardType: TextInputType.multiline,
                initialValue: widget.pedidoCliente,
                decoration: InputDecoration(
                  labelText: S.of(context).pedido_edit_pedidoEdit_pedidoCliente,
                ),
                onChanged: (value) => ref
                    .read(pedidoVentaEditPageControllerProvider(
                            widget.pedidoVentaIdLocalParam)
                        .notifier)
                    .setPedidoCliente(value),
              ),
              FormBuilderTextField(
                name: 'observaciones',
                keyboardType: TextInputType.multiline,
                maxLines: null,
                minLines: 3,
                initialValue: widget.observaciones,
                decoration: InputDecoration(
                  labelText: S.of(context).pedido_edit_pedidoEdit_observaciones,
                ),
                onChanged: (value) => ref
                    .read(pedidoVentaEditPageControllerProvider(
                            widget.pedidoVentaIdLocalParam)
                        .notifier)
                    .setObservaciones(value),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void selectDate(
      BuildContext context, WidgetRef ref, DateTime? ofertaFechaHasta) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: ofertaFechaHasta?.toLocal() ?? DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    ref
        .read(pedidoVentaEditPageControllerProvider(
                widget.pedidoVentaIdLocalParam)
            .notifier)
        .setOfertaFechaHasta(selectedDate);

    ofertaFechaHastaController.text = (selectedDate != null)
        ? dateFormatter(selectedDate.toLocal().toIso8601String())
        : '';
  }
}

class StepResumenContent extends ConsumerWidget {
  const StepResumenContent({
    super.key,
    required this.pedidoVentaIdLocalParam,
    required this.cliente,
    required this.clienteDireccion,
    required this.pedidoVentaLineaList,
    required this.observaciones,
    required this.pedidoCliente,
    required this.oferta,
    required this.ofertaFechaHasta,
  });

  final EntityIdIsLocalParam pedidoVentaIdLocalParam;

  final Cliente? cliente;
  final ClienteDireccion? clienteDireccion;
  final List<PedidoVentaLinea> pedidoVentaLineaList;
  final String? observaciones;
  final String? pedidoCliente;
  final bool oferta;
  final DateTime? ofertaFechaHasta;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).pedido_edit_pedidoEdit_oferta,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Theme.of(context).textTheme.caption!.color),
                  ),
                  Switch(value: oferta, onChanged: null),
                ],
              ),
              if (oferta)
                ColumnFieldTextDetalle(
                  fieldTitleValue: 'Oferta fecha hasta',
                  value: dateFormatter(
                      ofertaFechaHasta!.toLocal().toIso8601String()),
                ),
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
                fieldTitleValue:
                    S.of(context).pedido_edit_pedidoEdit_totalLineas,
                value: ref
                    .read(pedidoVentaRepositoryProvider)
                    .getBaseImponible(pedidoVentaLineaList, cliente!.divisa!.id)
                    .toString(),
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
            physics: const NeverScrollableScrollPhysics(),
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
}
