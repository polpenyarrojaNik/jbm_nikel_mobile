import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/domain/default_list_params.dart';

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

final pedidosSearchResultsProvider =
    FutureProvider.autoDispose<List<PedidoVenta>>((ref) async {
  final searchQuery = ref.watch(pedidosSearchQueryStateProvider);
  final paginationQuery = ref.watch(pedidosPaginationQueryStateProvider);
  return ref.watch(pedidosSearchProvider(
          DefaultListParams(page: paginationQuery, searchText: searchQuery))
      .future);
});
