import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/domain/default_list_params.dart';

import '../../domain/visita.dart';
import '../../infrastructure/visita_repository.dart';

final visitasSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final visitasPaginationQueryStateProvider =
    StateProvider.autoDispose<int>((ref) {
  return 1;
});

final visitasSearchResultsProvider =
    FutureProvider.autoDispose<List<Visita>>((ref) async {
  final searchQuery = ref.watch(visitasSearchQueryStateProvider);
  final paginationQuery = ref.watch(visitasPaginationQueryStateProvider);
  return ref.watch(visitasSearchProvider(
          DefaultListParams(page: paginationQuery, searchText: searchQuery))
      .future);
});
