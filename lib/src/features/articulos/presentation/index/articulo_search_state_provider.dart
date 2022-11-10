import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/articulo.dart';
import '../../infrastructure/articulo_repository.dart';

// part 'articulo_search_state_provider.freezed.dart';

final articulosSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final articulosPaginationQueryStateProvider =
    StateProvider.autoDispose<int>((ref) {
  return 1;
});

final articuloForFromStateProvider =
    StateProvider.autoDispose<Articulo?>((ref) {
  return null;
});

final articulosSearchResultsProvider = StateNotifierProvider.autoDispose<
    ArticuloController, AsyncValue<List<Articulo>>>((ref) {
  final searchQuery = ref.watch(articulosSearchQueryStateProvider);
  final articuloRepository = ref.watch(articuloRepositoryProvider);

  return ArticuloController(
    searchQuery: searchQuery,
    articuloRepository: articuloRepository,
  );
});

class ArticuloController extends StateNotifier<AsyncValue<List<Articulo>>> {
  final String searchQuery;
  // final int page;
  final ArticuloRepository articuloRepository;

  ArticuloController(
      {required this.searchQuery,
      // required this.page,
      required this.articuloRepository})
      : super(const AsyncValue.loading()) {
    getArticuloLista();
  }

  int currentPage = 1;

  Future<void> getArticuloLista() async {
    state = const AsyncValue.loading();
    try {
      final articuloListResult = await articuloRepository.getArticuloLista(
        page: currentPage,
        searchText: searchQuery,
      );
      print('Current page: $currentPage');

      state = AsyncValue.data(articuloListResult);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> getNextPage() async {
    currentPage = currentPage + 1;
    getArticuloLista();
  }
}
