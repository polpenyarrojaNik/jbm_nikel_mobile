import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/index/articulo_search_state_provider.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/index/cliente_lista_tile.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_repository.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_linea_nuevo_tile.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_search_state.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/slider_background.dart';
import '../../../../core/presentation/toasts.dart';
import '../../../../core/routing/app_router.dart';
import '../../../articulos/domain/articulo.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/presentation/index/cliente_search_state.dart';
import '../../domain/pedido_venta.dart';
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
    pedidoVentaIdLocalParam = EntityIdIsLocalParam(
        id: (widget.isNew) ? null : widget.id, isLocal: true);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref
        .watch(pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam!));

    ref.listen<PedidoVentaEditPageControllerState>(
      pedidoVentaEditPageControllerProvider(pedidoVentaIdLocalParam!),
      (__, state) {
        state.maybeWhen(
          saved: (pedidoVenta) {
            ref.invalidate(pedidoVentaProvider(pedidoVentaIdLocalParam!));
            ref.invalidate(pedidosSearchResultsProvider);
            context.showSuccessBar(content: const Text('Saved'));
            context.goNamed(
              AppRoutes.visitashow.name,
              params: {
                'id': (pedidoVenta.pedidoVentaId != null)
                    ? pedidoVenta.pedidoVentaId!
                    : pedidoVenta.pedidoVentaAppId!
              },
              extra: pedidoVentaIdLocalParam!.isLocal,
            );
          },
          deleted: () => context.goNamed(
            AppRoutes.visitaindex.name,
          ),
          savedError: (_, error, __) => context.showErrorBar(
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
          (widget.isNew) ? 'Nuevo pedido' : 'Editar pedido',
        ),
      ),
      body: state.when(
        loading: () => const ProgressIndicatorWidget(),
        data: (pedidoVenta) => PedidoVentaEditForm(
          isNew: widget.isNew,
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
          pedidoVenta: pedidoVenta,
        ),
        error: (Object error, StackTrace? _) => ErrorMessageWidget(
          (error is AppException) ? error.details.message : error.toString(),
        ),
        saved: (pedidoVenta) => PedidoVentaEditForm(
          isNew: widget.isNew,
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
          pedidoVenta: pedidoVenta,
        ),
        saving: (pedidoVenta) => PedidoVentaEditForm(
          isNew: widget.isNew,
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
          pedidoVenta: pedidoVenta,
        ),
        savedError:
            (PedidoVenta pedidoVenta, Object error, StackTrace? stackTrace) =>
                PedidoVentaEditForm(
          isNew: widget.isNew,
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
          pedidoVenta: pedidoVenta,
        ),
        deleted: () => const ProgressIndicatorWidget(),
      ),
    );
  }
}

class PedidoVentaEditForm extends ConsumerStatefulWidget {
  const PedidoVentaEditForm(
      {super.key,
      required this.isNew,
      required this.pedidoVentaIdLocalParam,
      required this.pedidoVenta});

  final bool isNew;
  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final PedidoVenta? pedidoVenta;

  @override
  ConsumerState<PedidoVentaEditForm> createState() =>
      _PedidoVentaEditFormState();
}

class _PedidoVentaEditFormState extends ConsumerState<PedidoVentaEditForm> {
  int _currentStep = 0;
  Cliente? _cliente;
  final List<PedidoVentaLinea> pedidoVentaLineaList = [];

  @override
  void initState() {
    super.initState();
    _currentStep = (widget.pedidoVenta != null) ? 1 : 0;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pedidoVenta != null) {
      ref.listen<AsyncValue<Cliente>>(
          clienteProvider(widget.pedidoVenta!.clienteId!), (_, state) {
        state.whenData(
          (cliente) => setState(() {
            _cliente = cliente;
          }),
        );
      });
    }

    return WillPopScope(
      onWillPop: () async => _askIfUserPop(context),
      child: IconStepper(
        currentStep: _currentStep,
        steps: getSteps(),
        type: IconStepperType.horizontal,
        onStepContinue: () => continued(),
        onStepCancel: (_currentStep <= 0) ? null : () => cancel(),
        onStepTapped: (value) => tapped(value),
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

  void continued() {
    FocusScope.of(context).unfocus();
    switch (_currentStep) {
      case 0:
        selectClienteValidate();
        break;
      case 1:
        selectLineasValidate();
        break;
      case 2:
        setState(() => _currentStep += 1);
        break;
      case 3:
        //UpsertPedido
        break;
      default:
        if (_currentStep < 3) setState(() => _currentStep += 1);
    }
  }

  void cancel() {
    if (_currentStep > 0) {
      setState(() => _currentStep -= 1);
    }
  }

  void tapped(int value) {
    if (_currentStep > 0) {
      final removeCount = _currentStep - value;
      setState(() => _currentStep -= removeCount);
    }
  }

  void saveForm() async {}

  void selectClienteValidate() {
    if (_cliente != null) {
      setState(() => _currentStep += 1);
    } else {
      showToast(
        'Seleccione un cliente para continuar.',
        context,
      );
    }
  }

  void selectLineasValidate() {
    if (pedidoVentaLineaList.isNotEmpty) {
      setState(() => _currentStep += 1);
    } else {
      showToast('Añade alguna línea al pedido', context);
    }
  }

  void setFormInitalValues(PedidoVenta pedidoVenta) {
    setState(() {});
  }

  void setClientes(PedidoVenta? pedidoVenta) {
    final stateCliente = ref.watch(clienteProvider('22143'));

    stateCliente.whenData((cliente) => _cliente = cliente);
    setState(() {});
  }

  List<IconStep> getSteps() {
    return [
      IconStep(
        icon: Icons.account_circle,
        content: StepSelectClienteContent(
          cliente: _cliente,
          isNew: widget.isNew,
          clearPedidoVentaLista: () =>
              setState(() => pedidoVentaLineaList.clear()),
          clienteValueSetter: (value) => setState(() => _cliente = value),
        ),
        state: _currentStep >= 0
            ? (_currentStep == 0
                ? IconStepState.editing
                : IconStepState.complete)
            : IconStepState.disabled,
        isActive: _currentStep >= 0,
      ),
      IconStep(
        icon: Icons.account_circle,
        content: StepArticuloListContent(
          id: widget.pedidoVentaIdLocalParam.id,
          isNew: widget.isNew,
          cliente: _cliente,
          state: _currentStep >= 1
              ? (_currentStep == 1
                  ? IconStepState.editing
                  : IconStepState.complete)
              : IconStepState.disabled,
          isActive: true,
          pedidoVentaLineaList: pedidoVentaLineaList,
        ),
      ),
    ];
  }
}

class StepSelectClienteContent extends ConsumerStatefulWidget {
  const StepSelectClienteContent(
      {super.key,
      required this.cliente,
      required this.isNew,
      required this.clienteValueSetter,
      required this.clearPedidoVentaLista});

  final Cliente? cliente;
  final bool isNew;
  final Function(Cliente cliente) clienteValueSetter;
  final Function() clearPedidoVentaLista;

  @override
  ConsumerState<StepSelectClienteContent> createState() =>
      _StepSelectClienteContentState();
}

class _StepSelectClienteContentState
    extends ConsumerState<StepSelectClienteContent> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => navigateToSelectCliente(context, widget.isNew));
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<Cliente?>(clienteForFromStateProvider, (_, state) {
      if (state != null) {
        widget.clienteValueSetter(state);
        widget.clearPedidoVentaLista();
      }
    });
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
                //clipBehavior: Clip.hardEdge,
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

class StepArticuloListContent extends ConsumerStatefulWidget {
  const StepArticuloListContent(
      {super.key,
      required this.id,
      required this.isNew,
      required this.cliente,
      required this.state,
      required this.isActive,
      required this.pedidoVentaLineaList});

  final String? id;
  final bool isNew;
  final Cliente? cliente;
  final IconStepState state;
  final bool isActive;
  final List<PedidoVentaLinea> pedidoVentaLineaList;

  @override
  ConsumerState<StepArticuloListContent> createState() =>
      _StepArticuloListContentState();
}

class _StepArticuloListContentState
    extends ConsumerState<StepArticuloListContent> {
  @override
  Widget build(BuildContext context) {
    ref.listen<Articulo?>(
      articuloForFromStateProvider,
      (_, state) {
        if (state != null) {
          context.goNamed(
            (widget.isNew)
                ? AppRoutes.pedidoventanewseleccionarcantidad.name
                : AppRoutes.pedidoventaeditseleccionarcantidad.name,
            extra: SeleccionarCantidadParam(
                articuloId: state.id,
                clienteId: widget.cliente!.id,
                divisaId: widget.cliente!.divisa!.id,
                articuloPrecio: null),
          );
        }
      },
    );
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: (widget.pedidoVentaLineaList.isNotEmpty)
                    ? ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: widget.pedidoVentaLineaList.length,
                        itemBuilder: (context, i) => GestureDetector(
                          onTap: () => updatePedidoVentaLinea(
                            context,
                            widget.cliente!,
                            widget.pedidoVentaLineaList[i],
                            i,
                          ),
                          child: Dismissible(
                            key: UniqueKey(),
                            background: const SliderBackround(),
                            onDismissed: (_) => deletePedidoVentaLinea(
                                widget.pedidoVentaLineaList[i]),
                            child: PedidoVentaLineaNuevoTile(
                              pedidoVentaLinea: widget.pedidoVentaLineaList[i],
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
            onPressed: () => navigateToSearchArticles(
                context, widget.cliente, widget.isNew, widget.id),
          ),
        ),
      ],
    );
  }

  void deletePedidoVentaLinea(PedidoVentaLinea pedidoVentaLinea) {}

  void updatePedidoVentaLinea(BuildContext context, Cliente cliente,
      PedidoVentaLinea pedidoVentaLinea, int i) {}

  void navigateToSearchArticles(
      BuildContext context, Cliente? cliente, bool isNew, String? id) {
    if (isNew) {
      context.goNamed(AppRoutes.pedidoventanewsearcharticulo.name);
    } else {
      context.goNamed(
        AppRoutes.pedidoventaeditsearcharticulo.name,
        params: {'id': id!},
      );
    }
  }
}
