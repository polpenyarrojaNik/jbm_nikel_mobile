import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/pedido_venta.dart';
import '../../infrastructure/pedido_venta_repository.dart';

final pedidosSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final pedidosPaginationQueryStateProvider =
    StateProvider.autoDispose<int>((ref) {
  return 1;
});

final pedidosSearchResultsProvider = StateNotifierProvider.autoDispose<
    PedidoVentaController, AsyncValue<List<PedidoVenta>>>((ref) {
  final searchQuery = ref.watch(pedidosSearchQueryStateProvider);
  final paginationQuery = ref.watch(pedidosPaginationQueryStateProvider);
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);

  return PedidoVentaController(
    searchQuery: searchQuery,
    page: paginationQuery,
    pedidoVentaRepository: pedidoVentaRepository,
  );
});

class PedidoVentaController
    extends StateNotifier<AsyncValue<List<PedidoVenta>>> {
  final String searchQuery;
  final int page;
  final PedidoVentaRepository pedidoVentaRepository;

  PedidoVentaController(
      {required this.searchQuery,
      required this.page,
      required this.pedidoVentaRepository})
      : super(const AsyncValue.loading()) {
    getPedidoVentaLista();
  }

  Future<void> getPedidoVentaLista() async {
    state = const AsyncValue.loading();
    try {
      final pedidoVentaList = await pedidoVentaRepository.getPedidoVentaLista(
          page: page, searchText: searchQuery);
      state = AsyncValue.data(pedidoVentaList);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
