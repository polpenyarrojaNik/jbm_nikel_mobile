import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/expedicion.dart';
import '../infrastructure/expedicion_repository.dart';

part 'expedicion_search_controller.g.dart';

@riverpod
class ExpedicionSearchQueryParamsController
    extends _$ExpedicionSearchQueryParamsController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

@riverpod
class ExpedicionIndexScreenController
    extends _$ExpedicionIndexScreenController {
  ExpedicionIndexScreenController();

  @override
  Future<List<Expedicion>> build() {
    return ref
        .read(expedicionRepositoryProvider)
        .getExpedicionDTOLista(
          searchText: ref.watch(expedicionSearchQueryParamsControllerProvider),
        );
  }
}
