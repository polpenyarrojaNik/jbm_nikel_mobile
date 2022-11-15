import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/articulo.dart';
import '../../infrastructure/articulo_repository.dart';

part 'articulo_search_controller.g.dart';

final articulosSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final articuloForFromStateProvider =
    StateProvider.autoDispose<Articulo?>((ref) {
  return null;
});

@riverpod
class ArticuloIndexScreenController extends _$ArticuloIndexScreenController {
  ArticuloIndexScreenController();

  @override
  Future<int> build() {
    return ref.read(articuloRepositoryProvider).getArticuloCountList(
        searchText: ref.watch(articulosSearchQueryStateProvider));
  }
}

@riverpod
class ArticuloIndexScreenPaginatedController
    extends _$ArticuloIndexScreenPaginatedController {
  ArticuloIndexScreenPaginatedController();

  @override
  Future<List<Articulo>> build({required int page}) {
    return ref.read(articuloRepositoryProvider).getArticuloLista(
        page: page, searchText: ref.watch(articulosSearchQueryStateProvider));
  }
}
