import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../../infrastructure/cliente_repository.dart';

part 'cliente_ultimos_precios_search_controller.g.dart';

@riverpod
class ClienteUltimosPreciosSearchQueryParamsController
    extends _$ClienteUltimosPreciosSearchQueryParamsController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

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
          searchText: ref.watch(
            clienteUltimosPreciosSearchQueryParamsControllerProvider,
          ),
        );
  }
}

@riverpod
class ClienteUltimosPreciosIndexScreenPaginatedController
    extends _$ClienteUltimosPreciosIndexScreenPaginatedController {
  ClienteUltimosPreciosIndexScreenPaginatedController();

  @override
  Future<List<EstadisticasUltimosPrecios>> build({
    required int page,
    required String clienteId,
  }) {
    return ref
        .read(clienteRepositoryProvider)
        .getClienteUltimosPreciosList(
          clienteId: clienteId,
          page: page,
          searchText: ref.watch(
            clienteUltimosPreciosSearchQueryParamsControllerProvider,
          ),
        );
  }
}
