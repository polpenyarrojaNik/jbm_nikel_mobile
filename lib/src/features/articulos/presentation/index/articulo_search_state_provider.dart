import 'package:flutter_riverpod/flutter_riverpod.dart';

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

final articulosSearchResultsProvider = StateNotifierProvider.autoDispose<
    ArticuloController, AsyncValue<List<Articulo>>>((ref) {
  final searchQuery = ref.watch(articulosSearchQueryStateProvider);
  final paginationQuery = ref.watch(articulosPaginationQueryStateProvider);
  final articuloRepository = ref.watch(articuloRepositoryProvider);

  return ArticuloController(
    searchQuery: searchQuery,
    page: paginationQuery,
    articuloRepository: articuloRepository,
  );
});

class ArticuloController extends StateNotifier<AsyncValue<List<Articulo>>> {
  final String searchQuery;
  final int page;
  final ArticuloRepository articuloRepository;

  ArticuloController(
      {required this.searchQuery,
      required this.page,
      required this.articuloRepository})
      : super(const AsyncValue.loading()) {
    getArticuloLista();
  }

  Future<void> getArticuloLista() async {
    state = const AsyncValue.loading();
    try {
      final articuloList = await articuloRepository.getArticuloLista(
        page: page,
        searchText: searchQuery,
      );
      state = AsyncValue.data(articuloList);
    } catch (e, stack) {
      state = AsyncValue.error(e, stackTrace: stack);
    }
  }
}
