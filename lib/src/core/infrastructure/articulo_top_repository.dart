import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../../features/articulos/domain/articulo.dart';
import '../../features/cliente/domain/articulo_top.dart';

final articuloTopRepositoryProvider =
    Provider.autoDispose<ArticuloTopRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final articuloTopProvider =
    FutureProvider.autoDispose<List<ArticuloTop>>((ref) {
  final articuloTopRepository = ref.watch(articuloTopRepositoryProvider);
  return articuloTopRepository.getArticuloTopList();
});

class ArticuloTopRepository {
  AppDatabase db;

  ArticuloTopRepository(this.db);

  Future<List<ArticuloTop>> getArticuloTopList() async {
    final query = (db.select(db.articuloTopTable));

    return query.asyncMap((row) async {
      final articulo = await getArticuloById(articuloId: row.articuloId);
      return row.toDomain(articulo: articulo);
    }).get();
  }

  Future<Articulo> getArticuloById({required String articuloId}) async {
    final query =
        (db.select(db.articuloTable)..where((t) => t.id.equals(articuloId)));

    return query.asyncMap((row) async {
      final familiaDTO = await (db.select(db.familiaTable)
            ..where((t) => t.id.equals(row.familiaId ?? '')))
          .getSingleOrNull();
      final subfamiliaDTO = await (db.select(db.subfamiliaTable)
            ..where((t) => t.id.equals(row.subfamiliaId ?? '')))
          .getSingleOrNull();
      return row.toDomain(
        familia: familiaDTO?.toDomain(),
        subfamilia: subfamiliaDTO?.toDomain(),
      );
    }).getSingle();
  }
}
