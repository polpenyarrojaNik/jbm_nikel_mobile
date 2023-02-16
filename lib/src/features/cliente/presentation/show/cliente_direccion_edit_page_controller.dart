import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../domain/cliente_direccion.dart';
import '../../domain/cliente_direccion_edit_page_data.dart';
import '../../domain/cliente_direccion_imp.dart';
import '../../domain/cliente_imp_param.dart';

part 'cliente_direccion_edit_page_controller.g.dart';

@riverpod
class ClienteDireccionEditPageController
    extends _$ClienteDireccionEditPageController {
  @override
  Future<ClienteDireccionEditPageData> build(
      ClienteImpParam clienteImpParam) async {
    ClienteDireccion? clienteDireccion;

    if (clienteImpParam.impId != null) {
      clienteDireccion = await ref
          .read(clienteRepositoryProvider)
          .getClienteDireccionImpById(clienteImpParam.impId!);
    } else if (clienteImpParam.id != null) {
      clienteDireccion = await ref
          .read(clienteRepositoryProvider)
          .getClienteDireccionSyncById(
              clienteImpParam.clienteId, clienteImpParam.id!);
    }
    return ClienteDireccionEditPageData(
      isSent: false,
      clienteDireccion: clienteDireccion,
    );
  }

  Future<void> upsertClienteDireccionImp(
      ClienteDireccionImp clienteDireccionImp) async {
    state = const AsyncLoading();
    try {
      final clienteDireccion =
          await ref.read(clienteRepositoryProvider).upsertClienteDireccionImp(
                clienteDireccionImp,
                clienteImpParam.id == null,
              );

      state = AsyncData(
        ClienteDireccionEditPageData(
            isSent: true, clienteDireccion: clienteDireccion),
      );
    } on AppException catch (e, stackTrace) {
      state = AsyncError(
        ClienteDireccionEditPageData(
            clienteDireccion: ClienteDireccion.fromClienteDireccionImp(
              clienteDireccionImp,
            ),
            isSent: true,
            error: e),
        stackTrace,
      );
    } catch (e) {
      rethrow;
    }
  }
}
