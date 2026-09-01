import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pedido_venta/domain/pedido_venta.dart';
import '../pedido_venta/infrastructure/pedido_venta_repository.dart';

part 'backorder_lista_controller.g.dart';

@riverpod
class BackorderSearchQueryParamController
    extends _$BackorderSearchQueryParamController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

@riverpod
class BackorderIndexScreenController extends _$BackorderIndexScreenController {
  BackorderIndexScreenController();

  @override
  Future<int> build() {
    return ref
        .read(pedidoVentaRepositoryProvider)
        .getBackorderCountList(
          searchText: ref.watch(backorderSearchQueryParamControllerProvider),
        );
  }
}

@riverpod
class BackorderIndexScreenPaginatedController
    extends _$BackorderIndexScreenPaginatedController {
  BackorderIndexScreenPaginatedController();

  @override
  Future<List<PedidoVenta>> build({required int page}) {
    return ref
        .read(pedidoVentaRepositoryProvider)
        .getBackorderLista(
          page: page,
          searchText: ref.watch(backorderSearchQueryParamControllerProvider),
        );
  }
}
