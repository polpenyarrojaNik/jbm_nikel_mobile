import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../domain/cliente_imp_param.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_contacto_delete_controller.g.dart';

@riverpod
class ClienteContactoDeleteController
    extends _$ClienteContactoDeleteController {
  @override
  Future<bool> build(ClienteImpParam clienteImpParam) async {
    return false;
  }

  Future<void> deleteClienteContacto() async {
    state = const AsyncLoading();

    try {
      if (clienteImpParam.impId != null) {
        await ref.read(clienteRepositoryProvider).deleteClienteContactoImp(
              clienteImpParam.impId!,
            );
      } else {
        await ref.read(clienteRepositoryProvider).deleteClienteContactoTratado(
              clienteImpParam.clienteId,
              clienteImpParam.id!,
            );
      }
      state = const AsyncData(true);
    } on AppException catch (e, stackTrace) {
      state = AsyncError(
        false,
        stackTrace,
      );
    } catch (e) {
      rethrow;
    }
  }
}
