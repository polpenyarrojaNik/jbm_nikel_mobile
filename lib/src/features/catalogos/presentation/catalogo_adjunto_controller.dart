import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/usuario_service.dart';

import '../../../core/domain/adjunto_param.dart';
import '../../../core/exceptions/app_exception.dart';
import '../infrastructure/catalogo_repository.dart';

part 'catalogo_adjunto_controller.freezed.dart';

@freezed
class CatalogoAdjuntoState with _$CatalogoAdjuntoState {
  const CatalogoAdjuntoState._();
  const factory CatalogoAdjuntoState.initial() = _Initial;
  const factory CatalogoAdjuntoState.loading() = _Loading;
  const factory CatalogoAdjuntoState.data(File? file, bool descarga) = _Data;
  const factory CatalogoAdjuntoState.error(
    String failure,
  ) = _Error;
}

final catalogoAdjuntoControllerProvider = StateNotifierProvider.autoDispose<
    CatalogoAdjuntoController, CatalogoAdjuntoState>(
  (ref) => CatalogoAdjuntoController(ref),
);

class CatalogoAdjuntoController extends StateNotifier<CatalogoAdjuntoState> {
  final Ref _ref;

  CatalogoAdjuntoController(this._ref)
      : super(const CatalogoAdjuntoState.initial());

  Future<void> getAttachmentFile({required AdjuntoParam adjuntoParam}) async {
    state = const CatalogoAdjuntoState.loading();

    try {
      final user = await _ref.read(usuarioServiceProvider).getSignedInUsuario();

      final file = await _ref.read(catalogoRepositoryProvider).getDocumentFile(
            adjuntoParam: adjuntoParam,
            provisionalToken: user!.provisionalToken,
            test: user.test,
          );
      state = CatalogoAdjuntoState.data(file, adjuntoParam.descarga ?? false);
    } on AppException catch (e) {
      state = CatalogoAdjuntoState.error(e.details.message);
    } catch (e) {
      rethrow;
    }
  }
}
