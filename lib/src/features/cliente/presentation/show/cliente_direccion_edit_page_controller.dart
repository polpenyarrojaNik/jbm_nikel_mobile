import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../domain/cliente_direccion.dart';
import '../../domain/cliente_direccion_edit_page_data.dart';
import '../../domain/cliente_direccion_edit_param.dart';

part 'cliente_direccion_edit_page_controller.g.dart';

@riverpod
class ClienteDireccionEditPageController
    extends _$ClienteDireccionEditPageController {
  @override
  Future<ClienteDireccionEditPageData> build(
      ClienteDireccionEditParam clienteDireccionEditParam) async {
    ClienteDireccion? clienteDireccion;

    if (clienteDireccionEditParam.clienteDireccionId != null) {
      clienteDireccion = await ref
          .read(clienteRepositoryProvider)
          .getClienteDireccionById(
            clienteId: clienteDireccionEditParam.clienteId,
            clienteDireccionId: clienteDireccionEditParam.clienteDireccionId!,
            tratado: clienteDireccionEditParam.tratado,
          );
    }

    return ClienteDireccionEditPageData(
      isSent: false,
      clienteDireccion: clienteDireccion,
    );
  }

  Future<void> upsertClienteDireccion(
      ClienteDireccion clienteDireccionToUpsert) async {
    state = const AsyncLoading();
    try {
      final clienteDireccion = await ref
          .read(clienteRepositoryProvider)
          .upsertClienteDireccion(clienteDireccionToUpsert);

      state = AsyncData(
        ClienteDireccionEditPageData(
            isSent: true, clienteDireccion: clienteDireccion),
      );
    } on AppException catch (e, stackTrace) {
      state = AsyncError(
        ClienteDireccionEditPageData(
            clienteDireccion: clienteDireccionToUpsert, isSent: true, error: e),
        stackTrace,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteClienteDireccion() async {
    state = const AsyncLoading();

    try {
      await ref.read(clienteRepositoryProvider).deleteClienteDireccion(
          clienteDireccionEditParam.clienteId,
          clienteDireccionEditParam.clienteDireccionId!);
      state = const AsyncData(
          ClienteDireccionEditPageData(isSent: true, clienteDireccion: null));
    } on AppException catch (e, stackTrace) {
      final clienteDireccion = await ref
          .read(clienteRepositoryProvider)
          .getClienteDireccionById(
            clienteId: clienteDireccionEditParam.clienteId,
            clienteDireccionId: clienteDireccionEditParam.clienteDireccionId!,
            tratado: clienteDireccionEditParam.tratado,
          );
      state = AsyncError(
        ClienteDireccionEditPageData(
            clienteDireccion: clienteDireccion, isSent: true, error: e),
        stackTrace,
      );
    } catch (e) {
      rethrow;
    }
  }
}
