import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_contacto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../domain/cliente_contacto_edit_page_data.dart';
import '../../domain/cliente_modificacion_param.dart';

part 'cliente_contacto_modificacion_edit_page_controller.g.dart';

@riverpod
class ClienteContactoModificacionEditPageController
    extends _$ClienteContactoModificacionEditPageController {
  @override
  Future<ContactoModificacionEditPageData> build(
      ClienteModificacionParam clienteModificacionParam) async {
    ClienteContacto? clienteContacto;

    if (clienteModificacionParam.id != null) {
      clienteContacto =
          await ref.read(clienteRepositoryProvider).getClienteContactoById(
                clienteContactoId: clienteModificacionParam.id!,
                tratado: clienteModificacionParam.tratado,
              );
    }

    return ContactoModificacionEditPageData(
        isSent: false, clienteContacto: clienteContacto);
  }

  Future<void> upsertContactoModificacion(
      ClienteContacto contactoModificacionToUpsert) async {
    state = const AsyncLoading();
    try {
      final clienteContacto =
          await ref.read(clienteRepositoryProvider).upsertContactoModificacion(
                contactoModificacionToUpsert,
                clienteModificacionParam.id == null,
              );

      state = AsyncData(
        ContactoModificacionEditPageData(
            isSent: true, clienteContacto: clienteContacto),
      );
    } on AppException catch (e, stackTrace) {
      state = AsyncError(
        ContactoModificacionEditPageData(
            clienteContacto: contactoModificacionToUpsert,
            isSent: true,
            error: e),
        stackTrace,
      );
    } catch (e) {
      rethrow;
    }
  }
}
