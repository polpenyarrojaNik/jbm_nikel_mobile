import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/domain/default_list_params.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../estadisticas/domain/estadisticas_ultimos_precios.dart';

final articuloUltimosPreciosSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final articuloUltimosPreciosPaginationQueryStateProvider =
    StateProvider.autoDispose<int>((ref) {
  return 1;
});

final articuloUltimosPreciosSearchResultsProvider = FutureProvider.autoDispose
    .family<List<EstadisticasUltimosPrecios>, String>((ref, articuloId) async {
  final searchQuery = ref.watch(articuloUltimosPreciosSearchQueryStateProvider);
  final paginationQuery =
      ref.watch(articuloUltimosPreciosPaginationQueryStateProvider);
  return ref.watch(articuloUltimosPreciosSearchProvider(DefaultListParams(
          page: paginationQuery, searchText: searchQuery, entityId: articuloId))
      .future);
});
