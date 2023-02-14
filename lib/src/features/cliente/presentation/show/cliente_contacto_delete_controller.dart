import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_modificacion_param.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';

part 'cliente_contacto_delete_controller.g.dart';

@riverpod
class ClienteContactoDeleteController
    extends _$ClienteContactoDeleteController {
  @override
  Future<bool> build(ClienteModificacionParam clienteModificacionParam) async {
    return false;
  }

  Future<void> deleteClienteContacto() async {
    state = const AsyncLoading();

    try {
      await ref.read(clienteRepositoryProvider).deleteClienteContacto(
          clienteModificacionParam.clienteId,
          clienteModificacionParam.id!,
          clienteModificacionParam.tratado);
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
