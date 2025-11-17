import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/articulo.dart';
import '../../infrastructure/articulo_repository.dart';

part 'articulo_search_controller.g.dart';

@riverpod
class ArticuloSearchQueryParamsController
    extends _$ArticuloSearchQueryParamsController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

@riverpod
class ArticuloFromFormController extends _$ArticuloFromFormController {
  @override
  Articulo? build() {
    return null;
  }

  void setArticuloFromForm(Articulo articulo) {
    state = articulo;
  }
}

@riverpod
class ArticuloIndexScreenController extends _$ArticuloIndexScreenController {
  ArticuloIndexScreenController();

  @override
  Future<int> build(bool isSearchArticuloForForm) {
    return ref
        .read(articuloRepositoryProvider)
        .getArticuloCountList(
          searchText: ref.watch(articuloSearchQueryParamsControllerProvider),
        );
  }
}

@riverpod
class ArticuloIndexScreenPaginatedController
    extends _$ArticuloIndexScreenPaginatedController {
  ArticuloIndexScreenPaginatedController();

  @override
  Future<List<Articulo>> build({
    required int page,
    required bool isSearchArticuloForForm,
  }) {
    return ref
        .read(articuloRepositoryProvider)
        .getArticuloLista(
          page: page,
          isSearchArticuloForForm: isSearchArticuloForForm,
          searchText: ref.watch(articuloSearchQueryParamsControllerProvider),
        );
  }
}
