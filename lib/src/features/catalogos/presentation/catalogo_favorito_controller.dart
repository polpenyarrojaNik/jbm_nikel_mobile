import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
import '../infrastructure/catalogo_repository.dart';

part 'catalogo_favorito_controller.freezed.dart';

@freezed
class CatalogoFavoritoControllerState with _$CatalogoFavoritoControllerState {
  const CatalogoFavoritoControllerState._();

  const factory CatalogoFavoritoControllerState.checking() = _loading;
  const factory CatalogoFavoritoControllerState.favorite() = _favorite;

  const factory CatalogoFavoritoControllerState.error(Object error,
      {StackTrace? stackTrace}) = _error;
  const factory CatalogoFavoritoControllerState.noFavorite() = _noFavorite;
}

final catalogoFavoritoControllerProvider = StateNotifierProvider.autoDispose
    .family<CatalogoFavoritoController, CatalogoFavoritoControllerState, int>(
  (ref, catalogoId) => CatalogoFavoritoController(
      ref.watch(catalogoRepositoryProvider), catalogoId),
);

class CatalogoFavoritoController
    extends StateNotifier<CatalogoFavoritoControllerState> {
  CatalogoFavoritoController(this.catalogoRepository, this.catalogoId)
      : super(const CatalogoFavoritoControllerState.checking()) {
    isModuleFavorite();
  }

  final CatalogoRepository catalogoRepository;
  final int catalogoId;

  Future<void> isModuleFavorite() async {
    try {
      if (state != const CatalogoFavoritoControllerState.checking()) {
        state = const CatalogoFavoritoControllerState.checking();
      }
      final isFavorite =
          await catalogoRepository.isCatalogoFavorite(catalogoId: catalogoId);

      state = isFavorite
          ? const CatalogoFavoritoControllerState.favorite()
          : const CatalogoFavoritoControllerState.noFavorite();
    } on AppException catch (e, stackTrace) {
      state = CatalogoFavoritoControllerState.error(e.details.message,
          stackTrace: stackTrace);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> removeCatalogoFavorite() async {
    try {
      if (state != const CatalogoFavoritoControllerState.checking()) {
        state = const CatalogoFavoritoControllerState.checking();
      }
      await catalogoRepository.removeCatalogoFavorito(catalogoId: catalogoId);

      await isModuleFavorite();
    } on AppException catch (e, stackTrace) {
      state = CatalogoFavoritoControllerState.error(e.details.message,
          stackTrace: stackTrace);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> setCatalogoFavorite() async {
    try {
      if (state != const CatalogoFavoritoControllerState.checking()) {
        state = const CatalogoFavoritoControllerState.checking();
      }

      await catalogoRepository.setCatalogoToFavorite(catalogoId: catalogoId);

      await isModuleFavorite();
    } on AppException catch (e, stackTrace) {
      state = CatalogoFavoritoControllerState.error(e.details.message,
          stackTrace: stackTrace);
    } catch (e) {
      rethrow;
    }
  }
}
