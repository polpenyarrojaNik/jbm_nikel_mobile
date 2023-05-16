import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/domain/pais.dart';
import '../../infrastructure/visita_repository.dart';

part 'pais_search_page_controller.g.dart';

final paisesSearchQueryStateProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final paisForFromStateProvider = StateProvider.autoDispose<Pais?>((ref) {
  return null;
});

@riverpod
class PaisSearchPageController extends _$PaisSearchPageController {
  PaisSearchPageController();

  @override
  Future<List<Pais>> build() {
    return ref
        .read(visitaRepositoryProvider)
        .getPaises(ref.watch(paisesSearchQueryStateProvider));
  }
}
