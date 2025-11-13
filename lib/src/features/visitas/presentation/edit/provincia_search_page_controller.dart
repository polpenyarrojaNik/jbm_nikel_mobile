import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/domain/provincia.dart';
import '../../infrastructure/visita_repository.dart';

part 'provincia_search_page_controller.g.dart';

final provinciasSearchQueryStateProvider = StateProvider.autoDispose<String>((
  ref,
) {
  return '';
});

@riverpod
class ProvinciaSearchPageController extends _$ProvinciaSearchPageController {
  ProvinciaSearchPageController();

  @override
  Future<List<Provincia>> build(String? paisId) {
    return ref
        .read(visitaRepositoryProvider)
        .getProvincias(paisId, ref.watch(provinciasSearchQueryStateProvider));
  }
}
