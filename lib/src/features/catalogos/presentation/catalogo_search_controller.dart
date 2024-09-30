import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/catalogo.dart';
import '../domain/tipo_catalogo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/idioma_catalogo.dart';
import '../domain/tipo_precio_catalogo.dart';
import '../infrastructure/catalogo_repository.dart';

part 'catalogo_search_controller.g.dart';

final catalogoSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

final tipoCatalogoQueryStateProvider =
    StateProvider.autoDispose<TipoCatalogo?>((ref) {
  return null;
});
final tipoPrecioCatalogoQueryStateProvider =
    StateProvider.autoDispose<TipoPrecioCatalogo?>((ref) {
  return null;
});
final idiomaCatalogoQueryStateProvider =
    StateProvider.autoDispose<IdiomaCatalogo?>((ref) {
  return null;
});

@riverpod
class CatalogoIndexScreenController extends _$CatalogoIndexScreenController {
  CatalogoIndexScreenController();

  @override
  Future<List<Catalogo>> build() {
    return ref.read(catalogoRepositoryProvider).getCatalogoList(
          tipoCatalogo: ref.watch(tipoCatalogoQueryStateProvider),
          tipoPrecioCatalogo: ref.watch(tipoPrecioCatalogoQueryStateProvider),
          idiomaCatalogo: ref.watch(idiomaCatalogoQueryStateProvider),
          searchText: ref.watch(catalogoSearchQueryStateProvider),
        );
  }
}
