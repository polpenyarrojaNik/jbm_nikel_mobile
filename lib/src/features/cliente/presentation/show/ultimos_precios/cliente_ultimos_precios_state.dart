import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/domain/default_list_params.dart';

import '../../../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../../infrastructure/cliente_repository.dart';

final clienteUltimosPreciosSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final clienteUltimosPreciosPaginationQueryStateProvider =
    StateProvider.autoDispose<int>((ref) {
  return 1;
});

final clienteUltimosPreciosSearchResultsProvider = FutureProvider.autoDispose
    .family<List<EstadisticasUltimosPrecios>, String>((ref, clienteId) async {
  final searchQuery = ref.watch(clienteUltimosPreciosSearchQueryStateProvider);
  final paginationQuery =
      ref.watch(clienteUltimosPreciosPaginationQueryStateProvider);
  return ref.watch(clienteUltimosPreciosSearchProvider(DefaultListParams(
          page: paginationQuery, searchText: searchQuery, entityId: clienteId))
      .future);
});
