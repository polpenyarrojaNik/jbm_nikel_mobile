import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/cliente.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_search_controller.g.dart';

final clientesSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final clientesPotencialesQueryStateProvider =
    StateProvider.autoDispose<bool>((ref) {
  return false;
});

final clienteForFromStateProvider = StateProvider.autoDispose<Cliente?>((ref) {
  return null;
});

@riverpod
class ClienteIndexScreenController extends _$ClienteIndexScreenController {
  ClienteIndexScreenController();

  @override
  Future<int> build() {
    return ref.read(clienteRepositoryProvider).getClienteCountList(
        searchPotenciales: ref.watch(clientesPotencialesQueryStateProvider),
        searchText: ref.watch(clientesSearchQueryStateProvider));
  }
}

@riverpod
class ClienteIndexScreenPaginatedController
    extends _$ClienteIndexScreenPaginatedController {
  ClienteIndexScreenPaginatedController();

  @override
  Future<List<Cliente>> build({required int page}) {
    return ref.read(clienteRepositoryProvider).getClienteLista(
        searchPotenciales: ref.watch(clientesPotencialesQueryStateProvider),
        page: page,
        searchText: ref.watch(clientesSearchQueryStateProvider));
  }
}
