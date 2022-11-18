import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_linea_local_dto.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_local_dto.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:money2/money2.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/domain/articulo_precio.dart';
import '../../../core/domain/entity_id_is_local_param.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/presentation/app.dart';
import '../../cliente/domain/cliente.dart';
import '../../cliente/domain/cliente_direccion.dart';
import '../../cliente/infrastructure/cliente_dto.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/pedido_albaran.dart';
import '../domain/pedido_venta.dart';
import '../domain/pedido_venta_estado.dart';
import '../domain/pedido_venta_linea.dart';
import '../domain/precio.dart';

final pedidoVentaRepositoryProvider =
    Provider.autoDispose<PedidoVentaRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    final dio = ref.watch(dioProvider);
    final usuario = ref.watch(usuarioNotifierProvider)!;
    return PedidoVentaRepository(db, dio, usuario);
  },
);

final pedidoVentaProvider = FutureProvider.autoDispose
    .family<PedidoVenta, EntityIdIsLocalParam>(
        (ref, pedidoVentaIdIsLocalParam) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getPedidoVentaById(
      pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam);
});

final pedidoVentaAlbaranProvider = FutureProvider.autoDispose
    .family<List<PedidoAlbaran>, String>((ref, pedidoVentaId) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getPedidoVentaAlbaranListById(
      pedidoVentaId: pedidoVentaId);
});

final pedidoVentaEstadoProvider =
    FutureProvider.autoDispose<List<PedidoVentaEstado>>((ref) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getPedidoVentaEstadoList();
});

final deletePedidoVentaProvider =
    FutureProvider.autoDispose.family<void, String>((ref, pedidoVentaAppId) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.deletePedidoVenta(
      pedidoVentaAppId: pedidoVentaAppId);
});

final pedidoVentaLastSyncDateProvider =
    FutureProvider.autoDispose<DateTime>((ref) async {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getLastSyncDate();
});

final pedidoVentaLineaProvider = FutureProvider.autoDispose
    .family<List<PedidoVentaLinea>, EntityIdIsLocalParam>(
        (ref, pedidoVentaIdIsLocalParam) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getPedidoVentaLineaListById(
      pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam);
});

final getStockDisponibleProvider =
    FutureProvider.autoDispose.family<int, String>((ref, articuloId) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getStockActual(articuloId: articuloId);
});

class PedidoVentaRepository {
  static const pageSize = 100;

  final AppDatabase _db;
  final Dio _dio;
  final Usuario usuario;

  PedidoVentaRepository(this._db, this._dio, this.usuario);

  Future<List<PedidoVenta>> getPedidoVentaLista(
      {required int page,
      required String searchText,
      required PedidoVentaEstado? pedidoVentaEstado,
      String? clienteId}) async {
    try {
      final List<PedidoVenta> pedidoVentaList = [];

      if (page == 0) {
        final pedidoVentaLocalList = await getPedidosVentaLocal(
            searchText: searchText,
            clienteId: clienteId,
            pedidoVentaEstado: pedidoVentaEstado);

        pedidoVentaList.addAll(pedidoVentaLocalList);
      }

      final syncPedidosVentaList = await getSyncPedidoVentaList(
          page: page,
          searchText: searchText,
          clienteId: clienteId,
          pedidoVentaEstado: pedidoVentaEstado);
      pedidoVentaList.addAll(syncPedidosVentaList);
      return pedidoVentaList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<int> getPedidoVentaCountList(
      {required String searchText,
      required PedidoVentaEstado? pedidoVentaEstado,
      String? clienteId}) async {
    try {
      final pedidoVentaLocalCountList = await getPedidosVentaLocalCountList(
          searchText: searchText,
          clienteId: clienteId,
          pedidoVentaEstado: pedidoVentaEstado);

      final syncPedidosVentaCountList = await getSyncPedidoVentaCountList(
          searchText: searchText,
          clienteId: clienteId,
          pedidoVentaEstado: pedidoVentaEstado);
      return pedidoVentaLocalCountList + syncPedidosVentaCountList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<PedidoVenta>> getPedidoVentaListaByCliente(
      {required String clienteId}) async {
    try {
      final List<PedidoVenta> pedidoVentaListByCliente = [];
      final pedidoVentaLocalList = await getPedidosVentaLocal(
          searchText: '', clienteId: clienteId, pedidoVentaEstado: null);
      pedidoVentaListByCliente.addAll(pedidoVentaLocalList);

      final syncPedidosVentaList = await getSyncPedidoVentaList(
          page: 0,
          searchText: '',
          clienteId: clienteId,
          pedidoVentaEstado: null);
      pedidoVentaListByCliente.addAll(syncPedidosVentaList);
      return pedidoVentaListByCliente;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<PedidoVenta>> getSyncPedidoVentaList(
      {required int page,
      required String searchText,
      required PedidoVentaEstado? pedidoVentaEstado,
      String? clienteId}) async {
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

    query.where(_db.clienteUsuarioTable.usuarioId.equals(usuario.id));

    if (pedidoVentaEstado != null) {
      query.where(_db.pedidoVentaTable.pedidoVentaEstadoId
          .equals(pedidoVentaEstado.id));
    }

    if (searchText != '') {
      final busqueda = searchText.split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        if (predicate == null) {
          predicate =
              (_db.pedidoVentaTable.nombreCliente.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.clienteId.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.poblacion.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.codigoPostal.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.provincia.like('%${busqueda[i]}%'));
        } else {
          predicate = predicate &
              ((_db.pedidoVentaTable.nombreCliente.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.clienteId.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.poblacion.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.codigoPostal.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.provincia.like('%${busqueda[i]}%')));
        }
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_db.pedidoVentaTable.clienteId.equals(clienteId));
    }

    query.limit(pageSize, offset: page * pageSize);

    query.orderBy([
      OrderingTerm.desc(_db.pedidoVentaTable.pedidoVentaDate),
      OrderingTerm.asc(_db.pedidoVentaTable.pedidoVentaId)
    ]);

    return query.asyncMap((row) async {
      final pedidoVentaDTO = row.readTable(_db.pedidoVentaTable);
      final paisDTO = row.readTableOrNull(_db.paisTable);
      final divisaDTO = row.readTable(_db.divisaTable);
      final pedidoVentaEstadoDTO = row.readTable(_db.pedidoVentaEstadoTable);

      return pedidoVentaDTO.toDomain(
          pais: paisDTO?.toDomain(),
          divisa: divisaDTO.toDomain(),
          pedidoVentaEstado: pedidoVentaEstadoDTO.toDomain());
    }).get();
  }

  Future<int> getSyncPedidoVentaCountList(
      {required String searchText,
      required PedidoVentaEstado? pedidoVentaEstado,
      String? clienteId}) async {
    final countExp = _db.pedidoVentaTable.pedidoVentaId.count();

    final query = _db.selectOnly(_db.pedidoVentaTable).join([
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

    query.where(_db.clienteUsuarioTable.usuarioId.equals(usuario.id));

    if (pedidoVentaEstado != null) {
      query.where(_db.pedidoVentaTable.pedidoVentaEstadoId
          .equals(pedidoVentaEstado.id));
    }

    if (searchText != '') {
      final busqueda = searchText.split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        if (predicate == null) {
          predicate =
              (_db.pedidoVentaTable.nombreCliente.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.clienteId.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.poblacion.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.codigoPostal.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.provincia.like('%${busqueda[i]}%'));
        } else {
          predicate = predicate &
              ((_db.pedidoVentaTable.nombreCliente.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.clienteId.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.poblacion.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.codigoPostal.like('%${busqueda[i]}%') |
                  _db.pedidoVentaTable.provincia.like('%${busqueda[i]}%')));
        }
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_db.pedidoVentaTable.clienteId.equals(clienteId));
    }
    query.addColumns([countExp]);

    final count = await query.map((row) => row.read(countExp)).getSingle();
    return count ?? 0;
  }

  Future<List<PedidoVenta>> getPedidosVentaLocal({
    required String searchText,
    String? clienteId,
    required PedidoVentaEstado? pedidoVentaEstado,
  }) async {
    final query = _db.select(_db.pedidoVentaLocalTable).join([
      innerJoin(
          _db.clienteUsuarioTable,
          _db.clienteUsuarioTable.clienteId
              .equalsExp(_db.pedidoVentaLocalTable.clienteId)),
      leftOuterJoin(_db.paisTable,
          _db.paisTable.id.equalsExp(_db.pedidoVentaLocalTable.paisId)),
      leftOuterJoin(_db.divisaTable,
          _db.divisaTable.id.equalsExp(_db.pedidoVentaLocalTable.divisaId)),
    ]);

    query.where(_db.clienteUsuarioTable.usuarioId.equals(usuario.id) &
        _db.pedidoVentaLocalTable.tratada.equals('N'));

    if (searchText != '') {
      final busqueda = searchText.split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        if (predicate == null) {
          predicate = (_db.pedidoVentaLocalTable.nombreCliente
                  .like('%${busqueda[i]}%') |
              _db.pedidoVentaLocalTable.clienteId.like('%${busqueda[i]}%') |
              _db.pedidoVentaLocalTable.poblacion.like('%${busqueda[i]}%') |
              _db.pedidoVentaLocalTable.codigoPostal.like('%${busqueda[i]}%') |
              _db.pedidoVentaLocalTable.provincia.like('%${busqueda[i]}%'));
        } else {
          predicate = predicate &
              (_db.pedidoVentaLocalTable.nombreCliente
                      .like('%${busqueda[i]}%') |
                  _db.pedidoVentaLocalTable.clienteId.like('%${busqueda[i]}%') |
                  _db.pedidoVentaLocalTable.poblacion.like('%${busqueda[i]}%') |
                  _db.pedidoVentaLocalTable.codigoPostal
                      .like('%${busqueda[i]}%') |
                  _db.pedidoVentaLocalTable.provincia.like('%${busqueda[i]}%'));
        }
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_db.pedidoVentaLocalTable.clienteId.equals(clienteId));
    }

    query.orderBy([
      OrderingTerm.asc(_db.pedidoVentaLocalTable.enviada),
      OrderingTerm.desc(_db.pedidoVentaLocalTable.fechaAlta),
    ]);

    return query.asyncMap((row) async {
      final pedidoVentaLocalDTO = row.readTable(_db.pedidoVentaLocalTable);
      final paisDTO = row.readTableOrNull(_db.paisTable);
      final divisaDTO = row.readTable(_db.divisaTable);
      final pedidoVentaLineaList = await getLocalPedidoVentaLineaList(
          pedidoVentaAppId: pedidoVentaLocalDTO.pedidoVentaAppId);

      return pedidoVentaLocalDTO.toDomain(
        pais: paisDTO?.toDomain(),
        divisa: divisaDTO.toDomain(),
        baseImponible: getBaseImponible(pedidoVentaLineaList, divisaDTO.id),
      );
    }).get();
  }

  Future<int> getPedidosVentaLocalCountList({
    required String searchText,
    String? clienteId,
    required PedidoVentaEstado? pedidoVentaEstado,
  }) async {
    final countExp = _db.pedidoVentaLocalTable.pedidoVentaAppId.count();

    final query = _db.select(_db.pedidoVentaLocalTable).join([
      innerJoin(
          _db.clienteUsuarioTable,
          _db.clienteUsuarioTable.clienteId
              .equalsExp(_db.pedidoVentaLocalTable.clienteId)),
      leftOuterJoin(_db.paisTable,
          _db.paisTable.id.equalsExp(_db.pedidoVentaLocalTable.paisId)),
      leftOuterJoin(_db.divisaTable,
          _db.divisaTable.id.equalsExp(_db.pedidoVentaLocalTable.divisaId)),
    ]);

    query.where(_db.clienteUsuarioTable.usuarioId.equals(usuario.id) &
        _db.pedidoVentaLocalTable.tratada.equals('N'));

    if (searchText != '') {
      final busqueda = searchText.split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        if (predicate == null) {
          predicate = (_db.pedidoVentaLocalTable.nombreCliente
                  .like('%${busqueda[i]}%') |
              _db.pedidoVentaLocalTable.clienteId.like('%${busqueda[i]}%') |
              _db.pedidoVentaLocalTable.poblacion.like('%${busqueda[i]}%') |
              _db.pedidoVentaLocalTable.codigoPostal.like('%${busqueda[i]}%') |
              _db.pedidoVentaLocalTable.provincia.like('%${busqueda[i]}%'));
        } else {
          predicate = predicate &
              (_db.pedidoVentaLocalTable.nombreCliente
                      .like('%${busqueda[i]}%') |
                  _db.pedidoVentaLocalTable.clienteId.like('%${busqueda[i]}%') |
                  _db.pedidoVentaLocalTable.poblacion.like('%${busqueda[i]}%') |
                  _db.pedidoVentaLocalTable.codigoPostal
                      .like('%${busqueda[i]}%') |
                  _db.pedidoVentaLocalTable.provincia.like('%${busqueda[i]}%'));
        }
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_db.pedidoVentaLocalTable.clienteId.equals(clienteId));
    }

    query.addColumns([countExp]);

    final count = await query.map((row) => row.read(countExp)).getSingle();
    return count ?? 0;
  }

  Future<PedidoVenta> getPedidoVentaById(
      {required EntityIdIsLocalParam pedidoVentaIdIsLocalParam}) async {
    try {
      if (!pedidoVentaIdIsLocalParam.isLocal) {
        return await getSyncPedidoVentaById(
            pedidoVentaId: pedidoVentaIdIsLocalParam.id);
      } else {
        return await getPedidoVentaLocalById(
            pedidoVentaAppId: pedidoVentaIdIsLocalParam.id);
      }
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<PedidoVenta> getSyncPedidoVentaById(
      {required String pedidoVentaId}) async {
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

    query.where(_db.pedidoVentaTable.pedidoVentaId.equals(pedidoVentaId));

    return query.asyncMap((row) async {
      final paisDTO = row.readTableOrNull(_db.paisTable);
      final divisaDTO = row.readTable(_db.divisaTable);
      final pedidoVentaEstadoDTO = row.readTable(_db.pedidoVentaEstadoTable);
      final pedidoVentaDTO = row.readTable(_db.pedidoVentaTable);

      return pedidoVentaDTO.toDomain(
        pais: paisDTO?.toDomain(),
        divisa: divisaDTO.toDomain(),
        pedidoVentaEstado: pedidoVentaEstadoDTO.toDomain(),
      );
    }).getSingle();
  }

  Future<List<PedidoAlbaran>> getPedidoVentaAlbaranListById(
      {required String pedidoVentaId}) async {
    try {
      final query = _db.select(_db.pedidoAlbaranTable).join([
        innerJoin(
            _db.pedidoVentaTable,
            _db.pedidoVentaTable.pedidoVentaId
                .equalsExp(_db.pedidoAlbaranTable.pedidoVentaId))
      ]);

      query.where(_db.pedidoAlbaranTable.pedidoVentaId.equals(pedidoVentaId));

      query.orderBy([
        OrderingTerm.desc(_db.pedidoAlbaranTable.fechaAlbaran),
      ]);

      return query.map((row) {
        final pedidoVentaAlbaranDTO = row.readTable(_db.pedidoAlbaranTable);
        return pedidoVentaAlbaranDTO.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<PedidoVentaLinea>> getPedidoVentaLineaListById(
      {required EntityIdIsLocalParam pedidoVentaIdIsLocalParam}) async {
    try {
      if (!pedidoVentaIdIsLocalParam.isLocal) {
        return await getSyncPedidoVentaLineaList(
            pedidoVentaId: pedidoVentaIdIsLocalParam.id);
      } else {
        return await getLocalPedidoVentaLineaList(
            pedidoVentaAppId: pedidoVentaIdIsLocalParam.id);
      }
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<PedidoVentaLinea>> getSyncPedidoVentaLineaList(
      {required String pedidoVentaId}) async {
    try {
      final query = _db.select(_db.pedidoVentaLineaTable).join([
        innerJoin(
            _db.pedidoVentaTable,
            _db.pedidoVentaTable.pedidoVentaId
                .equalsExp(_db.pedidoVentaLineaTable.pedidoVentaId))
      ]);

      query
          .where(_db.pedidoVentaLineaTable.pedidoVentaId.equals(pedidoVentaId));

      return query.map((row) {
        final pedidoVentaDTO = row.readTable(_db.pedidoVentaTable);
        final pedidoVentaLineaDTO = row.readTable(_db.pedidoVentaLineaTable);
        return pedidoVentaLineaDTO.toDomain(divisaId: pedidoVentaDTO.divisaId);
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<PedidoVentaLinea>> getLocalPedidoVentaLineaList(
      {required String pedidoVentaAppId}) async {
    try {
      final query = _db.select(_db.pedidoVentaLineaLocalTable).join([
        innerJoin(
            _db.pedidoVentaLocalTable,
            _db.pedidoVentaLocalTable.pedidoVentaAppId
                .equalsExp(_db.pedidoVentaLineaLocalTable.pedidoVentaAppId))
      ]);

      query.where(_db.pedidoVentaLineaLocalTable.pedidoVentaAppId
          .equals(pedidoVentaAppId));

      return query.map((row) {
        final pedidoVentaLocalDTO = row.readTable(_db.pedidoVentaLocalTable);
        final pedidoVentaLineaDTO =
            row.readTable(_db.pedidoVentaLineaLocalTable);
        return pedidoVentaLineaDTO.toDomain(
            divisaId: pedidoVentaLocalDTO.divisaId!,
            importeLinea: getTotalLinea(
              precio: Precio(
                precio: pedidoVentaLineaDTO.precioDivisa
                    .toMoney(currencyId: pedidoVentaLocalDTO.divisaId!),
                tipoPrecio: pedidoVentaLineaDTO.tipoPrecio,
              ),
              cantidad: pedidoVentaLineaDTO.cantidad,
              descuento1: pedidoVentaLineaDTO.descuento1,
              descuento2: pedidoVentaLineaDTO.descuento2,
              descuento3: pedidoVentaLineaDTO.descuento3,
            ));
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<PedidoVentaEstado>> getPedidoVentaEstadoList() async {
    try {
      final query = await _db.select(_db.pedidoVentaEstadoTable).get();

      return query.map((e) => e.toDomain()).toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<int> getStockActual({required String articuloId}) async {
    try {
      final query = await (_db.select(_db.articuloTable)
            ..where((tbl) => tbl.id.equals(articuloId)))
          .getSingle();

      return query.stockDisponible;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> upsertPedidoVenta({
    required String pedidoVentaAppId,
    required Cliente cliente,
    required ClienteDireccion? clienteDireccion,
    required List<PedidoVentaLinea> pedidoVentaLineaList,
    String? observaciones,
    String? pedidoCliente,
  }) async {
    try {
      final pedidoVentaLocalDTO = PedidoVentaLocalDTO.fromForm(pedidoVentaAppId,
          usuario.id, cliente, clienteDireccion, pedidoCliente, observaciones);

      final pedidoVentaLineaLocalDTOList = pedidoVentaLineaList
          .map((e) => PedidoVentaLineaLocalDTO.fromDomain(e))
          .toList();

      await insertPedidoInDB(pedidoVentaLocalDTO, pedidoVentaLineaLocalDTOList);
      try {
        final pedidoVentaLocalDTOEnviado = await _remoteCreatePedidoVenta(
            pedidoVentaLocalDTO, pedidoVentaLineaLocalDTOList, usuario.test);

        await updatePedidoInDB(pedidoVentaLocalDTO: pedidoVentaLocalDTOEnviado);
      } catch (e) {
        if (e is AppException) {
          e.maybeWhen(
              orElse: () {},
              notConnection: () =>
                  updateWithError(pedidoVentaLocalDTO, e.details.message),
              restApiFailure: (error, _) =>
                  updateWithError(pedidoVentaLocalDTO, e.details.message));
          return;
        }
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateWithError(
      PedidoVentaLocalDTO pedidoVentaLocalDTO, String errorMessage) async {
    try {
      (_db.update(_db.pedidoVentaLocalTable)
            ..where((tbl) => tbl.pedidoVentaAppId
                .equals(pedidoVentaLocalDTO.pedidoCliente!)))
          .write(PedidoVentaLocalTableCompanion(
              errorSyncMessage: Value(errorMessage)));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deletePedidoVenta({required String pedidoVentaAppId}) async {
    try {
      await (_db.delete(_db.pedidoVentaLocalTable)
            ..where((tbl) => tbl.pedidoVentaAppId.equals(pedidoVentaAppId)))
          .go();
      await (_db.delete(_db.pedidoVentaLineaLocalTable)
            ..where((tbl) => tbl.pedidoVentaAppId.equals(pedidoVentaAppId)))
          .go();
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<ArticuloPrecio> getArticuloPrecio(
      {required String articuloId,
      required String clienteId,
      required int cantidad}) async {
    Money precio = 0.toMoney();
    Precio precioNeto = Precio(
      precio: 0.toMoney(),
      tipoPrecio: 1,
    );
    String divisaId = 'EU';
    double descuento1 = 0.0;
    double descuento2 = 0.0;
    double descuento3 = 0.0;
    double descuento = 0.0;

    int tipoPrecio = 1;
    double iva = 0.0;

    final clienteDto = await (_db.select(_db.clienteTable)
          ..where((t) => t.id.equals(clienteId)))
        .getSingleOrNull();

    if (clienteDto != null) {
      divisaId = clienteDto.divisaId ?? 'EU';
      iva = await _getIvaClienteArticulo(
        articuloId: articuloId,
        clienteDto: clienteDto,
      );

      final tarifaId = clienteDto.tarifaId;
      final descuentoGeneralId = clienteDto.descuentoGeneralId;
      final tipoCalculoPrecio = clienteDto.tipoCalculoPrecio;

      final precioTarifa = (tarifaId != null)
          ? await _getPrecioTarifa(
              tarifaId: tarifaId,
              articuloId: articuloId,
              cantidad: cantidad,
            )
          : Precio(precio: 0.toMoney(currencyId: divisaId), tipoPrecio: 1);

      final precioNetoCliente = await _getPrecioClienteNeto(
        clienteId: clienteId,
        articuloId: articuloId,
        cantidad: cantidad,
      );

      final precioGrupoNetos = await _getPrecioGrupoNeto(
        clienteId: clienteId,
        articuloId: articuloId,
        cantidad: cantidad,
      );

      final descuentoGeneral = descuentoGeneralId != null
          ? await _getDescuentoGeneral(
              articuloId: articuloId,
              descuentoGeneralId: descuentoGeneralId,
              cantidad: cantidad,
            )
          : 0.0;
      final descuentoCliente = await _getDescuentoCliente(
        articuloId: articuloId,
        clienteId: clienteId,
        cantidad: cantidad,
      );

      descuento = (descuentoGeneral > descuentoCliente)
          ? descuentoGeneral
          : descuentoCliente;

      // Precio Neto Tarifa
      final precioNetoTarifa = Precio(
        precio: precioTarifa.precio * ((100 - descuento) / 100),
        tipoPrecio: precioTarifa.tipoPrecio,
      );

      final precioNetoTarifaUnitario = _getPrecioUnitario(
        precio: precioNetoTarifa.precio,
        tipoPrecio: precioNetoTarifa.tipoPrecio,
      );

      // Precio Neto Cliente
      final precioNetoClienteUnitario = _getPrecioUnitario(
        precio: precioNetoCliente.precio,
        tipoPrecio: precioNetoCliente.tipoPrecio,
      );

      // Precio Grupos Netos
      final precioGrupoNetosUnitario = _getPrecioUnitario(
        precio: precioGrupoNetos.precio,
        tipoPrecio: precioGrupoNetos.tipoPrecio,
      );

      // Cálculo precio neto
      precioNeto = (precioGrupoNetosUnitario.isZero ||
              (!precioNetoClienteUnitario.isZero &&
                  precioNetoClienteUnitario <= precioGrupoNetosUnitario))
          ? precioNetoCliente
          : precioGrupoNetos;

      final precioNetoUnitario = _getPrecioUnitario(
        precio: precioNeto.precio,
        tipoPrecio: precioNeto.tipoPrecio,
      );
      // Determinamos si cogemos precios netos o tarifa + descuento, pero comprobando si queremos que coja mejor precio cliente o precio neto cliente (cliente_t.tipo_calculo_precio)
      // N: Normal
      // M: Mejor

      if (tipoCalculoPrecio == 'N') {
        if (precioNetoUnitario.isZero) {
          precio = precioTarifa.precio;
          tipoPrecio = precioTarifa.tipoPrecio;
          descuento1 = descuento;
        } else {
          precio = precioNeto.precio;
          tipoPrecio = precioNeto.tipoPrecio;
          descuento1 = 0;
        }
      } else {
        if (precioNetoUnitario.isZero ||
            (precioNetoTarifaUnitario.isPositive &&
                precioNetoUnitario.isPositive &&
                precioNetoTarifaUnitario <= precioNetoUnitario)) {
          precio = precioTarifa.precio;
          tipoPrecio = precioTarifa.tipoPrecio;
          descuento1 = descuento;
        } else {
          precio = precioNeto.precio;
          tipoPrecio = precioNeto.tipoPrecio;
          descuento1 = 0;
        }
      }
    }

    return ArticuloPrecio(
      precio: Precio(precio: precio, tipoPrecio: tipoPrecio),
      divisaId: divisaId,
      descuento1: descuento1,
      descuento2: descuento2,
      descuento3: descuento3,
      iva: iva,
    );
  }

  Future<double> _getIvaClienteArticulo({
    required String articuloId,
    required ClienteDTO clienteDto,
  }) async {
    if (clienteDto.iva == 0) {
      return 0;
    } else {
      final ivaArticuloQuery = _db.selectOnly(_db.articuloEmpresaIvaTable)
        ..addColumns([_db.articuloEmpresaIvaTable.iva])
        ..where(
          _db.articuloEmpresaIvaTable.empresaId.equals(clienteDto.empresaId) &
              _db.articuloEmpresaIvaTable.articuloId.equals(articuloId),
        );

      final ivaClienteQuery = _db.selectOnly(_db.clienteTable)
        ..addColumns([_db.clienteTable.iva])
        ..where(
          _db.clienteTable.id.equals(clienteDto.id),
        );

      final ivaArticulo = (await ivaArticuloQuery.getSingleOrNull())
          ?.read(_db.articuloEmpresaIvaTable.iva);
      final ivaCliente =
          (await ivaClienteQuery.getSingleOrNull())?.read(_db.clienteTable.iva);

      late double iva;
      if (ivaArticulo != null) {
        iva = ivaArticulo;
      } else {
        iva = ivaCliente ?? 0;
      }
      return iva;
    }
  }

  Future<void> insertPedidoInDB(PedidoVentaLocalDTO pedidoVentaLocalDTO,
      List<PedidoVentaLineaLocalDTO> pedidoVentaLineaLocalDTOList) async {
    try {
      return await _db.transaction(() async {
        await _db
            .into(_db.pedidoVentaLocalTable)
            .insertOnConflictUpdate(pedidoVentaLocalDTO);
        for (var i = 0; i < pedidoVentaLineaLocalDTOList.length; i++) {
          await _db
              .into(_db.pedidoVentaLineaLocalTable)
              .insertOnConflictUpdate(pedidoVentaLineaLocalDTOList[i]);
        }
      });
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<void> updatePedidoInDB(
      {required PedidoVentaLocalDTO pedidoVentaLocalDTO}) async {
    try {
      await _db.update(_db.pedidoVentaLocalTable).replace(pedidoVentaLocalDTO);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<PedidoVentaLocalDTO> _remoteCreatePedidoVenta(
      PedidoVentaLocalDTO pedidoVentaLocalDTO,
      List<PedidoVentaLineaLocalDTO> pedidoVentaLineaDTOList,
      bool test) async {
    try {
      final pedidoVentaLocalToJson = pedidoVentaLocalDTO.toJson();
      final pedidoVentaLineasLocalListToJson =
          pedidoVentaLineaDTOList.map((e) => e.toJson()).toList();
      pedidoVentaLocalToJson
          .addAll({'PEDIDO_VENTA_LINEAS': pedidoVentaLineasLocalListToJson});

      final requestUri = (test)
          ? Uri.http(
              dotenv.get('URLTEST', fallback: 'localhost:3001'),
              'api/v1/online/pedidos',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/pedidos',
            );

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
        ),
        data: jsonEncode(pedidoVentaLocalToJson),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return PedidoVentaLocalDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<PedidoVenta> getPedidoVentaLocalById(
      {required String pedidoVentaAppId}) async {
    final query = _db.select(_db.pedidoVentaLocalTable).join([
      leftOuterJoin(_db.paisTable,
          _db.paisTable.id.equalsExp(_db.pedidoVentaLocalTable.paisId)),
      leftOuterJoin(_db.divisaTable,
          _db.divisaTable.id.equalsExp(_db.pedidoVentaLocalTable.divisaId)),
    ]);

    query.where(
        _db.pedidoVentaLocalTable.pedidoVentaAppId.equals(pedidoVentaAppId));

    return query.asyncMap((row) async {
      final paisDTO = row.readTableOrNull(_db.paisTable);
      final divisaDTO = row.readTable(_db.divisaTable);
      final pedidoVentaDTO = row.readTable(_db.pedidoVentaLocalTable);
      final pedidoVentaLineas = await getLocalPedidoVentaLineaList(
          pedidoVentaAppId: pedidoVentaAppId);

      final importeBaseImponible =
          getBaseImponible(pedidoVentaLineas, divisaDTO.id);
      final importeIva =
          getImporteIva(importeBaseImponible, pedidoVentaDTO.iva);

      return pedidoVentaDTO.toDomain(
        pais: paisDTO?.toDomain(),
        divisa: divisaDTO.toDomain(),
        baseImponible: importeBaseImponible,
        importeIva: importeIva,
        total: importeBaseImponible + importeIva,
      );
    }).getSingle();
  }

  Future<Precio> _getPrecioTarifa({
    required String tarifaId,
    required String articuloId,
    required int cantidad,
  }) async {
    final articuloPrecioTarifaDTO =
        await (_db.select(_db.articuloPrecioTarifaTable)
              ..where(
                (precioTarifa) =>
                    precioTarifa.tarifaId.equals(tarifaId) &
                    precioTarifa.articuloId.equals(articuloId) &
                    precioTarifa.cantidadDesde.isSmallerOrEqualValue(cantidad),
              )
              ..orderBy([
                (precioTarifa) => OrderingTerm(
                    expression: precioTarifa.cantidadDesde,
                    mode: OrderingMode.desc),
              ])
              ..limit(1))
            .getSingleOrNull();

    return (articuloPrecioTarifaDTO != null)
        ? Precio(
            precio: articuloPrecioTarifaDTO.precio
                .toMoney(currencyId: articuloPrecioTarifaDTO.divisaId),
            tipoPrecio: articuloPrecioTarifaDTO.tipoPrecio,
          )
        : Precio(
            precio: 0.toMoney(),
            tipoPrecio: 1,
          );
  }

  Future<Precio> _getPrecioGrupoNeto({
    required String clienteId,
    required String articuloId,
    required int cantidad,
  }) async {
    final query = _db.select(_db.clienteGrupoNetoTable).join([
      innerJoin(
        _db.articuloGrupoNetoTable,
        _db.articuloGrupoNetoTable.grupoNetoId
            .equalsExp(_db.clienteGrupoNetoTable.grupoNetoId),
      )
    ])
      ..where(
        _db.clienteGrupoNetoTable.clienteId.equals(clienteId) &
            _db.articuloGrupoNetoTable.articuloId.equals(articuloId) &
            _db.articuloGrupoNetoTable.cantidadDesde
                .isSmallerOrEqualValue(cantidad),
      );

    final queryResult = await query.get();
    if (queryResult.isEmpty) {
      return Precio(
        precio: 0.toMoney(),
        tipoPrecio: 1,
      );
    }
    final minResult = queryResult.reduce((a, b) {
      final precioA = a.read(_db.articuloGrupoNetoTable.precio)!;
      final tipoPrecioA = a.read(_db.articuloGrupoNetoTable.tipoPrecio)!;
      final divisaA = a.read(_db.articuloGrupoNetoTable.divisaId)!;
      final precioB = b.read(_db.articuloGrupoNetoTable.precio)!;
      final divisaB = b.read(_db.articuloGrupoNetoTable.divisaId)!;
      final tipoPrecioB = b.read(_db.articuloGrupoNetoTable.tipoPrecio)!;
      return _getPrecioUnitario(
                precio: precioA.toMoney(currencyId: divisaA),
                tipoPrecio: tipoPrecioA,
              ) <
              _getPrecioUnitario(
                precio: precioB.toMoney(currencyId: divisaB),
                tipoPrecio: tipoPrecioB,
              )
          ? a
          : b;
    });
    return Precio(
      precio: (minResult.read(_db.articuloGrupoNetoTable.precio) ?? 0).toMoney(
          currencyId: minResult.read(_db.articuloGrupoNetoTable.divisaId)),
      tipoPrecio: (minResult.read(_db.articuloGrupoNetoTable.tipoPrecio) ?? 1),
    );
  }

  Future<Precio> _getPrecioClienteNeto({
    required String clienteId,
    required String articuloId,
    required int cantidad,
  }) async {
    final queryResult = await (_db.select(_db.clientePrecioNetoTable).join(
      [
        innerJoin(
          _db.clienteTable,
          _db.clienteTable.id.equalsExp(_db.clientePrecioNetoTable.clienteId),
        ),
      ],
    )
          ..where(_db.clientePrecioNetoTable.clienteId.equals(clienteId) &
              _db.clientePrecioNetoTable.articuloId.equals(articuloId) &
              _db.clientePrecioNetoTable.cantidadDesde
                  .isSmallerOrEqualValue(cantidad))
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.clientePrecioNetoTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    return (queryResult != null)
        ? Precio(
            precio: queryResult
                .read(_db.clientePrecioNetoTable.precio)!
                .toMoney(
                    currencyId: queryResult.read(_db.clienteTable.divisaId)),
            tipoPrecio:
                queryResult.read(_db.clientePrecioNetoTable.tipoPrecio)!,
          )
        : Precio(
            precio: 0.toMoney(),
            tipoPrecio: 1,
          );
  }

  Future<double> _getDescuentoCliente({
    required String articuloId,
    required String clienteId,
    required int cantidad,
  }) async {
    TypedResult? queryResult;

    // Coincide articulo, familia y subfamilia
    queryResult = await (_db.select(_db.clienteDescuentoTable).join(
      [
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.id
                    .equalsExp(_db.clienteDescuentoTable.articuloId) &
                _db.articuloTable.familiaId
                    .equalsExp(_db.clienteDescuentoTable.familiaId) &
                _db.articuloTable.subfamiliaId
                    .equalsExp(_db.clienteDescuentoTable.subfamiliaId),
            useColumns: false),
      ],
    )
          ..where(
            _db.clienteDescuentoTable.clienteId.equals(clienteId) &
                _db.articuloTable.id.equals(articuloId),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

// Coincide articulo, familia y subfamilia
    queryResult = await (_db.select(_db.clienteDescuentoTable).join(
      [
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.id
                    .equalsExp(_db.clienteDescuentoTable.articuloId) &
                _db.articuloTable.familiaId
                    .equalsExp(_db.clienteDescuentoTable.familiaId) &
                _db.articuloTable.subfamiliaId
                    .equalsExp(_db.clienteDescuentoTable.subfamiliaId),
            useColumns: false),
      ],
    )
          ..where(
            _db.clienteDescuentoTable.clienteId.equals(clienteId) &
                _db.articuloTable.id.equals(articuloId),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo, familia
    queryResult = await (_db.select(_db.clienteDescuentoTable).join(
      [
        innerJoin(
          _db.articuloTable,
          _db.articuloTable.id.equalsExp(_db.clienteDescuentoTable.articuloId) &
              _db.articuloTable.familiaId
                  .equalsExp(_db.clienteDescuentoTable.familiaId),
        ),
      ],
    )
          ..where(
            _db.clienteDescuentoTable.clienteId.equals(clienteId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.clienteDescuentoTable.subfamiliaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide familia, subfamilia
    queryResult = await (_db.select(_db.clienteDescuentoTable).join(
      [
        innerJoin(
          _db.articuloTable,
          _db.articuloTable.familiaId
                  .equalsExp(_db.clienteDescuentoTable.familiaId) &
              _db.articuloTable.subfamiliaId
                  .equalsExp(_db.clienteDescuentoTable.subfamiliaId),
        ),
      ],
    )
          ..where(
            _db.clienteDescuentoTable.clienteId.equals(clienteId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.clienteDescuentoTable.articuloId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo, subfamilia
    queryResult = await (_db.select(_db.clienteDescuentoTable).join(
      [
        innerJoin(
          _db.articuloTable,
          _db.articuloTable.id.equalsExp(_db.clienteDescuentoTable.articuloId) &
              _db.articuloTable.subfamiliaId
                  .equalsExp(_db.clienteDescuentoTable.subfamiliaId),
        ),
      ],
    )
          ..where(
            _db.clienteDescuentoTable.clienteId.equals(clienteId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.clienteDescuentoTable.familiaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo
    queryResult = await (_db.select(_db.clienteDescuentoTable).join(
      [
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.id
                .equalsExp(_db.clienteDescuentoTable.articuloId)),
      ],
    )
          ..where(
            _db.clienteDescuentoTable.clienteId.equals(clienteId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.clienteDescuentoTable.familiaId.equals('*') &
                _db.clienteDescuentoTable.subfamiliaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide subfamilia
    queryResult = await (_db.select(_db.clienteDescuentoTable).join(
      [
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.subfamiliaId
                .equalsExp(_db.clienteDescuentoTable.subfamiliaId)),
      ],
    )
          ..where(
            _db.clienteDescuentoTable.clienteId.equals(clienteId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.clienteDescuentoTable.articuloId.equals('*') &
                _db.clienteDescuentoTable.familiaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide familia
    queryResult = await (_db.select(_db.clienteDescuentoTable).join(
      [
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.familiaId
                .equalsExp(_db.clienteDescuentoTable.familiaId)),
      ],
    )
          ..where(
            _db.clienteDescuentoTable.clienteId.equals(clienteId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.clienteDescuentoTable.articuloId.equals('*') &
                _db.clienteDescuentoTable.subfamiliaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide codigo cliente
    final queryResult2 = await (_db.select(_db.clienteDescuentoTable)
          ..where(
            (tbl) =>
                tbl.clienteId.equals(clienteId) &
                tbl.articuloId.equals('*') &
                tbl.familiaId.equals('*') &
                tbl.subfamiliaId.equals('*'),
          )
          ..orderBy(
            [
              (tbl) => OrderingTerm(
                  expression: tbl.cantidadDesde, mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult2 != null) {
      final descuento = queryResult2.descuento;
      return descuento;
    }

    return 0.0;
  }

  Future<double> _getDescuentoGeneral({
    required String articuloId,
    required String descuentoGeneralId,
    required int cantidad,
  }) async {
    TypedResult? queryResult;
    // Coincide articulo, familia y subfamilia
    queryResult = await (_db.select(_db.descuentoGeneralTable).join(
      [
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.id
                    .equalsExp(_db.descuentoGeneralTable.articuloId) &
                _db.articuloTable.familiaId
                    .equalsExp(_db.descuentoGeneralTable.familiaId) &
                _db.articuloTable.subfamiliaId
                    .equalsExp(_db.descuentoGeneralTable.subfamiliaId),
            useColumns: false),
      ],
    )
          ..where(
            _db.descuentoGeneralTable.descuentoGeneralId
                    .equals(descuentoGeneralId) &
                _db.articuloTable.id.equals(articuloId),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }
    // Coincide articulo, familia
    queryResult = await (_db.select(_db.descuentoGeneralTable).join(
      [
        innerJoin(
          _db.articuloTable,
          _db.articuloTable.id.equalsExp(_db.descuentoGeneralTable.articuloId) &
              _db.articuloTable.familiaId
                  .equalsExp(_db.descuentoGeneralTable.familiaId),
        ),
      ],
    )
          ..where(
            _db.descuentoGeneralTable.descuentoGeneralId
                    .equals(descuentoGeneralId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.descuentoGeneralTable.subfamiliaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide familia, subfamilia
    queryResult = await (_db.select(_db.descuentoGeneralTable).join(
      [
        innerJoin(
          _db.articuloTable,
          _db.articuloTable.familiaId
                  .equalsExp(_db.descuentoGeneralTable.familiaId) &
              _db.articuloTable.subfamiliaId
                  .equalsExp(_db.descuentoGeneralTable.subfamiliaId),
        ),
      ],
    )
          ..where(
            _db.descuentoGeneralTable.descuentoGeneralId
                    .equals(descuentoGeneralId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.descuentoGeneralTable.articuloId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo, subfamilia
    queryResult = await (_db.select(_db.descuentoGeneralTable).join(
      [
        innerJoin(
          _db.articuloTable,
          _db.articuloTable.id.equalsExp(_db.descuentoGeneralTable.articuloId) &
              _db.articuloTable.subfamiliaId
                  .equalsExp(_db.descuentoGeneralTable.subfamiliaId),
        ),
      ],
    )
          ..where(
            _db.descuentoGeneralTable.descuentoGeneralId
                    .equals(descuentoGeneralId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.descuentoGeneralTable.familiaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo
    queryResult = await (_db.select(_db.descuentoGeneralTable).join(
      [
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.id
                .equalsExp(_db.descuentoGeneralTable.articuloId)),
      ],
    )
          ..where(
            _db.descuentoGeneralTable.descuentoGeneralId
                    .equals(descuentoGeneralId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.descuentoGeneralTable.familiaId.equals('*') &
                _db.descuentoGeneralTable.subfamiliaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide subfamilia
    queryResult = await (_db.select(_db.descuentoGeneralTable).join(
      [
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.subfamiliaId
                .equalsExp(_db.descuentoGeneralTable.subfamiliaId)),
      ],
    )
          ..where(
            _db.descuentoGeneralTable.descuentoGeneralId
                    .equals(descuentoGeneralId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.descuentoGeneralTable.articuloId.equals('*') &
                _db.descuentoGeneralTable.familiaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide familia
    queryResult = await (_db.select(_db.descuentoGeneralTable).join(
      [
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.familiaId
                .equalsExp(_db.descuentoGeneralTable.familiaId)),
      ],
    )
          ..where(
            _db.descuentoGeneralTable.descuentoGeneralId
                    .equals(descuentoGeneralId) &
                _db.articuloTable.id.equals(articuloId) &
                _db.descuentoGeneralTable.articuloId.equals('*') &
                _db.descuentoGeneralTable.subfamiliaId.equals('*'),
          )
          ..orderBy(
            [
              OrderingTerm(
                  expression: _db.descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_db.descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide codigo descuento
    final queryResult2 = await (_db.select(_db.descuentoGeneralTable)
          ..where(
            (tbl) =>
                tbl.descuentoGeneralId.equals(descuentoGeneralId) &
                tbl.articuloId.equals('*') &
                tbl.familiaId.equals('*') &
                tbl.subfamiliaId.equals('*'),
          )
          ..orderBy(
            [
              (tbl) => OrderingTerm(
                  expression: tbl.cantidadDesde, mode: OrderingMode.desc)
            ],
          )
          ..limit(1))
        .getSingleOrNull();

    if (queryResult2 != null) {
      final descuento = queryResult2.descuento;
      return descuento;
    }

    return 0.0;
  }

  Money _getPrecioUnitario({
    required Money precio,
    required int tipoPrecio,
  }) {
    return tipoPrecio != 0
        ? Money.fromFixedWithCurrency(
            precio.amount / Fixed.fromNum(tipoPrecio, scale: 0),
            precio.currency)
        : 0.toMoney(currencyId: precio.currency.code);
  }

  double _roundDouble(double value, int places) {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  Fixed _getDescuentoEquivalente({
    required double descuento1,
    double descuento2 = 0,
    double descuento3 = 0,
  }) {
    return Fixed.fromNum(
        _roundDouble(
            1 -
                ((1 - (descuento1 / 100)) *
                    (1 - (descuento2 / 100)) *
                    (1 - (descuento3 / 100))),
            6),
        scale: 6);
  }

  Money getTotalLinea({
    required Precio precio,
    required int cantidad,
    double descuento1 = 0,
    double descuento2 = 0,
    double descuento3 = 0,
  }) {
    final precioUnitario = _getPrecioUnitario(
      precio: precio.precio,
      tipoPrecio: precio.tipoPrecio,
    );

    final descuentoEquivalente = _getDescuentoEquivalente(
      descuento1: descuento1,
      descuento2: descuento2,
      descuento3: descuento3,
    );

    final importeLinea = precioUnitario * cantidad;

    final importeDescuento = Money.fromFixedWithCurrency(
      importeLinea.amount * descuentoEquivalente,
      importeLinea.currency,
    );

    return importeLinea - importeDescuento;
  }

  Money getBaseImponible(
      List<PedidoVentaLinea> pedidoVentaLineaList, String divisaId) {
    Money total = Money.parse('0', code: divisaId);
    for (var i = 0; i < pedidoVentaLineaList.length; i++) {
      if (pedidoVentaLineaList[i].importeLinea != null) {
        total = total + pedidoVentaLineaList[i].importeLinea!;
      }
    }

    return total;
  }

  Future<DateTime> getLastSyncDate() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final dateUTCString =
          sharedPreferences.getString(pedidoVentaFechaUltimaSyncKey) as String;
      return DateTime.parse(dateUTCString);
    } catch (e) {
      rethrow;
    }
  }

  Money getImporteIva(Money importeBaseImponible, double iva) {
    final importeIve =
        (importeBaseImponible.amount * Fixed.fromNum(iva, scale: 2)) /
            Fixed.fromNum(100, scale: 2);

    return Money.fromFixedWithCurrency(
      importeIve,
      importeBaseImponible.currency,
    );
  }
}
