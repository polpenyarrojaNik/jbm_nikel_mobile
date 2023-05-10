import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/domain/visita.dart';

import '../../../cliente/infrastructure/cliente_repository.dart';
import '../../domain/visita_id_param.dart';
import '../../infrastructure/visita_repository.dart';

part 'visita_edit_page_controller.freezed.dart';

@freezed
class VisitaEditPageControllerState with _$VisitaEditPageControllerState {
  const VisitaEditPageControllerState._();

  const factory VisitaEditPageControllerState.loading() = _loading;
  const factory VisitaEditPageControllerState.data(
    Visita? visitaLocal,
  ) = _data;
  const factory VisitaEditPageControllerState.error(Object error,
      {StackTrace? stackTrace}) = _error;
  const factory VisitaEditPageControllerState.saved(
    Visita visitaLocal,
  ) = _saved;
  const factory VisitaEditPageControllerState.saving(
    Visita visitaLocal,
  ) = _saving;
  const factory VisitaEditPageControllerState.savedError(
      Visita visitaLocal, Object error,
      {StackTrace? stackTrace}) = _savedError;
  const factory VisitaEditPageControllerState.deleted() = _deleted;
}

final visitaEditPageControllerProvider = StateNotifierProvider.autoDispose
    .family<VisitaEditPageController, VisitaEditPageControllerState,
        VisitaIdIsLocalParam>((ref, visitaIdIsLocalParam) {
  return VisitaEditPageController(
    visitaRepository: ref.watch(visitaRepositoryProvider),
    clienteRepository: ref.watch(clienteRepositoryProvider),
    usuarioId: ref.watch(usuarioNotifierProvider)!.id,
    visitaIdIsLocalParam: visitaIdIsLocalParam,
  );
});

class VisitaEditPageController
    extends StateNotifier<VisitaEditPageControllerState> {
  final VisitaRepository visitaRepository;
  final ClienteRepository clienteRepository;
  final String usuarioId;
  final VisitaIdIsLocalParam visitaIdIsLocalParam;

  VisitaEditPageController({
    required this.visitaIdIsLocalParam,
    required this.clienteRepository,
    required this.usuarioId,
    required this.visitaRepository,
  }) : super(const VisitaEditPageControllerState.loading()) {
    getVisita();
  }

  Future<void> getVisita() async {
    state = const VisitaEditPageControllerState.loading();

    if (visitaIdIsLocalParam.isNew) {
      if (visitaIdIsLocalParam.createVisitaFromClienteId != null) {
        final cliente = await clienteRepository.getClienteById(
          clienteId: visitaIdIsLocalParam.createVisitaFromClienteId!,
        );
        state = VisitaEditPageControllerState.data(
          Visita(
            clienteId: cliente.id,
            nombreCliente: cliente.nombreCliente,
            isClienteProvisional: cliente.clientePotencial ?? false,
            clienteProvisionalNombre: (cliente.clientePotencial ?? false)
                ? cliente.nombreCliente
                : null,
            fecha: DateTime.now().toUtc(),
            numEmpl: usuarioId,
            latitud: 0,
            longitud: 0,
            lastUpdated: DateTime.now().toUtc(),
            deleted: false,
            enviada: false,
            tratada: false,
          ),
        );
      } else {
        state = VisitaEditPageControllerState.data(
          Visita(
            clienteId: null,
            nombreCliente: null,
            isClienteProvisional: false,
            clienteProvisionalNombre: null,
            fecha: DateTime.now().toUtc(),
            numEmpl: usuarioId,
            latitud: 0,
            longitud: 0,
            lastUpdated: DateTime.now().toUtc(),
            deleted: false,
            enviada: false,
            tratada: false,
          ),
        );
      }
    } else {
      try {
        final visita = await visitaRepository.getVisitaById(
            visitaIdIsLocalParam: visitaIdIsLocalParam);

        state = VisitaEditPageControllerState.data(visita);
      } catch (err, stack) {
        state = VisitaEditPageControllerState.error(err, stackTrace: stack);
      }
    }
  }

  Future<void> upsertVisita({
    required Visita visitaLocal,
  }) async {
    state = VisitaEditPageControllerState.saving(visitaLocal);

    try {
      await visitaRepository.upsertVisita(visitaLocal);
      state = VisitaEditPageControllerState.saved(visitaLocal);
    } catch (err, stack) {
      state = VisitaEditPageControllerState.savedError(visitaLocal, err,
          stackTrace: stack);
    }
  }

  Future<void> deleteVisita({
    required Visita visitaLocal,
  }) async {
    state = VisitaEditPageControllerState.saving(visitaLocal);

    try {
      await visitaRepository.deleteVisita(visitaLocal.visitaAppId!);
      state = const VisitaEditPageControllerState.deleted();
    } catch (err, stack) {
      state = VisitaEditPageControllerState.savedError(visitaLocal, err,
          stackTrace: stack);
    }
  }
}
