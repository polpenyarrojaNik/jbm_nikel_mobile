import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/informe.dart';
import '../infrastructure/informe_repository.dart';

part 'informe_lista_controller.g.dart';

@riverpod
class InformeSearchQueryParamsController
    extends _$InformeSearchQueryParamsController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

@riverpod
class InformeIndexScreenController extends _$InformeIndexScreenController {
  InformeIndexScreenController();

  @override
  Future<int> build() async {
    final firstPage = await ref.watch(
      informeIndexScreenPaginatedControllerProvider(page: 0).future,
    );
    return firstPage.totalRows;
  }
}

@riverpod
class InformeIndexScreenPaginatedController
    extends _$InformeIndexScreenPaginatedController {
  InformeIndexScreenPaginatedController();

  @override
  Future<({List<Informe> informeList, int totalRows})> build({
    required int page,
  }) {
    return ref
        .read(informeRepositoryProvider)
        .getInformeLista(
          page: page,
          searchText: ref.watch(informeSearchQueryParamsControllerProvider),
        );
  }
}
