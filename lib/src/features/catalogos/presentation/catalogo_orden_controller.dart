import 'catalogo_search_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mutations_annotation/riverpod_mutations_annotation.dart';

import '../infrastructure/catalogo_repository.dart';

part 'catalogo_orden_controller.g.dart';

@riverpod
class CatalogoOrdenController extends _$CatalogoOrdenController {
  CatalogoOrdenController();

  @override
  void build() async {}

  @mutation
  Future<void> saveCatalogoAbierto(int catalogoId) async {
    await ref.read(catalogoRepositoryProvider).saveCatalogoAbierto(catalogoId);
    ref.invalidate(catalogoIndexScreenControllerProvider);
  }
}
