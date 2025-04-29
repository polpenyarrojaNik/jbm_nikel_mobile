import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/pedido_venta.dart';
import '../../domain/pedido_venta_estado.dart';
import '../../infrastructure/pedido_venta_repository.dart';

part 'pedido_search_controller.g.dart';

final pedidosSearchQueryStateProvider = StateProvider.autoDispose<String>((
  ref,
) {
  return '';
});

final pedidoVentaEstadoQueryStateProvider =
    StateProvider.autoDispose<PedidoVentaEstado?>((ref) {
      return null;
    });

@riverpod
class PedidoVentaIndexScreenController
    extends _$PedidoVentaIndexScreenController {
  PedidoVentaIndexScreenController();

  @override
  Future<int> build() {
    return ref
        .read(pedidoVentaRepositoryProvider)
        .getPedidoVentaCountList(
          pedidoVentaEstado: ref.watch(pedidoVentaEstadoQueryStateProvider),
          searchText: ref.watch(pedidosSearchQueryStateProvider),
        );
  }
}

@riverpod
class PedidoVentaIndexScreenPaginatedController
    extends _$PedidoVentaIndexScreenPaginatedController {
  PedidoVentaIndexScreenPaginatedController();

  @override
  Future<List<PedidoVenta>> build({required int page}) {
    return ref
        .read(pedidoVentaRepositoryProvider)
        .getPedidoVentaLista(
          page: page,
          searchText: ref.watch(pedidosSearchQueryStateProvider),
          pedidoVentaEstado: ref.watch(pedidoVentaEstadoQueryStateProvider),
        );
  }
}
