import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/articulo_precio.dart';
import '../../infrastructure/pedido_venta_repository.dart';

part 'select_cantidad_controller.freezed.dart';

final articuloPrecioProvider =
    StateNotifierProvider.autoDispose<
      ArticuloPrecioController,
      ArticuloPrecioControllerState
    >((ref) {
      final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);

      return ArticuloPrecioController(
        pedidoVentaRepository: pedidoVentaRepository,
      );
    });

@freezed
class ArticuloPrecioControllerState with _$ArticuloPrecioControllerState {
  const ArticuloPrecioControllerState._();

  const factory ArticuloPrecioControllerState.loading() = _loading;
  const factory ArticuloPrecioControllerState.initial() = _initial;
  const factory ArticuloPrecioControllerState.error(
    Object error, {
    StackTrace? stackTrace,
  }) = _error;
  const factory ArticuloPrecioControllerState.data(
    ArticuloPrecio? articuloPrecio,
  ) = _data;
}

class ArticuloPrecioController
    extends StateNotifier<ArticuloPrecioControllerState> {
  final PedidoVentaRepository pedidoVentaRepository;

  ArticuloPrecioController({required this.pedidoVentaRepository})
    : super(const ArticuloPrecioControllerState.initial());

  Future<void> getArticuloPrecio({
    required String articuloId,
    required String clienteId,
    required int cantidad,
  }) async {
    state = const ArticuloPrecioControllerState.loading();
    try {
      final articuloPrecio = await pedidoVentaRepository.getArticuloPrecio(
        articuloId: articuloId,
        clienteId: clienteId,
        cantidad: cantidad,
      );
      state = ArticuloPrecioControllerState.data(articuloPrecio);
    } catch (e, stack) {
      state = ArticuloPrecioControllerState.error(e, stackTrace: stack);
    }
  }
}
