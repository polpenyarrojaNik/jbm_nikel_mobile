import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../../usuario/infrastructure/usuario_service.dart';
import '../domain/pedido_venta.dart';
import '../domain/pedido_venta_linea.dart';

final pedidoVentaRepositoryProvider =
    Provider.autoDispose<PedidoVentaRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    return PedidoVentaRepository(db);
  },
);

final pedidoVentaListaStreamProvider =
    StreamProvider.autoDispose<List<PedidoVenta>>((ref) async* {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  yield* pedidoVentaRepository.watchPedidoVentaLista(usuarioId: usuario!.id);
});

final pedidoVentaProvider = FutureProvider.autoDispose
    .family<PedidoVenta, String>((ref, pedidoVentaId) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getPedidoVentaById(pedidoVentaId: pedidoVentaId);
});

final pedidoVentaLineaProvider = FutureProvider.autoDispose
    .family<List<PedidoVentaLinea>, String>((ref, pedidoVentaId) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getPedidoVentaLineaById(
      pedidoVentaId: pedidoVentaId);
});

class PedidoVentaRepository {
  final AppDatabase _db;

  PedidoVentaRepository(this._db);

  Stream<List<PedidoVenta>> watchPedidoVentaLista(
      {required String usuarioId, String? searchText}) {
    try {
      final query = _db.select(_db.pedidoVentaTable).join([
        innerJoin(
            _db.clienteUsuarioTable,
            _db.clienteUsuarioTable.clienteId
                .equalsExp(_db.pedidoVentaTable.clienteId)),
        innerJoin(_db.paisTable,
            _db.paisTable.id.equalsExp(_db.pedidoVentaTable.paisId)),
        innerJoin(_db.divisaTable,
            _db.divisaTable.id.equalsExp(_db.pedidoVentaTable.divisaId)),
        innerJoin(
            _db.pedidoVentaEstadoTable,
            _db.pedidoVentaEstadoTable.id
                .equalsExp(_db.pedidoVentaTable.pedidoVentaEstadoId)),
      ]);

      if (searchText != null) {
        query.where(
          _db.pedidoVentaTable.deleted.equals('N') &
              _db.clienteUsuarioTable.usuarioId.equals(usuarioId) &
              (_db.pedidoVentaTable.pedidoVentaId.like(searchText) |
                  _db.pedidoVentaTable.nombreCliente.like(searchText) |
                  _db.pedidoVentaTable.clienteId.like(searchText) |
                  _db.pedidoVentaTable.poblacion.like(searchText) |
                  _db.pedidoVentaTable.codigoPostal.like(searchText) |
                  _db.pedidoVentaTable.provincia.like(searchText)),
        );
      } else {
        query.where(_db.pedidoVentaTable.deleted.equals('N') &
            _db.clienteUsuarioTable.usuarioId.equals(usuarioId));
      }

      query.orderBy([OrderingTerm.desc(_db.pedidoVentaTable.pedidoVentaDate)]);

      return query.asyncMap((row) async {
        final pedidoVentaDTO = row.readTable(_db.pedidoVentaTable);
        final paisDTO = row.readTableOrNull(_db.paisTable);
        final divisaDTO = row.readTable(_db.divisaTable);
        final pedidoVentaEstadoDTO = row.readTable(_db.pedidoVentaEstadoTable);

        return pedidoVentaDTO.toDomain(
            pais: paisDTO?.toDomain(),
            divisa: divisaDTO.toDomain(),
            pedidoVentaEstado: pedidoVentaEstadoDTO.toDomain());
      }).watch();
    } catch (e) {
      rethrow;
    }
  }

  Future<PedidoVenta> getPedidoVentaById(
      {required String pedidoVentaId}) async {
    final query = (_db.select(_db.pedidoVentaTable)
      ..where((t) => t.pedidoVentaId.equals(pedidoVentaId)));

    return query.asyncMap((row) async {
      final paisDTO = await (_db.select(_db.paisTable)
            ..where((t) => t.id.equals(row.paisId ?? '')))
          .getSingleOrNull();
      final divisaDTO = await (_db.select(_db.divisaTable)
            ..where((t) => t.id.equals(row.divisaId)))
          .getSingle();
      final pedidoVentaEstadoDTO = await (_db.select(_db.pedidoVentaEstadoTable)
            ..where((t) => t.id.equals(row.pedidoVentaEstadoId)))
          .getSingle();
      return row.toDomain(
          pais: paisDTO?.toDomain(),
          divisa: divisaDTO.toDomain(),
          pedidoVentaEstado: pedidoVentaEstadoDTO.toDomain());
    }).getSingle();
  }

  Future<List<PedidoVentaLinea>> getPedidoVentaLineaById(
      {required String pedidoVentaId}) async {
    final query = (_db.select(_db.pedidoVentaLineaTable)
      ..where((t) => t.pedidoVentaId.equals(pedidoVentaId)));

    return query.asyncMap((row) async {
      return row.toDomain();
    }).get();
  }
}
