import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta_linea.dart';

import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/domain/cliente_direccion.dart';
import '../../../cliente/infrastructure/cliente_repository.dart';
import '../../infrastructure/pedido_venta_repository.dart';

part 'pedido_venta_edit_page_controller.freezed.dart';

@freezed
class PedidoVentaEditPageControllerState
    with _$PedidoVentaEditPageControllerState {
  const PedidoVentaEditPageControllerState._();

  const factory PedidoVentaEditPageControllerState.loading() = _loading;
  const factory PedidoVentaEditPageControllerState.data(
      Cliente? cliente,
      ClienteDireccion? clienteDireccion,
      List<PedidoVentaLinea> pedidoVentaLinea,
      int currentStep,
      String? observaciones,
      String? pedidoCliente) = _data;
  const factory PedidoVentaEditPageControllerState.error(Object error,
      {StackTrace? stackTrace}) = _error;
  const factory PedidoVentaEditPageControllerState.deleted() = _deleted;
  const factory PedidoVentaEditPageControllerState.saved(
      String pedidoVentaAppId) = _saved;

  const factory PedidoVentaEditPageControllerState.savedError(
      Cliente? cliente,
      ClienteDireccion? clienteDireccion,
      List<PedidoVentaLinea> pedidoVentaLinea,
      int currentStep,
      String? observaciones,
      String? pedidoCliente,
      Object error,
      {StackTrace? stackTrace}) = _savedError;
}

final pedidoVentaEditPageControllerProvider = StateNotifierProvider.autoDispose
    .family<PedidoVentaEditPageController, PedidoVentaEditPageControllerState,
        EntityIdIsLocalParam>((ref, pedidoVentaIdIsLocalParam) {
  return PedidoVentaEditPageController(
    pedidoVentaRepository: ref.watch(pedidoVentaRepositoryProvider),
    clienteRepository: ref.watch(clienteRepositoryProvider),
    pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
  );
});

class PedidoVentaEditPageController
    extends StateNotifier<PedidoVentaEditPageControllerState> {
  final PedidoVentaRepository pedidoVentaRepository;
  final ClienteRepository clienteRepository;
  final EntityIdIsLocalParam pedidoVentaIdIsLocalParam;

  Cliente? _cliente;
  ClienteDireccion? _clienteDireccion;
  List<PedidoVentaLinea> pedidoVentaLineaList = [];
  int _currentStep = 0;
  String? _observaciones;
  String? _pedidoCliente;

  PedidoVentaEditPageController({
    required this.pedidoVentaIdIsLocalParam,
    required this.pedidoVentaRepository,
    required this.clienteRepository,
  }) : super(const PedidoVentaEditPageControllerState.loading()) {
    getPedidoVenta();
  }

  Future<void> getPedidoVenta() async {
    state = const PedidoVentaEditPageControllerState.loading();

    if (pedidoVentaIdIsLocalParam.isNew) {
      state = PedidoVentaEditPageControllerState.data(
        _cliente,
        _clienteDireccion,
        pedidoVentaLineaList,
        _currentStep,
        _observaciones,
        _pedidoCliente,
      );
    } else {
      try {
        final pedidoVenta = await pedidoVentaRepository.getPedidoVentaById(
          pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
        );

        pedidoVentaLineaList =
            await pedidoVentaRepository.getPedidoVentaLineaListById(
                pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam);

        _cliente = await clienteRepository.getClienteById(
            clienteId: pedidoVenta.clienteId!);

        _clienteDireccion =
            await clienteRepository.getClienteDireccionByDireccionId(
                clienteId: pedidoVenta.clienteId!,
                direccionId: pedidoVenta.direccionId);

        _currentStep = 1;

        _observaciones = pedidoVenta.observaciones;

        _pedidoCliente = pedidoVenta.pedidoCliente;

        state = PedidoVentaEditPageControllerState.data(
          _cliente,
          _clienteDireccion,
          pedidoVentaLineaList,
          _currentStep,
          _observaciones,
          _pedidoCliente,
        );
      } catch (err, stack) {
        state =
            PedidoVentaEditPageControllerState.error(err, stackTrace: stack);
      }
    }
  }

  Future<void> upsertPedidoVenta(
      {required String pedidoVentaAppId,
      required Cliente cliente,
      required ClienteDireccion? clienteDireccion,
      required List<PedidoVentaLinea> pedidoVentaLineaList,
      String? observaciones,
      String? pedidoCliente}) async {
    state = const PedidoVentaEditPageControllerState.loading();

    try {
      await pedidoVentaRepository.upsertPedidoVenta(
        pedidoVentaAppId: pedidoVentaAppId,
        cliente: cliente,
        clienteDireccion: clienteDireccion,
        pedidoVentaLineaList: pedidoVentaLineaList,
        pedidoCliente: pedidoCliente,
        observaciones: observaciones,
      );
      state = PedidoVentaEditPageControllerState.saved(pedidoVentaAppId);
    } catch (err, stack) {
      state = PedidoVentaEditPageControllerState.savedError(
          _cliente,
          _clienteDireccion,
          pedidoVentaLineaList,
          _currentStep,
          _observaciones,
          _pedidoCliente,
          err,
          stackTrace: stack);
    }
  }

  Future<void> deletePedidoVenta({
    required PedidoVenta pedidoVentaLocal,
  }) async {
    state = const PedidoVentaEditPageControllerState.loading();

    try {
      await pedidoVentaRepository.deletePedidoVenta(
          pedidoVentaAppId: pedidoVentaLocal.pedidoVentaAppId!);
      state = const PedidoVentaEditPageControllerState.deleted();
    } catch (err, stack) {
      state = PedidoVentaEditPageControllerState.error(err, stackTrace: stack);
    }
  }

  Future<void> navigateToNextStep() async {
    _currentStep = (_currentStep < 3) ? _currentStep + 1 : _currentStep;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  Future<void> navigateToPreviousStep() async {
    _currentStep = (_currentStep > 0) ? _currentStep - 1 : _currentStep;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  Future<void> navigateToTappedStep({required int tappedStep}) async {
    _currentStep = (_currentStep > 0)
        ? _currentStep -= (_currentStep - tappedStep)
        : _currentStep;

    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  Future<void> selectCliente({required Cliente cliente}) async {
    _cliente = cliente;
    _clienteDireccion = null;

    pedidoVentaLineaList.clear();
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  Future<void> selectDireccion(
      {required ClienteDireccion? clienteDireccion}) async {
    _clienteDireccion = clienteDireccion;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  Future<void> addPedidoVentaLinea({
    required PedidoVentaLinea newLinea,
  }) async {
    pedidoVentaLineaList.add(newLinea);

    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  Future<void> updatePedidoVentaLinea(
      {required PedidoVentaLinea pedidoVentaLinea,
      required int posicionActualizar}) async {
    pedidoVentaLineaList[posicionActualizar] = pedidoVentaLinea;

    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  Future<void> deletePedidoVentaLinea(
      {required PedidoVentaLinea pedidoVentaLineaToDelete}) async {
    pedidoVentaLineaList.remove(pedidoVentaLineaToDelete);

    pedidoVentaLineaList = recalcularPedidoVentaLineaId();

    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  Future<void> setObservaciones(String? observaciones) async {
    _observaciones = observaciones;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  Future<void> setPedidoCliente(String? pedidoCliente) async {
    _pedidoCliente = pedidoCliente;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
    );
  }

  List<PedidoVentaLinea> recalcularPedidoVentaLineaId() {
    final List<PedidoVentaLinea> newPedidoVentaLineaList = [];

    for (var i = 0; i < pedidoVentaLineaList.length; i++) {
      final newPedidoVentaLinea = PedidoVentaLinea(
        pedidoVentaId: pedidoVentaLineaList[i].pedidoVentaId,
        pedidoVentaLineaId: pedidoVentaLineaList[i].pedidoVentaLineaId,
        pedidoVentaAppId: pedidoVentaLineaList[i].pedidoVentaAppId,
        pedidoVentaLineaAppId: (i + 1).toString().padLeft(3, '0'),
        articuloId: pedidoVentaLineaList[i].articuloId,
        articuloDescription: pedidoVentaLineaList[i].articuloDescription,
        cantidad: pedidoVentaLineaList[i].cantidad,
        precioDivisa: pedidoVentaLineaList[i].precioDivisa,
        divisaId: pedidoVentaLineaList[i].divisaId,
        tipoPrecio: pedidoVentaLineaList[i].tipoPrecio,
        descuento1: pedidoVentaLineaList[i].descuento1,
        descuento2: pedidoVentaLineaList[i].descuento2,
        descuento3: pedidoVentaLineaList[i].descuento3,
        descuentoProntoPago: pedidoVentaLineaList[i].descuentoProntoPago,
        stockDisponibleSN: pedidoVentaLineaList[i].stockDisponibleSN,
        iva: pedidoVentaLineaList[i].iva,
        importeLinea: pedidoVentaLineaList[i].importeLinea,
        lastUpdated: pedidoVentaLineaList[i].lastUpdated,
        deleted: pedidoVentaLineaList[i].deleted,
      );

      newPedidoVentaLineaList.add(newPedidoVentaLinea);
    }
    return newPedidoVentaLineaList;
  }
}
