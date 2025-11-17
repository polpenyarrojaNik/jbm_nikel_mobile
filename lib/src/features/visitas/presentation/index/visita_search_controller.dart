import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/visita.dart';
import '../../infrastructure/visita_repository.dart';

part 'visita_search_controller.g.dart';

@riverpod
class VisitaSearchQueryParamsController
    extends _$VisitaSearchQueryParamsController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

@riverpod
class VisitaIndexScreenController extends _$VisitaIndexScreenController {
  VisitaIndexScreenController();

  @override
  Future<int> build() {
    return ref
        .read(visitaRepositoryProvider)
        .getVisitasCountList(
          searchText: ref.watch(visitaSearchQueryParamsControllerProvider),
        );
  }
}

@riverpod
class VisitaIndexScreenPaginatedController
    extends _$VisitaIndexScreenPaginatedController {
  VisitaIndexScreenPaginatedController();

  @override
  Future<List<Visita>> build({required int page}) {
    return ref
        .read(visitaRepositoryProvider)
        .getVisitaList(
          page: page,
          searchText: ref.watch(visitaSearchQueryParamsControllerProvider),
        );
  }
}
