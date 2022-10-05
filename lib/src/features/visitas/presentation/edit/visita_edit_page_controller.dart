import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/domain/visita.dart';

import '../../../../core/domain/entity_id_is_local_param.dart';
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
        EntityIdIsLocalParam>((ref, visitaIdIsLocalParam) {
  return VisitaEditPageController(
    visitaRepository: ref.watch(visitaRepositoryProvider),
    visitaIdIsLocalParam: visitaIdIsLocalParam,
  );
});

class VisitaEditPageController
    extends StateNotifier<VisitaEditPageControllerState> {
  final VisitaRepository visitaRepository;
  final EntityIdIsLocalParam visitaIdIsLocalParam;

  VisitaEditPageController({
    required this.visitaIdIsLocalParam,
    required this.visitaRepository,
  }) : super(const VisitaEditPageControllerState.loading()) {
    getVisita();
  }

  Future<void> getVisita() async {
    state = const VisitaEditPageControllerState.loading();

    if (visitaIdIsLocalParam.isNew) {
      state = const VisitaEditPageControllerState.data(
        null,
      );
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
