import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/domain/pais.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_direccion_seleccionar_pais_search_controller.g.dart';

final clienteDireccionSeleccionarPaisSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

@riverpod
class ClienteDireccionSeleccionarPaisPageController
    extends _$ClienteDireccionSeleccionarPaisPageController {
  ClienteDireccionSeleccionarPaisPageController();

  @override
  Future<List<Pais>> build() {
    return ref.read(clienteRepositoryProvider).getPaisList(
        searchText:
            ref.watch(clienteDireccionSeleccionarPaisSearchQueryStateProvider));
  }
}
