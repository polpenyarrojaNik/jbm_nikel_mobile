import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/visita.dart';
import '../../infrastructure/visita_repository.dart';

part 'visita_search_controller.g.dart';

final visitasSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

@riverpod
class VisitaIndexScreenController extends _$VisitaIndexScreenController {
  VisitaIndexScreenController();

  @override
  Future<int> build() {
    return ref.read(visitaRepositoryProvider).getVisitasCountList(
        searchText: ref.watch(visitasSearchQueryStateProvider));
  }
}

@riverpod
class VisitaIndexScreenPaginatedController
    extends _$VisitaIndexScreenPaginatedController {
  VisitaIndexScreenPaginatedController();

  @override
  Future<List<Visita>> build({required int page}) {
    return ref.read(visitaRepositoryProvider).getVisitaList(
        page: page, searchText: ref.watch(visitasSearchQueryStateProvider));
  }
}
