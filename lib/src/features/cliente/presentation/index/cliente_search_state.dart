import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/domain/default_list_params.dart';

import '../../domain/cliente.dart';
import '../../infrastructure/cliente_repository.dart';

final clientesSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final clientesPaginationQueryStateProvider =
    StateProvider.autoDispose<int>((ref) {
  return 1;
});

final clientesSearchResultsProvider =
    FutureProvider.autoDispose<List<Cliente>>((ref) async {
  final searchQuery = ref.watch(clientesSearchQueryStateProvider);
  final paginationQuery = ref.watch(clientesPaginationQueryStateProvider);
  return ref.watch(clienteListaSearchProvider(
          DefaultListParams(page: paginationQuery, searchText: searchQuery))
      .future);
});
