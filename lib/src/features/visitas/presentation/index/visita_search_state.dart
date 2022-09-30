import 'package:flutter_riverpod/flutter_riverpod.dart';

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

final visitasSearchResultsProvider = StateNotifierProvider.autoDispose<
    VisitaController, AsyncValue<List<Visita>>>((ref) {
  final searchQuery = ref.watch(visitasSearchQueryStateProvider);
  final paginationQuery = ref.watch(visitasPaginationQueryStateProvider);
  final visitaRepository = ref.watch(visitaRepositoryProvider);

  return VisitaController(
      visitaRepository: visitaRepository,
      page: paginationQuery,
      searchQuery: searchQuery);
});

class VisitaController extends StateNotifier<AsyncValue<List<Visita>>> {
  final String searchQuery;
  final int page;
  final VisitaRepository visitaRepository;

  VisitaController(
      {required this.searchQuery,
      required this.page,
      required this.visitaRepository})
      : super(const AsyncValue.loading()) {
    getVisitaList();
  }

  Future<void> getVisitaList() async {
    state = const AsyncValue.loading();
    try {
      final visitaList = await visitaRepository.getVisitaList(
          page: page, searchText: searchQuery);
      state = AsyncValue.data(visitaList);
    } catch (e, stack) {
      state = AsyncValue.error(e, stackTrace: stack);
    }
  }
}
