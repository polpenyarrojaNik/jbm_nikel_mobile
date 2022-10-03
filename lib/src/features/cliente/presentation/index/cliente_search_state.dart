import 'package:flutter_riverpod/flutter_riverpod.dart';

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

final clientesPotencialesQueryStateProvider =
    StateProvider.autoDispose<bool>((ref) {
  return false;
});

final clienteForFromStateProvider = StateProvider.autoDispose<Cliente?>((ref) {
  return null;
});

final clientesSearchResultsProvider = StateNotifierProvider.autoDispose<
    ClienteController, AsyncValue<List<Cliente>>>((ref) {
  final searchQuery = ref.watch(clientesSearchQueryStateProvider);
  final paginationQuery = ref.watch(clientesPaginationQueryStateProvider);
  final potencialesQuery = ref.watch(clientesPotencialesQueryStateProvider);

  final clienteRepository = ref.watch(clienteRepositoryProvider);

  return ClienteController(
      clienteRepository: clienteRepository,
      page: paginationQuery,
      searchQuery: searchQuery,
      searchPotenciales: potencialesQuery);
});

class ClienteController extends StateNotifier<AsyncValue<List<Cliente>>> {
  final String searchQuery;
  final int page;
  final bool searchPotenciales;
  final ClienteRepository clienteRepository;

  ClienteController(
      {required this.searchQuery,
      required this.page,
      required this.searchPotenciales,
      required this.clienteRepository})
      : super(const AsyncValue.loading()) {
    getClienteLista();
  }

  Future<void> getClienteLista() async {
    state = const AsyncValue.loading();
    try {
      final clienteList = await clienteRepository.getClienteLista(
          page: page,
          searchText: searchQuery,
          searchPotenciales: searchPotenciales);
      state = AsyncValue.data(clienteList);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
