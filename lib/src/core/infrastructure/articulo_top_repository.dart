import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/articulo_top_dto.dart';

import '../../features/articulos/domain/articulo.dart';
import '../../features/cliente/domain/articulo_top.dart';
import '../exceptions/app_exception.dart';

final articuloTopRepositoryProvider =
    Provider.autoDispose<ArticuloTopRepository>(
  (ref) {
    final db = ref.watch(appRemoteDatabaseProvider);
    return ArticuloTopRepository(db);
  },
);

final articuloTopProvider = FutureProvider.family
    .autoDispose<List<ArticuloTop>, String>((ref, clienteId) {
  final articuloTopRepository = ref.watch(articuloTopRepositoryProvider);
  return articuloTopRepository.getArticuloTopList(clienteId: clienteId);
});

class ArticuloTopRepository {
  final RemoteAppDatabase db;

  ArticuloTopRepository(this.db);

  Future<List<ArticuloTop>> getArticuloTopList(
      {required String clienteId}) async {
    try {
      final query = await db.customSelect('''
          SELECT estadisticas_articulos_top.ARTICULO_ID
, ARTICULOS.DESCRIPCION_ES
,IFNULL((SELECT SUM (estadisticas_venta.importe)
FROM estadisticas_venta
WHERE estadisticas_venta.articulo_id = estadisticas_articulos_top.articulo_id
AND estadisticas_venta.anyo * 100 + estadisticas_venta.mes >= strftime('%Y', DATE(DATE(),'-12 month')) * 100 + strftime('%m',DATE(DATE(),'-12 month')))
 ,0) VENTAS_TOTAL
,IFNULL((SELECT SUM (estadisticas_venta.importe)
FROM estadisticas_venta
WHERE estadisticas_venta.articulo_id = estadisticas_articulos_top.articulo_id
AND estadisticas_venta.cliente_id = :clienteId
AND estadisticas_venta.anyo * 100 + estadisticas_venta.mes >= strftime('%Y', DATE(DATE(),'-12 month')) * 100 + strftime('%m',DATE(DATE(),'-12 month')))
,0) VENTAS_CLIENTE
, (SELECT DIVISA_ID FROM CLIENTES WHERE cliente_id = :clienteId) DIVISA_ID
FROM estadisticas_articulos_top
INNER JOIN ARTICULOS ON ARTICULOS.articulo_id = ESTADISTICAS_ARTICULOS_TOP.ARTICULO_ID
ORDER BY VENTAS_TOTAL DESC
''', variables: [
        Variable(clienteId),
      ], readsFrom: {
        db.estadisticasArticulosTopTable,
        db.estadisticasClienteUsuarioVentasTable
      }).get();

      return query
          .map((row) => ArticuloTopDTO.fromJson(row.data).toDomain())
          .toList();
    } on AppException {
      rethrow;
    }
  }

  Future<Articulo> getArticuloById({required String articuloId}) async {
    try {
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
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }
}
