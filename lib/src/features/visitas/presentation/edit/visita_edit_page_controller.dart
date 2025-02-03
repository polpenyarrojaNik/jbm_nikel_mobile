import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../domain/visita.dart';
import '../../domain/visita_motivos_no_venta.dart';
import '../../domain/visita_sector.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../cliente/infrastructure/cliente_repository.dart';
import '../../domain/visita_competidor.dart';
import '../../domain/visita_id_param.dart';
import '../../infrastructure/visita_repository.dart';

part 'visita_edit_page_controller.freezed.dart';
part 'visita_edit_page_controller.g.dart';

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
            ofertaRealizada: false,
            interesCliente: InteresCliente.medio,
            pedidoRealizado: false,
            almacenPropio: false,
            capacidad: Capacidad.media,
            frecuenciaPedido: FrecuenciaPedido.mensual,
            latitud: 0,
            longitud: 0,
            lastUpdated: DateTime.now().toUtc(),
            deleted: false,
            enviada: false,
            tratada: false,
            competenciaList: [],
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
            ofertaRealizada: false,
            interesCliente: InteresCliente.medio,
            pedidoRealizado: false,
            almacenPropio: false,
            capacidad: Capacidad.media,
            frecuenciaPedido: FrecuenciaPedido.mensual,
            latitud: 0,
            longitud: 0,
            lastUpdated: DateTime.now().toUtc(),
            deleted: false,
            enviada: false,
            tratada: false,
            competenciaList: [],
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

@riverpod
class VisitaSectorListFormDropdownController
    extends _$VisitaSectorListFormDropdownController {
  VisitaSectorListFormDropdownController();

  @override
  Future<List<VisitaSector>> build() async {
    return ref.read(visitaRepositoryProvider).getVisitaSectores();
  }
}

@riverpod
class VisitaCompetidorListFormDropdownController
    extends _$VisitaCompetidorListFormDropdownController {
  VisitaCompetidorListFormDropdownController();

  @override
  Future<List<VisitaCompetidor>> build() async {
    return ref.read(visitaRepositoryProvider).getVisitaCompetidores();
  }
}

@riverpod
class VisitaMotivosNoVentaListFormDropdownController
    extends _$VisitaMotivosNoVentaListFormDropdownController {
  VisitaMotivosNoVentaListFormDropdownController();

  @override
  Future<List<VisitaMotivoNoVenta>> build() async {
    return ref.read(visitaRepositoryProvider).getVisitaMotivosNoVenta();
  }
}
