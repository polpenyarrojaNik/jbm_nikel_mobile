import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../domain/cliente_contacto.dart';
import '../../domain/cliente_contacto_imp.dart';
import '../../domain/cliente_contacto_imp_edit_page_data.dart';
import '../../domain/cliente_imp_param.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_contacto_edit_page_controller.g.dart';

@riverpod
class ClienteContactoEditPageController
    extends _$ClienteContactoEditPageController {
  @override
  Future<ClienteContactoImpEditPageData> build(
    ClienteImpParam clienteImpParam,
  ) async {
    ClienteContacto? clienteContacto;

    if (clienteImpParam.impId != null) {
      clienteContacto = await ref
          .read(clienteRepositoryProvider)
          .getClienteContactoImpById(clienteImpParam.impId!);
    } else if (clienteImpParam.id != null) {
      clienteContacto = await ref
          .read(clienteRepositoryProvider)
          .getClienteContactoSyncById(clienteImpParam.id!);
    }

    return ClienteContactoImpEditPageData(
      isSent: false,
      clienteContacto: clienteContacto,
    );
  }

  Future<void> upsertClienteContactoImp(
    ClienteContactoImp clienteContactoImp,
  ) async {
    state = const AsyncLoading();
    try {
      final clienteContacto = await ref
          .read(clienteRepositoryProvider)
          .upsertClienteContactoImp(
            clienteContactoImp,
            clienteImpParam.id == null,
          );

      state = AsyncData(
        ClienteContactoImpEditPageData(
          isSent: true,
          clienteContacto: clienteContacto,
        ),
      );
    } on AppException catch (e, stackTrace) {
      state = AsyncError(
        ClienteContactoImpEditPageData(
          clienteContacto: ClienteContacto.fromClienteContactoImp(
            clienteContactoImp,
          ),
          isSent: true,
          error: e,
        ),
        stackTrace,
      );
    } catch (e) {
      rethrow;
    }
  }
}
