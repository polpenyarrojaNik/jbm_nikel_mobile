import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/cliente_ventas_articulo.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_ventas_articulo_controller.g.dart';

@riverpod
class ClienteVentasArticuloQueryParamsController
    extends _$ClienteVentasArticuloQueryParamsController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

@riverpod
class ClienteVentasArticuloIndexScreenPaginatedController
    extends _$ClienteVentasArticuloIndexScreenPaginatedController {
  ClienteVentasArticuloIndexScreenPaginatedController();

  @override
  Future<List<ClienteVentasArticulo>> build({required String clienteId}) {
    return ref
        .read(clienteRepositoryProvider)
        .getClienteVentasArticuloList(
          clienteId: clienteId,
          searchText: ref.watch(
            clienteVentasArticuloQueryParamsControllerProvider,
          ),
        );
  }
}
