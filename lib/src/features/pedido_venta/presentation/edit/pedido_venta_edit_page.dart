import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_repository.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_search_state.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/toasts.dart';
import '../../../../core/routing/app_router.dart';
import '../../../cliente/domain/cliente.dart';
import '../../domain/pedido_venta.dart';
import 'ask_pop_alert_dialog.dart';

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
    final state =
        ref.watch(visitaEditPageControllerProvider(pedidoVentaIdLocalParam!));
    ref.listen<PedidoVentaEditPageControllerState>(
      visitaEditPageControllerProvider(pedidoVentaIdLocalParam!),
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
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
          pedidoVenta: pedidoVenta,
        ),
        error: (Object error, StackTrace? _) => ErrorMessageWidget(
          (error is AppException) ? error.details.message : error.toString(),
        ),
        saved: (pedidoVenta) => PedidoVentaEditForm(
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
          pedidoVenta: pedidoVenta,
        ),
        saving: (pedidoVenta) => PedidoVentaEditForm(
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
          pedidoVenta: pedidoVenta,
        ),
        savedError:
            (PedidoVenta pedidoVenta, Object error, StackTrace? stackTrace) =>
                PedidoVentaEditForm(
          pedidoVentaIdLocalParam: pedidoVentaIdLocalParam!,
          pedidoVenta: pedidoVenta,
        ),
        deleted: () => const ProgressIndicatorWidget(),
      ),
    );
  }
}

class PedidoVentaEditForm extends StatefulWidget {
  const PedidoVentaEditForm(
      {super.key,
      required this.pedidoVentaIdLocalParam,
      required this.pedidoVenta});

  final EntityIdIsLocalParam pedidoVentaIdLocalParam;
  final PedidoVenta? pedidoVenta;

  @override
  State<PedidoVentaEditForm> createState() => _PedidoVentaEditFormState();
}

class _PedidoVentaEditFormState extends State<PedidoVentaEditForm> {
  int _currentStep = 0;
  Cliente? _cliente;

  @override
  void initState() {
    super.initState();
    if (widget.pedidoVenta != null) {
      setFormInitalValues(widget.pedidoVenta!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => _askIfUserPop(context),
      child: Container(),
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
    // if (_customer != null) {
    //   setState(() => _currentStep += 1);
    // } else {
    showToast(
      'Seleccione un cliente para continuar.',
      context,
    );
    // }
  }

  void selectLineasValidate() {
    // if (salesOrderLineList.isNotEmpty) {
    //   setState(() => _currentStep += 1);
    // } else {
    showToast('Añade alguna línea al pedido', context);
    // }
  }

  void setFormInitalValues(PedidoVenta pedidoVenta) {
    // _cliente = Cliente.createFromPedidoVenta(pedidoVenta);
    setState(() {});
  }
}
