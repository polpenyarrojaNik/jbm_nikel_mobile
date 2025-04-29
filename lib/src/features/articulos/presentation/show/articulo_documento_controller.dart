import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/articulo_repository.dart';
import '../../../usuario/infrastructure/usuario_service.dart';

import '../../../../core/domain/adjunto_param.dart';
import '../../../../core/exceptions/app_exception.dart';
part 'articulo_documento_controller.freezed.dart';

@freezed
class ArticuloDocumentoState with _$ArticuloDocumentoState {
  const ArticuloDocumentoState._();
  const factory ArticuloDocumentoState.initial() = _Initial;
  const factory ArticuloDocumentoState.loading() = _Loading;
  const factory ArticuloDocumentoState.data(File? file) = _Data;
  const factory ArticuloDocumentoState.error(String failure) = _Error;
}

final articuloDocumentoControllerProvider = StateNotifierProvider.autoDispose<
  ArticuloDocumentoController,
  ArticuloDocumentoState
>((ref) => ArticuloDocumentoController(ref));

class ArticuloDocumentoController
    extends StateNotifier<ArticuloDocumentoState> {
  final Ref _ref;

  ArticuloDocumentoController(this._ref)
    : super(const ArticuloDocumentoState.initial());

  Future<void> getDocumentFile({required AdjuntoParam adjuntoParam}) async {
    try {
      state = const ArticuloDocumentoState.loading();
      final user = await _ref.read(usuarioServiceProvider).getSignedInUsuario();

      final file = await _ref
          .read(articuloRepositoryProvider)
          .getArticuloDocumentFile(
            adjuntoParam: adjuntoParam,
            provisionalToken: user!.provisionalToken,
            test: user.test,
          );
      state = ArticuloDocumentoState.data(file);
    } on AppException catch (e) {
      state = ArticuloDocumentoState.error(e.details.message);
    } catch (e) {
      rethrow;
    }
  }
}
