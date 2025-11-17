import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/domain/pais.dart';
import '../../infrastructure/visita_repository.dart';

part 'pais_search_page_controller.g.dart';

@riverpod
class PaisesSearchQueryParamsController
    extends _$PaisesSearchQueryParamsController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

@riverpod
class PaisSearchPageController extends _$PaisSearchPageController {
  PaisSearchPageController();

  @override
  Future<List<Pais>> build() {
    return ref
        .read(visitaRepositoryProvider)
        .getPaises(ref.watch(paisesSearchQueryParamsControllerProvider));
  }
}
