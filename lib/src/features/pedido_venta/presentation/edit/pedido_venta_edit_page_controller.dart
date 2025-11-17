import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/domain/cliente_direccion.dart';
import '../../../cliente/infrastructure/cliente_repository.dart';
import '../../domain/pedido_local_param.dart';
import '../../domain/pedido_venta.dart';
import '../../domain/pedido_venta_linea.dart';
import '../../infrastructure/pedido_venta_repository.dart';

part 'pedido_venta_edit_page_controller.freezed.dart';
part 'pedido_venta_edit_page_controller.g.dart';

@riverpod
class CustomerAddressSearchQueryParamsController
    extends _$CustomerAddressSearchQueryParamsController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

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
    String? pedidoCliente,
    bool oferta,
    DateTime? ofertaFechaHasta,
    bool isBorrador,
  ) = _data;
  const factory PedidoVentaEditPageControllerState.error(
    Object error, {
    StackTrace? stackTrace,
  }) = _error;
  const factory PedidoVentaEditPageControllerState.deleted() = _deleted;
  const factory PedidoVentaEditPageControllerState.saved(
    String pedidoVentaAppId,
    bool isBorrador,
  ) = _saved;

  const factory PedidoVentaEditPageControllerState.savedError(
    Cliente? cliente,
    ClienteDireccion? clienteDireccion,
    List<PedidoVentaLinea> pedidoVentaLinea,
    int currentStep,
    String? observaciones,
    String? pedidoCliente,
    bool oferta,
    DateTime? ofertaFechaHasta,
    bool isBorrador,
    Object error, {
    StackTrace? stackTrace,
  }) = _savedError;
}

final pedidoVentaEditPageControllerProvider = StateNotifierProvider.autoDispose
    .family<
      PedidoVentaEditPageController,
      PedidoVentaEditPageControllerState,
      PedidoLocalParam
    >((ref, pedidoVentaIdIsLocalParam) {
      return PedidoVentaEditPageController(
        pedidoVentaRepository: ref.watch(pedidoVentaRepositoryProvider),
        clienteRepository: ref.watch(clienteRepositoryProvider),
        pedidoLocalParam: pedidoVentaIdIsLocalParam,
      );
    });

class PedidoVentaEditPageController
    extends StateNotifier<PedidoVentaEditPageControllerState> {
  final PedidoVentaRepository pedidoVentaRepository;
  final ClienteRepository clienteRepository;
  final PedidoLocalParam pedidoLocalParam;

  Cliente? _cliente;
  ClienteDireccion? _clienteDireccion;
  List<PedidoVentaLinea> pedidoVentaLineaList = [];
  int _currentStep = 0;
  String? _observaciones;
  String? _pedidoCliente;
  bool _oferta = false;
  DateTime? _ofertaFechaHasta;
  bool _isBorrador = false;

  PedidoVentaEditPageController({
    required this.pedidoLocalParam,
    required this.pedidoVentaRepository,
    required this.clienteRepository,
  }) : super(const PedidoVentaEditPageControllerState.loading()) {
    getPedidoVenta();
  }

  Future<void> getPedidoVenta() async {
    state = const PedidoVentaEditPageControllerState.loading();
    try {
      if (!pedidoLocalParam.isEdit) {
        if (pedidoLocalParam.createPedidoFromClienteId != null) {
          _cliente = await clienteRepository.getClienteById(
            clienteId: pedidoLocalParam.createPedidoFromClienteId!,
          );
        }
        state = PedidoVentaEditPageControllerState.data(
          _cliente,
          _clienteDireccion,
          pedidoVentaLineaList,
          _currentStep,
          _observaciones,
          _pedidoCliente,
          _oferta,
          _ofertaFechaHasta,
          _isBorrador,
        );
      } else {
        final pedidoVenta = await pedidoVentaRepository.getPedidoVentaById(
          pedidoVentaIdIsLocalParam: pedidoLocalParam,
        );

        pedidoVentaLineaList = await pedidoVentaRepository
            .getPedidoVentaLineaListById(pedidoLocalParam: pedidoLocalParam);

        _cliente = await clienteRepository.getClienteById(
          clienteId: pedidoVenta.clienteId!,
        );

        _clienteDireccion = await clienteRepository
            .getClienteDireccionByDireccionId(
              clienteId: pedidoVenta.clienteId!,
              direccionId: pedidoVenta.direccionId,
            );

        _currentStep = 2;

        _observaciones = pedidoVenta.observaciones;

        _pedidoCliente = pedidoVenta.pedidoCliente;

        _oferta = pedidoVenta.oferta ?? _cliente?.clientePotencial ?? false;

        _ofertaFechaHasta = pedidoVenta.ofertaFechaHasta;

        _isBorrador = pedidoVenta.borrador;

        state = PedidoVentaEditPageControllerState.data(
          _cliente,
          _clienteDireccion,
          pedidoVentaLineaList,
          _currentStep,
          _observaciones,
          _pedidoCliente,
          _oferta,
          _ofertaFechaHasta,
          _isBorrador,
        );
        // }
      }
    } catch (err, stack) {
      state = PedidoVentaEditPageControllerState.error(err, stackTrace: stack);
    }
  }

  Future<void> upsertPedidoVenta({
    String? pedidoId,
    String? empresaId,
    required String pedidoVentaAppId,
    required Cliente cliente,
    required ClienteDireccion? clienteDireccion,
    required List<PedidoVentaLinea> pedidoVentaLineaList,
    String? observaciones,
    String? pedidoCliente,
    required bool oferta,
    DateTime? ofertaFechaHasta,
    required bool isBorrador,
    required ISentrySpan transaction,
  }) async {
    state = const PedidoVentaEditPageControllerState.loading();

    try {
      await pedidoVentaRepository.upsertPedidoVenta(
        pedidoId: pedidoId,
        empresaId: empresaId,
        pedidoVentaAppId: pedidoVentaAppId,
        cliente: cliente,
        clienteDireccion: clienteDireccion,
        pedidoVentaLineaList: pedidoVentaLineaList,
        pedidoCliente: pedidoCliente,
        observaciones: observaciones,
        oferta: oferta,
        ofertaFechaHasta: ofertaFechaHasta,
        isBorrador: isBorrador,
        transaction: transaction,
      );
      state = PedidoVentaEditPageControllerState.saved(
        pedidoVentaAppId,
        isBorrador,
      );
    } catch (e, stack) {
      if (e is AppException) {
        e.whenOrNull(
          notConnection: () =>
              state = PedidoVentaEditPageControllerState.savedError(
                _cliente,
                _clienteDireccion,
                pedidoVentaLineaList,
                _currentStep,
                _observaciones,
                _pedidoCliente,
                _oferta,
                _ofertaFechaHasta,
                _isBorrador,
                e,
                stackTrace: stack,
              ),
          restApiFailure: (error, _) =>
              state = PedidoVentaEditPageControllerState.savedError(
                _cliente,
                _clienteDireccion,
                pedidoVentaLineaList,
                _currentStep,
                _observaciones,
                _pedidoCliente,
                _oferta,
                _ofertaFechaHasta,
                _isBorrador,
                e,
                stackTrace: stack,
              ),
        );
      }
      state = PedidoVentaEditPageControllerState.error(
        e.toString(),
        stackTrace: stack,
      );
    }
  }

  Future<void> deletePedidoVenta({
    required PedidoVenta pedidoVentaLocal,
  }) async {
    state = const PedidoVentaEditPageControllerState.loading();

    try {
      await pedidoVentaRepository.deletePedidoVenta(
        pedidoVentaAppId: pedidoVentaLocal.pedidoVentaAppId!,
      );
      state = const PedidoVentaEditPageControllerState.deleted();
    } catch (err, stack) {
      state = PedidoVentaEditPageControllerState.error(err, stackTrace: stack);
    }
  }

  void navigateToNextStep() {
    _currentStep = (_currentStep < 4) ? _currentStep + 1 : _currentStep;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void navigateToPreviousStep() {
    _currentStep = (_currentStep > 0) ? _currentStep - 1 : _currentStep;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void navigateToTappedStep({required int tappedStep}) {
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
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void selectCliente({required Cliente cliente}) {
    _cliente = cliente;
    _clienteDireccion = null;
    _oferta = cliente.clientePotencial ?? false;

    pedidoVentaLineaList.clear();
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void selectDireccion({required ClienteDireccion? clienteDireccion}) {
    _clienteDireccion = clienteDireccion;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void addPedidoVentaLinea({required PedidoVentaLinea newLinea}) {
    pedidoVentaLineaList.add(newLinea);

    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void updatePedidoVentaLinea({
    required PedidoVentaLinea pedidoVentaLinea,
    required int posicionActualizar,
  }) {
    pedidoVentaLineaList[posicionActualizar] = pedidoVentaLinea;

    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void deletePedidoVentaLinea({
    required PedidoVentaLinea pedidoVentaLineaToDelete,
  }) {
    pedidoVentaLineaList.remove(pedidoVentaLineaToDelete);

    pedidoVentaLineaList = recalcularPedidoVentaLineaId();

    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void setObservaciones(String? observaciones) {
    _observaciones = observaciones;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void setPedidoCliente(String? pedidoCliente) {
    _pedidoCliente = pedidoCliente;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void setOfertaFechaHasta(DateTime? ofertaFechaHasta) {
    _ofertaFechaHasta = ofertaFechaHasta;
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  void setOfertaSN(bool? newValueOferta) {
    _oferta = newValueOferta ?? _oferta;
    if (!_oferta) {
      _ofertaFechaHasta = null;
    }
    state = PedidoVentaEditPageControllerState.data(
      _cliente,
      _clienteDireccion,
      pedidoVentaLineaList,
      _currentStep,
      _observaciones,
      _pedidoCliente,
      _oferta,
      _ofertaFechaHasta,
      _isBorrador,
    );
  }

  List<PedidoVentaLinea> recalcularPedidoVentaLineaId() {
    final newPedidoVentaLineaList = <PedidoVentaLinea>[];

    for (var i = 0; i < pedidoVentaLineaList.length; i++) {
      final newPedidoVentaLinea = PedidoVentaLinea(
        pedidoId: pedidoVentaLineaList[i].pedidoId,
        empresaId: pedidoVentaLineaList[i].empresaId,
        pedidoVentaAppId: pedidoVentaLineaList[i].pedidoVentaAppId,
        pedidoVentaLineaId: (i + 1).toString().padLeft(3, '0'),
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
        cantidadPendiente: pedidoVentaLineaList[i].cantidad,
        lastUpdated: pedidoVentaLineaList[i].lastUpdated,
        deleted: pedidoVentaLineaList[i].deleted,
      );

      newPedidoVentaLineaList.add(newPedidoVentaLinea);
    }
    return newPedidoVentaLineaList;
  }
}
