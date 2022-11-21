import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/cliente_ventas_articulo.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_ventas_articulo_controller.g.dart';

@riverpod
class ClienteVentasArticuloIndexScreenPaginatedController
    extends _$ClienteVentasArticuloIndexScreenPaginatedController {
  ClienteVentasArticuloIndexScreenPaginatedController();

  @override
  Future<List<ClienteVentasArticulo>> build({required String clienteId}) {
    return ref
        .read(clienteRepositoryProvider)
        .getClienteVentasArticuloList(clienteId: clienteId);
  }
}
