import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../domain/cliente_imp_param.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_direccion_delete_controller.g.dart';

@riverpod
class ClienteDireccionDeleteController
    extends _$ClienteDireccionDeleteController {
  @override
  Future<bool> build(ClienteImpParam clienteImpParam) async {
    return false;
  }

  Future<void> deleteClienteDireccion() async {
    state = const AsyncLoading();

    try {
      await ref
          .read(clienteRepositoryProvider)
          .deleteClienteDireccion(
            clienteImpParam.clienteId,
            direccionId: clienteImpParam.id,
            direccionImpGuid: clienteImpParam.impId,
          );

      state = const AsyncData(true);
    } on AppException catch (e, stackTrace) {
      state = AsyncError(false, stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
