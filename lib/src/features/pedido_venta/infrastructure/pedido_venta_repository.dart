import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';

import '../../../core/domain/entity_id_is_local_param.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/presentation/app.dart';
import '../domain/pedido_venta.dart';
import '../domain/pedido_venta_linea.dart';

final pedidoVentaRepositoryProvider =
    Provider.autoDispose<PedidoVentaRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    final dio = ref.watch(dioProvider);
    final usuarioId = ref.watch(usuarioNotifierProvider)!.id;
    return PedidoVentaRepository(db, dio, usuarioId);
  },
);

final pedidoVentaProvider = FutureProvider.autoDispose
    .family<PedidoVenta, EntityIdIsLocalParam>(
        (ref, pedidoVentaIdIsLocalParam) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getPedidoVentaById(
      pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam);
});

final pedidoVentaLineaProvider = FutureProvider.autoDispose
    .family<List<PedidoVentaLinea>, EntityIdIsLocalParam>(
        (ref, pedidoVentaIdIsLocalParam) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getPedidoVentaLineaById(
      pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam);
});

const pageSize = 100;
List<PedidoVenta> pedidoVentaList = [];

class PedidoVentaRepository {
  final AppDatabase _db;
  final Dio _dio;
  final String usuarioId;

  PedidoVentaRepository(this._db, this._dio, this.usuarioId);

  Future<List<PedidoVenta>> getPedidoVentaLista(
      {required int page, required String searchText}) async {
    if (page == 1) {
      pedidoVentaList.clear();
    }
    try {
      final query = _db.select(_db.pedidoVentaTable).join([
        innerJoin(
            _db.clienteUsuarioTable,
            _db.clienteUsuarioTable.clienteId
                .equalsExp(_db.pedidoVentaTable.clienteId)),
        leftOuterJoin(_db.paisTable,
            _db.paisTable.id.equalsExp(_db.pedidoVentaTable.paisId)),
        leftOuterJoin(_db.divisaTable,
            _db.divisaTable.id.equalsExp(_db.pedidoVentaTable.divisaId)),
        innerJoin(
            _db.pedidoVentaEstadoTable,
            _db.pedidoVentaEstadoTable.id
                .equalsExp(_db.pedidoVentaTable.pedidoVentaEstadoId)),
      ]);

      if (searchText != '') {
        query.where(
          _db.clienteUsuarioTable.usuarioId.equals(usuarioId) &
              (_db.pedidoVentaTable.pedidoVentaId.like('%$searchText%') |
                  _db.pedidoVentaTable.nombreCliente.like('%$searchText%') |
                  _db.pedidoVentaTable.clienteId.like('%$searchText%') |
                  _db.pedidoVentaTable.poblacion.like('%$searchText%') |
                  _db.pedidoVentaTable.codigoPostal.like('%$searchText%') |
                  _db.pedidoVentaTable.provincia.like('%$searchText%')),
        );
      } else {
        query.where(_db.clienteUsuarioTable.usuarioId.equals(usuarioId));
      }
      query.limit(pageSize, offset: (page == 1) ? 0 : (page * pageSize));

      query.orderBy([
        OrderingTerm.desc(_db.pedidoVentaTable.pedidoVentaDate),
        OrderingTerm.asc(_db.pedidoVentaTable.pedidoVentaId)
      ]);

      final pedidosDeVenta = await query.asyncMap((row) async {
        final pedidoVentaDTO = row.readTable(_db.pedidoVentaTable);
        final paisDTO = row.readTableOrNull(_db.paisTable);
        final divisaDTO = row.readTable(_db.divisaTable);
        final pedidoVentaEstadoDTO = row.readTable(_db.pedidoVentaEstadoTable);

        return pedidoVentaDTO.toDomain(
            pais: paisDTO?.toDomain(),
            divisa: divisaDTO.toDomain(),
            pedidoVentaEstado: pedidoVentaEstadoDTO.toDomain());
      }).get();
      pedidoVentaList.addAll(pedidosDeVenta);
      return pedidoVentaList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<PedidoVenta> getPedidoVentaById(
      {required EntityIdIsLocalParam pedidoVentaIdIsLocalParam}) async {
    try {
      final query = _db.select(_db.pedidoVentaTable).join([
        leftOuterJoin(_db.paisTable,
            _db.paisTable.id.equalsExp(_db.pedidoVentaTable.paisId)),
        leftOuterJoin(_db.divisaTable,
            _db.divisaTable.id.equalsExp(_db.pedidoVentaTable.divisaId)),
        leftOuterJoin(
            _db.pedidoVentaEstadoTable,
            _db.pedidoVentaEstadoTable.id
                .equalsExp(_db.pedidoVentaTable.pedidoVentaEstadoId))
      ]);

      query.where(_db.pedidoVentaTable.pedidoVentaId
          .equals(pedidoVentaIdIsLocalParam.id!));

      return query.asyncMap((row) async {
        final paisDTO = row.readTableOrNull(_db.paisTable);
        final divisaDTO = row.readTable(_db.divisaTable);
        final pedidoVentaEstadoDTO = row.readTable(_db.pedidoVentaEstadoTable);
        final pedidoVentaDTO = row.readTable(_db.pedidoVentaTable);

        return pedidoVentaDTO.toDomain(
            pais: paisDTO?.toDomain(),
            divisa: divisaDTO.toDomain(),
            pedidoVentaEstado: pedidoVentaEstadoDTO.toDomain());
      }).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<PedidoVentaLinea>> getPedidoVentaLineaById(
      {required EntityIdIsLocalParam pedidoVentaIdIsLocalParam}) async {
    try {
      final query = _db.select(_db.pedidoVentaLineaTable).join([
        innerJoin(
            _db.pedidoVentaTable,
            _db.pedidoVentaTable.pedidoVentaId
                .equalsExp(_db.pedidoVentaLineaTable.pedidoVentaId))
      ]);

      query.where(_db.pedidoVentaLineaTable.pedidoVentaId
          .equals(pedidoVentaIdIsLocalParam.id!));

      return query.map((row) {
        final pedidoVentaDTO = row.readTable(_db.pedidoVentaTable);
        final pedidoVentaLineaDTO = row.readTable(_db.pedidoVentaLineaTable);
        return pedidoVentaLineaDTO.toDomain(divisaId: pedidoVentaDTO.divisaId);
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> upsertPedidoVenta({required PedidoVenta pedidoVenta}) async {
    //TODO método añadir/editar pedidoVenta.
  }

  Future<void> deletePedidoVenta({required String pedidoVentaAppId}) async {
    //TODO método eliminar pedidoVenta guardado en local.
  }
}
