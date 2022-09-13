import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/domain/default_list_params.dart';

import '../../domain/articulo.dart';
import '../../infrastructure/articulo_repository.dart';

final articulosSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final articulosPaginationQueryStateProvider =
    StateProvider.autoDispose<int>((ref) {
  return 1;
});

final articulosSearchResultsProvider =
    FutureProvider.autoDispose<List<Articulo>>((ref) async {
  final searchQuery = ref.watch(articulosSearchQueryStateProvider);
  final paginationQuery = ref.watch(articulosPaginationQueryStateProvider);
  return ref.watch(articulosSearchProvider(
          DefaultListParams(page: paginationQuery, searchText: searchQuery))
      .future);
});
