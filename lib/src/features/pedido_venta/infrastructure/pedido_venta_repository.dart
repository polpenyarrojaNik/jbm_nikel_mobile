import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../../auth/infrastructure/auth_repository.dart';
import '../domain/pedido_venta.dart';
import '../domain/pedido_venta_linea.dart';

final pedidoVentaRepositoryProvider =
    Provider.autoDispose<PedidoVentaRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final pedidoVentaListaStreamProvider =
    StreamProvider.autoDispose<List<PedidoVenta>>((ref) async* {
  final authRepository = ref.watch(authRepositoryProvider);
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  final usuario = await authRepository.getSignedInUsuario();
  yield* pedidoVentaRepository.watchPedidoVentaLista(usuarioId: usuario!.id);
});

final pedidoVentaUltimaSyncProvider =
    FutureProvider.autoDispose<DateTime>((ref) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getFechaUltimaSyncPedidoVenta();
});

final pedidoVentaLineaUltimaSyncProvider =
    FutureProvider.autoDispose<DateTime>((ref) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getFechaUltimaSyncPedidoVentaLinea();
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
  AppDatabase db;
  Dio dio;
  AuthRepository authRepository;

  PedidoVentaRepository(this.db, this.dio, this.authRepository);

  Stream<List<PedidoVenta>> watchPedidoVentaLista(
      {required String usuarioId, String? searchText}) {
    try {
      final query = db.select(db.pedidoVentaTable).join([
        innerJoin(
            db.clienteUsuarioTable,
            db.clienteUsuarioTable.clienteId
                .equalsExp(db.pedidoVentaTable.clienteId)),
        innerJoin(db.paisTable,
            db.paisTable.id.equalsExp(db.pedidoVentaTable.paisId)),
        innerJoin(db.divisaTable,
            db.divisaTable.id.equalsExp(db.pedidoVentaTable.divisaId)),
        innerJoin(
            db.pedidoVentaEstadoTable,
            db.pedidoVentaEstadoTable.id
                .equalsExp(db.pedidoVentaTable.pedidoVentaEstadoId)),
      ]);

      if (searchText != null) {
        query.where(
          db.pedidoVentaTable.deleted.equals('N') &
              db.clienteUsuarioTable.usuarioId.equals(usuarioId) &
              (db.pedidoVentaTable.pedidoVentaId.like(searchText) |
                  db.pedidoVentaTable.nombreCliente.like(searchText) |
                  db.pedidoVentaTable.clienteId.like(searchText) |
                  db.pedidoVentaTable.poblacion.like(searchText) |
                  db.pedidoVentaTable.codigoPostal.like(searchText) |
                  db.pedidoVentaTable.provincia.like(searchText)),
        );
      } else {
        query.where(db.pedidoVentaTable.deleted.equals('N') &
            db.clienteUsuarioTable.usuarioId.equals(usuarioId));
      }

      query.orderBy([OrderingTerm.desc(db.pedidoVentaTable.pedidoVentaDate)]);

      return query.asyncMap((row) async {
        final pedidoVentaDTO = row.readTable(db.pedidoVentaTable);
        final paisDTO = row.readTableOrNull(db.paisTable);
        final divisaDTO = row.readTable(db.divisaTable);
        final pedidoVentaEstadoDTO = row.readTable(db.pedidoVentaEstadoTable);

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
    final query = (db.select(db.pedidoVentaTable)
      ..where((t) => t.pedidoVentaId.equals(pedidoVentaId)));

    return query.asyncMap((row) async {
      final paisDTO = await (db.select(db.paisTable)
            ..where((t) => t.id.equals(row.paisId ?? '')))
          .getSingleOrNull();
      final divisaDTO = await (db.select(db.divisaTable)
            ..where((t) => t.id.equals(row.divisaId)))
          .getSingle();
      final pedidoVentaEstadoDTO = await (db.select(db.pedidoVentaEstadoTable)
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
    final query = (db.select(db.pedidoVentaLineaTable)
      ..where((t) => t.pedidoVentaId.equals(pedidoVentaId)));

    return query.asyncMap((row) async {
      return row.toDomain();
    }).get();
  }

  Future<DateTime> getFechaUltimaSyncPedidoVenta() async {
    final date =
        (await (db.select(db.fechaUltimaSyncTable)..limit(1)).getSingle())
            .ultimaSyncPedidoVenta;
    return DateTime.parse(date!);
  }

  Future<DateTime> getFechaUltimaSyncPedidoVentaLinea() async {
    final date =
        (await (db.select(db.fechaUltimaSyncTable)..limit(1)).getSingle())
            .ultimaSyncPedidoVentaLinea;

    return DateTime.parse(date!);
  }
}
