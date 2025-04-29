import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/expedicion.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../infrastructure/expedicion_repository.dart';

part 'expedicion_search_controller.g.dart';

final expedicionSearchQueryStateProvider = StateProvider.autoDispose<String>((
  ref,
) {
  return '';
});

@riverpod
class ExpedicionIndexScreenController
    extends _$ExpedicionIndexScreenController {
  ExpedicionIndexScreenController();

  @override
  Future<List<Expedicion>> build() {
    return ref
        .read(expedicionRepositoryProvider)
        .getExpedicionDTOLista(
          searchText: ref.watch(expedicionSearchQueryStateProvider),
        );
  }
}
