import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../../../usuario/application/usuario_notifier.dart';
import '../../../infrastructure/articulo_repository.dart';

part 'articulo_ultimos_precios_search_controller.g.dart';

final articuloUltimosPreciosSearchQueryStateProvider =
    StateProvider.autoDispose<String>((ref) {
      return '';
    });

@riverpod
class ArticuloUltimosPreciosIndexScreenController
    extends _$ArticuloUltimosPreciosIndexScreenController {
  ArticuloUltimosPreciosIndexScreenController();

  @override
  Future<int> build({required String articuloId}) {
    return ref
        .read(articuloRepositoryProvider)
        .getArticuloUltimosPreciosCountList(
          articuloId: articuloId,
          usuarioId: ref.watch(usuarioNotifierProvider)!.id,
          searchText: ref.watch(articuloUltimosPreciosSearchQueryStateProvider),
        );
  }
}

@riverpod
class ArticuloUltimosPreciosIndexScreenPaginatedController
    extends _$ArticuloUltimosPreciosIndexScreenPaginatedController {
  ArticuloUltimosPreciosIndexScreenPaginatedController();

  @override
  Future<List<EstadisticasUltimosPrecios>> build({
    required int page,
    required String articuloId,
  }) {
    return ref
        .read(articuloRepositoryProvider)
        .getArticuloUltimosPreciosList(
          articuloId: articuloId,
          usuarioId: ref.watch(usuarioNotifierProvider)!.id,
          page: page,
          searchText: ref.watch(articuloUltimosPreciosSearchQueryStateProvider),
        );
  }
}
