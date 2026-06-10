import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/cliente.dart';
import '../../domain/cliente_estado.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_search_controller.g.dart';

@riverpod
class ClienteIndexControllerSearchTextParameter
    extends _$ClienteIndexControllerSearchTextParameter {
  @override
  String build() {
    return '';
  }

  void setFilter(String searchText) {
    state = searchText;
  }
}

@riverpod
class ClientesEstadoFilterController extends _$ClientesEstadoFilterController {
  @override
  ClienteEstado build() {
    return ClienteEstado.todos;
  }

  void setFilter(ClienteEstado searchStatus) {
    state = searchStatus;
  }
}

@riverpod
class ClienteIndexScreenController extends _$ClienteIndexScreenController {
  ClienteIndexScreenController();

  @override
  Future<int> build() {
    return ref
        .read(clienteRepositoryProvider)
        .getClienteCountList(
          clienteEstado: ref.watch(clientesEstadoFilterControllerProvider),
          searchText: ref.watch(
            clienteIndexControllerSearchTextParameterProvider,
          ),
        );
  }
}

@riverpod
class ClienteIndexScreenPaginatedController
    extends _$ClienteIndexScreenPaginatedController {
  ClienteIndexScreenPaginatedController();

  @override
  Future<List<Cliente>> build({required int page}) {
    return ref
        .read(clienteRepositoryProvider)
        .getClienteLista(
          clienteEstado: ref.watch(clientesEstadoFilterControllerProvider),
          page: page,
          searchText: ref.watch(
            clienteIndexControllerSearchTextParameterProvider,
          ),
        );
  }
}
