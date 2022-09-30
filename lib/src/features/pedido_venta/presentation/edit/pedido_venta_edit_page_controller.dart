import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta.dart';

import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../infrastructure/pedido_venta_repository.dart';

part 'pedido_venta_edit_page_controller.freezed.dart';

@freezed
class PedidoVentaEditPageControllerState
    with _$PedidoVentaEditPageControllerState {
  const PedidoVentaEditPageControllerState._();

  const factory PedidoVentaEditPageControllerState.loading() = _loading;
  const factory PedidoVentaEditPageControllerState.data(
    PedidoVenta? pedidoVentaLocal,
  ) = _data;
  const factory PedidoVentaEditPageControllerState.error(Object error,
      {StackTrace? stackTrace}) = _error;
  const factory PedidoVentaEditPageControllerState.saved(
    PedidoVenta pedidoVentaLocal,
  ) = _saved;
  const factory PedidoVentaEditPageControllerState.saving(
    PedidoVenta pedidoVentaLocal,
  ) = _saving;
  const factory PedidoVentaEditPageControllerState.savedError(
      PedidoVenta pedidoVentaLocal, Object error,
      {StackTrace? stackTrace}) = _savedError;
  const factory PedidoVentaEditPageControllerState.deleted() = _deleted;
}

final visitaEditPageControllerProvider = StateNotifierProvider.autoDispose
    .family<VisitaEditPageController, PedidoVentaEditPageControllerState,
        EntityIdIsLocalParam>((ref, pedidoVentaIdIsLocalParam) {
  return VisitaEditPageController(
    pedidoVentaRepository: ref.watch(pedidoVentaRepositoryProvider),
    pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
  );
});

class VisitaEditPageController
    extends StateNotifier<PedidoVentaEditPageControllerState> {
  final PedidoVentaRepository pedidoVentaRepository;
  final EntityIdIsLocalParam pedidoVentaIdIsLocalParam;

  VisitaEditPageController({
    required this.pedidoVentaIdIsLocalParam,
    required this.pedidoVentaRepository,
  }) : super(const PedidoVentaEditPageControllerState.loading()) {
    getPedidoVenta();
  }

  Future<void> getPedidoVenta() async {
    state = const PedidoVentaEditPageControllerState.loading();

    if (pedidoVentaIdIsLocalParam.id == null) {
      state = const PedidoVentaEditPageControllerState.data(
        null,
      );
    } else {
      try {
        final visita = await pedidoVentaRepository.getPedidoVentaById(
            pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam);

        state = PedidoVentaEditPageControllerState.data(visita);
      } catch (err, stack) {
        state =
            PedidoVentaEditPageControllerState.error(err, stackTrace: stack);
      }
    }
  }

  Future<void> upsertPedidoVenta({
    required PedidoVenta pedidoVentaLocal,
  }) async {
    state = PedidoVentaEditPageControllerState.saving(pedidoVentaLocal);

    try {
      await pedidoVentaRepository.upsertPedidoVenta(
          pedidoVenta: pedidoVentaLocal);
      state = PedidoVentaEditPageControllerState.saved(pedidoVentaLocal);
    } catch (err, stack) {
      state = PedidoVentaEditPageControllerState.savedError(
          pedidoVentaLocal, err,
          stackTrace: stack);
    }
  }

  Future<void> deletePedidoVenta({
    required PedidoVenta pedidoVentaLocal,
  }) async {
    state = PedidoVentaEditPageControllerState.saving(pedidoVentaLocal);

    try {
      await pedidoVentaRepository.deletePedidoVenta(
          pedidoVentaAppId: pedidoVentaLocal.pedidoVentaAppId!);
      state = const PedidoVentaEditPageControllerState.deleted();
    } catch (err, stack) {
      state = PedidoVentaEditPageControllerState.savedError(
          pedidoVentaLocal, err,
          stackTrace: stack);
    }
  }
}
