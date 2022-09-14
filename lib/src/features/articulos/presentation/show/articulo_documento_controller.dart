import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/usuario_service.dart';

import '../../../../core/exceptions/app_exception.dart';

final articuloDocumentoControllerProvider = StateNotifierProvider.autoDispose<
    ArticuloDocumentoController, AsyncValue<File?>>(
  (ref) => ArticuloDocumentoController(ref),
);

class ArticuloDocumentoController extends StateNotifier<AsyncValue<File?>> {
  final Ref _ref;

  ArticuloDocumentoController(this._ref) : super(const AsyncLoading());

  Future<void> getDocumentFile({required String path}) async {
    try {
      state = const AsyncLoading();
      final user = await _ref.read(usuarioServiceProvider).getSignedInUsuario();

      final file = await _ref.read(articuloRepositoryProvider).getDocumentFile(
          path: path, provisionalToken: user!.provisionalToken);
      state = AsyncData(file);
    } on AppException catch (e) {
      state = AsyncError(e.details.message);
    } catch (e) {
      rethrow;
    }
  }
}
