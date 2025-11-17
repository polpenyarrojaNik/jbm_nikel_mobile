import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/pedido_venta.dart';
import '../../domain/pedido_venta_estado.dart';
import '../../infrastructure/pedido_venta_repository.dart';

part 'pedido_search_controller.g.dart';

@riverpod
class PedidosSearchQueryParamController
    extends _$PedidosSearchQueryParamController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

@riverpod
class PedidoVentaEstadoQueryParamController
    extends _$PedidoVentaEstadoQueryParamController {
  @override
  PedidoVentaEstado? build() {
    return null;
  }

  void setFilter(PedidoVentaEstado? estado) {
    state = estado;
  }
}

@riverpod
class PedidoVentaIndexScreenController
    extends _$PedidoVentaIndexScreenController {
  PedidoVentaIndexScreenController();

  @override
  Future<int> build() {
    return ref
        .read(pedidoVentaRepositoryProvider)
        .getPedidoVentaCountList(
          pedidoVentaEstado: ref.watch(
            pedidoVentaEstadoQueryParamControllerProvider,
          ),
          searchText: ref.watch(pedidosSearchQueryParamControllerProvider),
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
          searchText: ref.watch(pedidosSearchQueryParamControllerProvider),
          pedidoVentaEstado: ref.watch(
            pedidoVentaEstadoQueryParamControllerProvider,
          ),
        );
  }
}
