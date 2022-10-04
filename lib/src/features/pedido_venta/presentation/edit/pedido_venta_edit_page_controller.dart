import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta_linea.dart';

import '../../../../core/domain/articulo_precio.dart';
import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../../cliente/domain/cliente.dart';
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
      List<PedidoVentaLinea> pedidoVentaLinea,
      int currentStep,
      String? observaciones) = _data;
  const factory PedidoVentaEditPageControllerState.error(Object error,
      {StackTrace? stackTrace}) = _error;
  const factory PedidoVentaEditPageControllerState.deleted() = _deleted;
  // const factory PedidoVentaEditPageControllerState.saved(
  //   PedidoVenta pedidoVentaLocal,
  // ) = _saved;
  // const factory PedidoVentaEditPageControllerState.saving(
  //   PedidoVenta pedidoVentaLocal,
  // ) = _saving;
  // const factory PedidoVentaEditPageControllerState.savedError(
  //     PedidoVenta pedidoVentaLocal, Object error,
  //     {StackTrace? stackTrace}) = _savedError;
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
  List<PedidoVentaLinea> pedidoVentaLineaList = [];
  int _currentStep = 0;
  String? _observaciones;

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
          _cliente, pedidoVentaLineaList, _currentStep, _observaciones);
    } else {
      try {
        final pedidoVenta = await pedidoVentaRepository.getPedidoVentaById(
          pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
        );

        final cliente = await clienteRepository.getClienteById(
            clienteId: pedidoVenta.clienteId!);

        _currentStep = 1;

        _observaciones = pedidoVenta.observaciones;

        state = PedidoVentaEditPageControllerState.data(
            cliente, pedidoVentaLineaList, _currentStep, _observaciones);
      } catch (err, stack) {
        state =
            PedidoVentaEditPageControllerState.error(err, stackTrace: stack);
      }
    }
  }

  Future<void> upsertPedidoVenta({
    required Cliente cliente,
    required List<PedidoVentaLinea> pedidoVentaLineaList,
    required String observaciones,
  }) async {
    state = const PedidoVentaEditPageControllerState.loading();

    try {
      await pedidoVentaRepository.upsertPedidoVenta(
          cliente: cliente,
          pedidoVentaLineaList: pedidoVentaLineaList,
          observaciones: observaciones);
      state = PedidoVentaEditPageControllerState.data(
          cliente, pedidoVentaLineaList, 4, observaciones);
    } catch (err, stack) {
      state = PedidoVentaEditPageControllerState.error(err, stackTrace: stack);
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
        _cliente, pedidoVentaLineaList, _currentStep, _observaciones);
  }

  Future<void> navigateToPreviousStep() async {
    _currentStep = (_currentStep > 0) ? _currentStep - 1 : _currentStep;
    state = PedidoVentaEditPageControllerState.data(
        _cliente, pedidoVentaLineaList, _currentStep, _observaciones);
  }

  Future<void> navigateToTappedStep({required int tappedStep}) async {
    _currentStep = (_currentStep > 0)
        ? _currentStep -= (_currentStep - tappedStep)
        : _currentStep;

    state = PedidoVentaEditPageControllerState.data(
        _cliente, pedidoVentaLineaList, _currentStep, _observaciones);
  }

  Future<void> selectCliente({required Cliente cliente}) async {
    _cliente = cliente;
    pedidoVentaLineaList.clear();
    state = PedidoVentaEditPageControllerState.data(
        _cliente, pedidoVentaLineaList, _currentStep, _observaciones);
  }

  Future<void> addPedidoVentaLinea(
      {required String pedidoVentaAppId,
      required ArticuloPrecio articuloPrecio,
      required String articuloDescripcion,
      required bool stockDisponibleSN}) async {
    final newPedidoVentaLinea = PedidoVentaLinea.newPedidoVentaLinea(
        pedidoVentaAppId: pedidoVentaAppId,
        lineaAppId:
            (pedidoVentaLineaList.length + 1).toString().padLeft(3, '0'),
        articuloPrecio: articuloPrecio,
        articuloDescripcion: articuloDescripcion,
        stockDisponibleSN: stockDisponibleSN);

    pedidoVentaLineaList.add(newPedidoVentaLinea);

    state = PedidoVentaEditPageControllerState.data(
        _cliente, pedidoVentaLineaList, _currentStep, _observaciones);
  }

  Future<void> updatePedidoVentaLinea(
      {required String pedidoVentaAppId,
      required ArticuloPrecio articuloPrecio,
      required String articuloDescripcion,
      required bool stockDisponibleSN,
      required int posicionActualizar}) async {
    final newPedidoVentaLinea = PedidoVentaLinea.newPedidoVentaLinea(
        pedidoVentaAppId: pedidoVentaAppId,
        lineaAppId: (posicionActualizar + 1).toString().padLeft(3, '0'),
        articuloPrecio: articuloPrecio,
        articuloDescripcion: articuloDescripcion,
        stockDisponibleSN: stockDisponibleSN);

    pedidoVentaLineaList[posicionActualizar] = newPedidoVentaLinea;

    state = PedidoVentaEditPageControllerState.data(
        _cliente, pedidoVentaLineaList, _currentStep, _observaciones);
  }

  Future<void> setObservaciones(String? observaciones) async {
    _observaciones = observaciones;
    state = PedidoVentaEditPageControllerState.data(
        _cliente, pedidoVentaLineaList, _currentStep, _observaciones);
  }
}
