import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../../infrastructure/cliente_repository.dart';

part 'cliente_ultimos_precios_search_controller.g.dart';

final clienteUltimosPreciosSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
  return '';
});

@riverpod
class ClienteUltimosPreciosIndexScreenController
    extends _$ClienteUltimosPreciosIndexScreenController {
  ClienteUltimosPreciosIndexScreenController();

  @override
  Future<int> build({required String clienteId}) {
    return ref
        .read(clienteRepositoryProvider)
        .getClienteUltimosPreciosCountList(
            clienteId: clienteId,
            searchText:
                ref.watch(clienteUltimosPreciosSearchQueryStateProvider));
  }
}

@riverpod
class ClienteUltimosPreciosIndexScreenPaginatedController
    extends _$ClienteUltimosPreciosIndexScreenPaginatedController {
  ClienteUltimosPreciosIndexScreenPaginatedController();

  @override
  Future<List<EstadisticasUltimosPrecios>> build(
      {required int page, required String clienteId}) {
    return ref.read(clienteRepositoryProvider).getClienteUltimosPreciosList(
        clienteId: clienteId,
        page: page,
        searchText: ref.watch(clienteUltimosPreciosSearchQueryStateProvider));
  }
}
