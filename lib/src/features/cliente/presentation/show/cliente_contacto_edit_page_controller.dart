import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_contacto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../domain/cliente_contacto_edit_page_data.dart';
import '../../domain/cliente_contacto_edit_param.dart';

part 'cliente_contacto_edit_page_controller.g.dart';

@riverpod
class ClienteContactoEditPageController
    extends _$ClienteContactoEditPageController {
  @override
  Future<ClienteContactoEditPageData> build(
      ClienteContactoEditParam clienteContactoEditParam) async {
    ClienteContacto? clienteContacto;

    if (clienteContactoEditParam.clienteContactoId != null) {
      clienteContacto = await ref
          .read(clienteRepositoryProvider)
          .getClienteContactoById(
              clienteContactoId: clienteContactoEditParam.clienteContactoId!,
              tratado: clienteContactoEditParam.tratado);
    }

    return ClienteContactoEditPageData(
        isSent: false, clienteContacto: clienteContacto);
  }

  Future<void> upsertClienteContacto(
      ClienteContacto clienteContactoToUpsert) async {
    state = const AsyncLoading();
    try {
      final clienteContacto = await ref
          .read(clienteRepositoryProvider)
          .upsertClienteContacto(clienteContactoToUpsert);

      state = AsyncData(
        ClienteContactoEditPageData(
            isSent: true, clienteContacto: clienteContacto),
      );
    } on AppException catch (e, stackTrace) {
      state = AsyncError(
        ClienteContactoEditPageData(
            clienteContacto: clienteContactoToUpsert, isSent: true, error: e),
        stackTrace,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteClienteContacto() async {
    state = const AsyncLoading();

    try {
      await ref.read(clienteRepositoryProvider).deleteClienteContacto(
          clienteContactoEditParam.clienteId,
          clienteContactoEditParam.clienteContactoId!,
          clienteContactoEditParam.tratado);
      state = const AsyncData(
          ClienteContactoEditPageData(isSent: true, clienteContacto: null));
    } on AppException catch (e, stackTrace) {
      final clienteContacto =
          await ref.read(clienteRepositoryProvider).getClienteContactoById(
                clienteContactoId: clienteContactoEditParam.clienteContactoId!,
                tratado: clienteContactoEditParam.tratado,
              );
      state = AsyncError(
        ClienteContactoEditPageData(
            clienteContacto: clienteContacto, isSent: true, error: e),
        stackTrace,
      );
    } catch (e) {
      rethrow;
    }
  }
}
