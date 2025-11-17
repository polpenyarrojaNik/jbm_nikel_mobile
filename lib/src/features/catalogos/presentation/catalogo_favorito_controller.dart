import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/domain/adjunto_param.dart';
import '../domain/catalogo.dart';
import '../infrastructure/catalogo_repository.dart';

part 'catalogo_favorito_controller.g.dart';

@riverpod
class CatalogoFavoritoController extends _$CatalogoFavoritoController {
  @override
  Future<bool> build(int catalogoId) {
    return ref
        .read(catalogoRepositoryProvider)
        .isCatalogoFavorite(catalogoId: catalogoId);
  }

  Future<void> removeCatalogoFavorite(String nombreArchivo) async {
    await ref
        .read(catalogoRepositoryProvider)
        .removeCatalogoFavorito(
          AdjuntoParam(id: catalogoId.toString(), nombreArchivo: nombreArchivo),
        );
  }

  Future<void> setCatalogoFavorite(Catalogo catalogo) async {
    await ref.read(catalogoRepositoryProvider).setCatalogoToFavorite(catalogo);
  }
}

final setCatalogoFavoriteMutation = Mutation<void>();
final removeCatalogoFavoriteMutation = Mutation<void>();
