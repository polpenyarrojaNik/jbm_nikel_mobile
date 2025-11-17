import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:csv/csv.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:money2/money2.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../core/application/log_service.dart';
import '../../../core/domain/articulo_precio.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/helpers/error_logger.dart';
import '../../../core/helpers/extension.dart';
import '../../../core/infrastructure/local_database.dart' as local;
import '../../../core/infrastructure/remote_database.dart';
import '../../../core/presentation/app.dart';
import '../../cliente/domain/cliente.dart';
import '../../cliente/domain/cliente_direccion.dart';
import '../../cliente/infrastructure/cliente_dto.dart';
import '../../usuario/application/usuario_notifier.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/pedido_albaran.dart';
import '../domain/pedido_local_param.dart';
import '../domain/pedido_venta.dart';
import '../domain/pedido_venta_estado.dart';
import '../domain/pedido_venta_linea.dart';
import '../domain/precio.dart';
import '../domain/precio_promocion.dart';
import 'pedido_venta_linea_local_dto.dart';
import 'pedido_venta_local_dto.dart';

part 'pedido_venta_repository.g.dart';

@riverpod
PedidoVentaRepository pedidoVentaRepository(Ref ref) {
  final db = ref.watch(appRemoteDatabaseProvider);
  final localDb = ref.watch(local.appLocalDatabaseProvider);
  final user = ref.watch(usuarioNotifierProvider);
  final dio = ref.watch(dioProvider);
  final errorLogger = ref.watch(errorLoggerProvider);

  return PedidoVentaRepository(db, localDb, dio, user!, errorLogger);
}

@riverpod
class PedidoVentaById extends _$PedidoVentaById {
  @override
  Future<PedidoVenta> build(PedidoLocalParam pedidoLocalParam) {
    final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
    return pedidoVentaRepository.getPedidoVentaById(
      pedidoVentaIdIsLocalParam: pedidoLocalParam,
    );
  }

  Future<File?> getAttachmentFile({required String pedidoVentaId}) async {
    final file = await ref
        .read(pedidoVentaRepositoryProvider)
        .getDocumentFile(pedidoVentaId: pedidoVentaId);
    return file;
  }
}

@riverpod
class PedidoVentaAlbaranById extends _$PedidoVentaAlbaranById {
  @override
  Future<List<PedidoAlbaran>> build(String pedidoVentaId) {
    final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
    return pedidoVentaRepository.getPedidoVentaAlbaranListById(
      pedidoVentaId: pedidoVentaId,
    );
  }
}

@riverpod
class PedidoVentaEstadoList extends _$PedidoVentaEstadoList {
  @override
  Future<List<PedidoVentaEstado>> build() {
    final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
    return pedidoVentaRepository.getPedidoVentaEstadoList();
  }
}

@riverpod
class PedidoVentaLastSyncDate extends _$PedidoVentaLastSyncDate {
  @override
  Future<DateTime> build() {
    final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
    return pedidoVentaRepository.getLastSyncDate();
  }
}

@riverpod
class GetPedidoVentaLineaList extends _$GetPedidoVentaLineaList {
  @override
  Future<List<PedidoVentaLinea>> build(PedidoLocalParam pedidoLocalParam) {
    final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
    return pedidoVentaRepository.getPedidoVentaLineaListById(
      pedidoLocalParam: pedidoLocalParam,
    );
  }
}

@riverpod
class GetStockDisponible extends _$GetStockDisponible {
  @override
  Future<int> build(String articuloId) {
    final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
    return pedidoVentaRepository.getStockActual(articuloId: articuloId);
  }
}

@riverpod
class GetPedidoVentaBorradoresList extends _$GetPedidoVentaBorradoresList {
  @override
  Future<List<PedidoVenta>> build() {
    final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
    return pedidoVentaRepository.getPedidoVentaBorradoresList();
  }
}

@riverpod
class OfertaHaveAttachment extends _$OfertaHaveAttachment {
  @override
  Future<bool> build(String pedidoVentaId) {
    final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
    return pedidoVentaRepository.ofertaHaveAttachment(pedidoVentaId);
  }
}

@riverpod
class DeletePedidoVenta extends _$DeletePedidoVenta {
  @override
  Future<void> build(String pedidoVentaAppId) async {
    final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
    return pedidoVentaRepository.deletePedidoVenta(
      pedidoVentaAppId: pedidoVentaAppId,
    );
  }
}

class PedidoVentaRepository {
  static const pageSize = 100;

  final RemoteAppDatabase _remoteDb;
  final local.LocalAppDatabase _localDb;
  final Dio _dio;
  final Usuario usuario;
  final ErrorLogger errorLogger;

  PedidoVentaRepository(
    this._remoteDb,
    this._localDb,
    this._dio,
    this.usuario,
    this.errorLogger,
  );

  Future<List<PedidoVenta>> getPedidoVentaLista({
    required int page,
    required String searchText,
    required PedidoVentaEstado? pedidoVentaEstado,
    String? clienteId,
  }) async {
    final pedidoVentaList = <PedidoVenta>[];

    if (page == 0) {
      final pedidoVentaLocalList = await getPedidosVentaLocal(
        searchText: searchText,
        clienteId: clienteId,
      );

      pedidoVentaList.addAll(pedidoVentaLocalList);
    }

    final syncPedidosVentaList = await getSyncPedidoVentaList(
      page: page,
      searchText: searchText,
      clienteId: clienteId,
      pedidoVentaEstado: pedidoVentaEstado,
    );
    pedidoVentaList.addAll(syncPedidosVentaList);
    return pedidoVentaList;
  }

  Future<int> getPedidoVentaCountList({
    required String searchText,
    required PedidoVentaEstado? pedidoVentaEstado,
    String? clienteId,
  }) async {
    try {
      final pedidoVentaLocalCountList = await getPedidosVentaLocalCountList(
        searchText: searchText,
        clienteId: clienteId,
      );

      final syncPedidosVentaCountList = await getSyncPedidoVentaCountList(
        searchText: searchText,
        clienteId: clienteId,
        pedidoVentaEstado: pedidoVentaEstado,
      );
      return pedidoVentaLocalCountList + syncPedidosVentaCountList;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<PedidoVenta>> getPedidoVentaListaByCliente({
    required String clienteId,
  }) async {
    try {
      final pedidoVentaListByCliente = <PedidoVenta>[];
      final pedidoVentaLocalList = await getPedidosVentaLocal(
        searchText: '',
        clienteId: clienteId,
      );
      pedidoVentaListByCliente.addAll(pedidoVentaLocalList);

      final syncPedidosVentaList = await getSyncPedidoVentaList(
        page: 0,
        searchText: '',
        clienteId: clienteId,
        pedidoVentaEstado: null,
      );
      pedidoVentaListByCliente.addAll(syncPedidosVentaList);
      return pedidoVentaListByCliente;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<PedidoVenta>> getSyncPedidoVentaList({
    required int page,
    required String searchText,
    PedidoVentaEstado? pedidoVentaEstado,
    String? clienteId,
  }) {
    final query = _remoteDb.select(_remoteDb.pedidoVentaTable).join([
      innerJoin(
        _remoteDb.clienteUsuarioTable,
        _remoteDb.clienteUsuarioTable.clienteId.equalsExp(
          _remoteDb.pedidoVentaTable.clienteId,
        ),
      ),
      leftOuterJoin(
        _remoteDb.paisTable,
        _remoteDb.paisTable.id.equalsExp(_remoteDb.pedidoVentaTable.paisId),
      ),
      leftOuterJoin(
        _remoteDb.divisaTable,
        _remoteDb.divisaTable.id.equalsExp(_remoteDb.pedidoVentaTable.divisaId),
      ),
      innerJoin(
        _remoteDb.pedidoVentaEstadoTable,
        _remoteDb.pedidoVentaEstadoTable.id.equalsExp(
          _remoteDb.pedidoVentaTable.pedidoVentaEstadoId,
        ),
      ),
    ]);

    query.where(_remoteDb.clienteUsuarioTable.usuarioId.equals(usuario.id));

    if (pedidoVentaEstado != null) {
      query.where(
        _remoteDb.pedidoVentaTable.pedidoVentaEstadoId.equals(
          pedidoVentaEstado.id,
        ),
      );
    }

    if (searchText != '') {
      final busqueda = searchText.toUpperCase().split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        predicate = predicate == null
            ? (_remoteDb.pedidoVentaTable.pedidoVentaId.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.nombreCliente.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.clienteId.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.pedidoVentaId.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.poblacion.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.codigoPostal.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.provincia.like('%${busqueda[i]}%'))
            : predicate &
                  (_remoteDb.pedidoVentaTable.pedidoVentaId.like(
                        '%${busqueda[i]}%',
                      ) |
                      (_remoteDb.pedidoVentaTable.nombreCliente.like(
                            '%${busqueda[i]}%',
                          ) |
                          _remoteDb.pedidoVentaTable.pedidoVentaId.like(
                            '%${busqueda[i]}%',
                          ) |
                          _remoteDb.pedidoVentaTable.clienteId.like(
                            '%${busqueda[i]}%',
                          ) |
                          _remoteDb.pedidoVentaTable.poblacion.like(
                            '%${busqueda[i]}%',
                          ) |
                          _remoteDb.pedidoVentaTable.codigoPostal.like(
                            '%${busqueda[i]}%',
                          ) |
                          _remoteDb.pedidoVentaTable.provincia.like(
                            '%${busqueda[i]}%',
                          )));
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_remoteDb.pedidoVentaTable.clienteId.equals(clienteId));
    }

    query.limit(pageSize, offset: page * pageSize);

    query.orderBy([
      OrderingTerm.desc(_remoteDb.pedidoVentaTable.pedidoVentaDate),
      OrderingTerm.asc(_remoteDb.pedidoVentaTable.pedidoVentaId),
    ]);

    return query.asyncMap((row) async {
      final pedidoVentaDTO = row.readTable(_remoteDb.pedidoVentaTable);
      final paisDTO = row.readTableOrNull(_remoteDb.paisTable);
      final divisaDTO = row.readTable(_remoteDb.divisaTable);
      final pedidoVentaEstadoDTO = row.readTable(
        _remoteDb.pedidoVentaEstadoTable,
      );

      return pedidoVentaDTO.toDomain(
        pais: paisDTO?.toDomain(),
        divisa: divisaDTO.toDomain(),
        pedidoVentaEstado: pedidoVentaEstadoDTO.toDomain(),
      );
    }).get();
  }

  Future<int> getSyncPedidoVentaCountList({
    required String searchText,
    required PedidoVentaEstado? pedidoVentaEstado,
    String? clienteId,
  }) async {
    final countExp = _remoteDb.pedidoVentaTable.pedidoVentaId.count();

    final query = _remoteDb.selectOnly(_remoteDb.pedidoVentaTable).join([
      innerJoin(
        _remoteDb.clienteUsuarioTable,
        _remoteDb.clienteUsuarioTable.clienteId.equalsExp(
          _remoteDb.pedidoVentaTable.clienteId,
        ),
      ),
      leftOuterJoin(
        _remoteDb.paisTable,
        _remoteDb.paisTable.id.equalsExp(_remoteDb.pedidoVentaTable.paisId),
      ),
      leftOuterJoin(
        _remoteDb.divisaTable,
        _remoteDb.divisaTable.id.equalsExp(_remoteDb.pedidoVentaTable.divisaId),
      ),
      innerJoin(
        _remoteDb.pedidoVentaEstadoTable,
        _remoteDb.pedidoVentaEstadoTable.id.equalsExp(
          _remoteDb.pedidoVentaTable.pedidoVentaEstadoId,
        ),
      ),
    ]);

    query.where(_remoteDb.clienteUsuarioTable.usuarioId.equals(usuario.id));

    if (pedidoVentaEstado != null) {
      query.where(
        _remoteDb.pedidoVentaTable.pedidoVentaEstadoId.equals(
          pedidoVentaEstado.id,
        ),
      );
    }

    if (searchText != '') {
      final busqueda = searchText.toUpperCase().split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        predicate = predicate == null
            ? (_remoteDb.pedidoVentaTable.pedidoVentaId.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.nombreCliente.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.clienteId.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.poblacion.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.codigoPostal.like(
                    '%${busqueda[i]}%',
                  ) |
                  _remoteDb.pedidoVentaTable.provincia.like('%${busqueda[i]}%'))
            : predicate &
                  ((_remoteDb.pedidoVentaTable.pedidoVentaId.like(
                        '%${busqueda[i]}%',
                      ) |
                      _remoteDb.pedidoVentaTable.nombreCliente.like(
                        '%${busqueda[i]}%',
                      ) |
                      _remoteDb.pedidoVentaTable.clienteId.like(
                        '%${busqueda[i]}%',
                      ) |
                      _remoteDb.pedidoVentaTable.poblacion.like(
                        '%${busqueda[i]}%',
                      ) |
                      _remoteDb.pedidoVentaTable.codigoPostal.like(
                        '%${busqueda[i]}%',
                      ) |
                      _remoteDb.pedidoVentaTable.provincia.like(
                        '%${busqueda[i]}%',
                      )));
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_remoteDb.pedidoVentaTable.clienteId.equals(clienteId));
    }
    query.addColumns([countExp]);

    final count = await query.map((row) => row.read(countExp)).getSingle();
    return count ?? 0;
  }

  Future<List<PedidoVenta>> getPedidosVentaLocal({
    required String searchText,
    String? clienteId,
  }) async {
    final pedidoVentaList = <PedidoVenta>[];
    final query = _localDb.select(_localDb.pedidoVentaLocalTable);

    query.where((tbl) => tbl.tratada.equals('N'));

    if (searchText != '') {
      final busqueda = searchText.toUpperCase().split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        predicate = predicate == null
            ? (_localDb.pedidoVentaLocalTable.nombreCliente.like(
                    '%${busqueda[i]}%',
                  ) |
                  _localDb.pedidoVentaLocalTable.clienteId.like(
                    '%${busqueda[i]}%',
                  ) |
                  _localDb.pedidoVentaLocalTable.poblacion.like(
                    '%${busqueda[i]}%',
                  ) |
                  _localDb.pedidoVentaLocalTable.codigoPostal.like(
                    '%${busqueda[i]}%',
                  ) |
                  _localDb.pedidoVentaLocalTable.provincia.like(
                    '%${busqueda[i]}%',
                  ))
            : predicate &
                  (_localDb.pedidoVentaLocalTable.nombreCliente.like(
                        '%${busqueda[i]}%',
                      ) |
                      _localDb.pedidoVentaLocalTable.clienteId.like(
                        '%${busqueda[i]}%',
                      ) |
                      _localDb.pedidoVentaLocalTable.poblacion.like(
                        '%${busqueda[i]}%',
                      ) |
                      _localDb.pedidoVentaLocalTable.codigoPostal.like(
                        '%${busqueda[i]}%',
                      ) |
                      _localDb.pedidoVentaLocalTable.provincia.like(
                        '%${busqueda[i]}%',
                      ));
      }
      query.where((tbl) => predicate!);
    }

    if (clienteId != null) {
      query.where((tbl) => tbl.clienteId.equals(clienteId));
    }

    query.orderBy([
      (tbl) => OrderingTerm.asc(tbl.enviada),
      (tbl) => OrderingTerm.desc(tbl.fechaAlta),
    ]);

    final pedidoVentaLocalDTOList = await query.get();

    for (var i = 0; i < pedidoVentaLocalDTOList.length; i++) {
      final pedidoVentaLocalDTO = pedidoVentaLocalDTOList[i];

      final clienteUsuarioDTO =
          await (_remoteDb.select(_remoteDb.clienteUsuarioTable)..where(
                (tbl) =>
                    tbl.clienteId.equals(pedidoVentaLocalDTO.clienteId) &
                    tbl.usuarioId.equals(usuario.id),
              ))
              .getSingleOrNull();

      if (clienteUsuarioDTO != null) {
        final divisaDTO =
            await (_remoteDb.select(
                  _remoteDb.divisaTable,
                )..where((tbl) => tbl.id.equals(pedidoVentaLocalDTO.divisaId!)))
                .getSingle();
        final paisDTO =
            await (_remoteDb.select(_remoteDb.paisTable)
                  ..where((tbl) => tbl.id.equals(pedidoVentaLocalDTO.paisId!)))
                .getSingle();

        final pedidoVentaLineaList = await getLocalPedidoVentaLineaList(
          pedidoVentaAppId: pedidoVentaLocalDTO.pedidoVentaAppId,
        );

        pedidoVentaList.add(
          pedidoVentaLocalDTO.toDomain(
            pais: paisDTO.toDomain(),
            divisa: divisaDTO.toDomain(),
            baseImponible: getBaseImponible(pedidoVentaLineaList, divisaDTO.id),
          ),
        );
      }
    }

    return pedidoVentaList;
  }

  Future<int> getPedidosVentaLocalCountList({
    required String searchText,
    String? clienteId,
  }) async {
    final pedidoLocalList = await getPedidosVentaLocal(
      searchText: searchText,
      clienteId: clienteId,
    );
    return pedidoLocalList.length;
  }

  Future<PedidoVenta> getPedidoVentaById({
    required PedidoLocalParam pedidoVentaIdIsLocalParam,
  }) async {
    try {
      return !pedidoVentaIdIsLocalParam.isLocal
          ? await getSyncPedidoVentaById(
              pedidoVentaId: pedidoVentaIdIsLocalParam.pedidoId!,
            )
          : await getPedidoVentaLocalById(
              pedidoVentaAppId: pedidoVentaIdIsLocalParam.pedidoAppId!,
            );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<PedidoVenta>> getPedidoVentaBorradoresList() async {
    try {
      final pedidoVentaBorradorListDTO =
          await (_localDb.select(_localDb.pedidoVentaLocalTable)..where(
                (tbl) => tbl.borrador.equals('S') & tbl.tratada.equals('N'),
              ))
              .get();

      final pedidoVentaBorradoresList = await Future.wait(
        pedidoVentaBorradorListDTO.map((e) async {
          final divisaDTO = await (_remoteDb.select(
            _remoteDb.divisaTable,
          )..where((tbl) => tbl.id.equals(e.divisaId!))).getSingle();
          final paisDTO = await (_remoteDb.select(
            _remoteDb.paisTable,
          )..where((tbl) => tbl.id.equals(e.paisId!))).getSingle();

          final pedidoVentaLineas = await getLocalPedidoVentaLineaList(
            pedidoVentaAppId: e.pedidoVentaAppId,
          );

          final importeBaseImponible = getBaseImponible(
            pedidoVentaLineas,
            divisaDTO.id,
          );
          final importeIva = getImporteIva(importeBaseImponible, e.iva);

          return e.toDomain(
            pais: paisDTO.toDomain(),
            divisa: divisaDTO.toDomain(),
            baseImponible: importeBaseImponible,
            importeIva: importeIva,
            total: importeBaseImponible + importeIva,
          );
        }),
      );

      return pedidoVentaBorradoresList;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<PedidoVenta> getSyncPedidoVentaById({required String pedidoVentaId}) {
    final query = _remoteDb.select(_remoteDb.pedidoVentaTable).join([
      leftOuterJoin(
        _remoteDb.paisTable,
        _remoteDb.paisTable.id.equalsExp(_remoteDb.pedidoVentaTable.paisId),
      ),
      leftOuterJoin(
        _remoteDb.divisaTable,
        _remoteDb.divisaTable.id.equalsExp(_remoteDb.pedidoVentaTable.divisaId),
      ),
      leftOuterJoin(
        _remoteDb.pedidoVentaEstadoTable,
        _remoteDb.pedidoVentaEstadoTable.id.equalsExp(
          _remoteDb.pedidoVentaTable.pedidoVentaEstadoId,
        ),
      ),
    ]);

    query.where(_remoteDb.pedidoVentaTable.pedidoVentaId.equals(pedidoVentaId));

    return query.asyncMap((row) async {
      final paisDTO = row.readTableOrNull(_remoteDb.paisTable);
      final divisaDTO = row.readTable(_remoteDb.divisaTable);
      final pedidoVentaEstadoDTO = row.readTable(
        _remoteDb.pedidoVentaEstadoTable,
      );
      final pedidoVentaDTO = row.readTable(_remoteDb.pedidoVentaTable);

      return pedidoVentaDTO.toDomain(
        pais: paisDTO?.toDomain(),
        divisa: divisaDTO.toDomain(),
        pedidoVentaEstado: pedidoVentaEstadoDTO.toDomain(),
      );
    }).getSingle();
  }

  Future<List<PedidoAlbaran>> getPedidoVentaAlbaranListById({
    required String pedidoVentaId,
  }) async {
    try {
      final query = _remoteDb.select(_remoteDb.pedidoAlbaranTable).join([
        innerJoin(
          _remoteDb.pedidoVentaTable,
          _remoteDb.pedidoVentaTable.pedidoVentaId.equalsExp(
            _remoteDb.pedidoAlbaranTable.pedidoVentaId,
          ),
        ),
        leftOuterJoin(
          _remoteDb.trackingEstadoTable,
          _remoteDb.trackingEstadoTable.id.equalsExp(
            _remoteDb.pedidoAlbaranTable.trackingEstadoId,
          ),
        ),
      ]);

      query.where(
        _remoteDb.pedidoAlbaranTable.pedidoVentaId.equals(pedidoVentaId),
      );

      query.orderBy([
        OrderingTerm.desc(_remoteDb.pedidoAlbaranTable.fechaAlbaran),
      ]);

      return await (query.map((row) {
        final pedidoVentaAlbaranDTO = row.readTable(
          _remoteDb.pedidoAlbaranTable,
        );

        final trackingEstadoDTO = row.readTableOrNull(
          _remoteDb.trackingEstadoTable,
        );
        return pedidoVentaAlbaranDTO.toDomain(
          trackingEstado: trackingEstadoDTO?.toDomain(),
        );
      }).get());
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<PedidoVentaLinea>> getPedidoVentaLineaListById({
    required PedidoLocalParam pedidoLocalParam,
  }) async {
    try {
      return !pedidoLocalParam.isLocal
          ? await getSyncPedidoVentaLineaList(
              pedidoVentaId: pedidoLocalParam.pedidoId!,
              pedidoAppId: pedidoLocalParam.pedidoAppId,
            )
          : await getLocalPedidoVentaLineaList(
              pedidoVentaAppId: pedidoLocalParam.pedidoAppId!,
              addLineaDesdeArticulo: pedidoLocalParam.addLineaDesdeArticulo,
            );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<PedidoVentaLinea>> getSyncPedidoVentaLineaList({
    required String pedidoVentaId,
    String? pedidoAppId,
  }) async {
    try {
      final query = _remoteDb.select(_remoteDb.pedidoVentaLineaTable).join([
        innerJoin(
          _remoteDb.pedidoVentaTable,
          _remoteDb.pedidoVentaTable.pedidoVentaId.equalsExp(
            _remoteDb.pedidoVentaLineaTable.pedidoId,
          ),
        ),
      ]);

      query.where(
        _remoteDb.pedidoVentaLineaTable.pedidoId.equals(pedidoVentaId),
      );

      return await query.asyncMap((row) async {
        final pedidoVentaDTO = row.readTable(_remoteDb.pedidoVentaTable);
        final pedidoVentaLineaDTO = row.readTable(
          _remoteDb.pedidoVentaLineaTable,
        );

        final stockDisponible = await _getStockDisponible(
          pedidoVentaLineaDTO.articuloId,
        );
        final descuentoProntoPago = await _getDescuentoProntoPago(
          pedidoVentaDTO.clienteId,
        );
        return pedidoVentaLineaDTO.toDomain(
          pedidoVentaAppId: pedidoAppId,
          iva: pedidoVentaDTO.iva,
          descuentoProntoPago: descuentoProntoPago,
          divisaId: pedidoVentaDTO.divisaId,
          stockDisponible: stockDisponible,
        );
      }).get();
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<PedidoVentaLinea>> getLocalPedidoVentaLineaList({
    required String pedidoVentaAppId,
    PedidoVentaLinea? addLineaDesdeArticulo,
  }) async {
    try {
      final query = _localDb.select(_localDb.pedidoVentaLineaLocalTable).join([
        innerJoin(
          _localDb.pedidoVentaLocalTable,
          _localDb.pedidoVentaLocalTable.pedidoVentaAppId.equalsExp(
            _localDb.pedidoVentaLineaLocalTable.pedidoVentaAppId,
          ),
        ),
      ]);

      query.where(
        _localDb.pedidoVentaLineaLocalTable.pedidoVentaAppId.equals(
          pedidoVentaAppId,
        ),
      );

      final pedidoVentaLineaList = await query.map((row) {
        final pedidoVentaLocalDTO = row.readTable(
          _localDb.pedidoVentaLocalTable,
        );
        final pedidoVentaLineaDTO = row.readTable(
          _localDb.pedidoVentaLineaLocalTable,
        );
        return pedidoVentaLineaDTO.toDomain(
          divisaId: pedidoVentaLocalDTO.divisaId!,
          importeLinea: getTotalLinea(
            precio: Precio(
              precio: pedidoVentaLineaDTO.precioDivisa.toMoney(
                currencyId: pedidoVentaLocalDTO.divisaId!,
              ),
              tipoPrecio: pedidoVentaLineaDTO.tipoPrecio,
            ),
            cantidad: pedidoVentaLineaDTO.cantidad,
            descuento1: pedidoVentaLineaDTO.descuento1,
            descuento2: pedidoVentaLineaDTO.descuento2,
            descuento3: pedidoVentaLineaDTO.descuento3,
          ),
        );
      }).get();

      if (addLineaDesdeArticulo != null) {
        pedidoVentaLineaList.add(addLineaDesdeArticulo);
      }

      return pedidoVentaLineaList;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<PedidoVentaEstado>> getPedidoVentaEstadoList() async {
    try {
      final query = await _remoteDb
          .select(_remoteDb.pedidoVentaEstadoTable)
          .get();

      return query.map((e) => e.toDomain()).toList();
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<int> getStockActual({required String articuloId}) async {
    final query = await (_remoteDb.select(
      _remoteDb.articuloTable,
    )..where((tbl) => tbl.id.equals(articuloId))).getSingle();

    return query.stockDisponible;
  }

  Future<void> upsertPedidoVenta({
    String? pedidoId,
    String? empresaId,
    required String pedidoVentaAppId,
    required Cliente cliente,
    required ClienteDireccion? clienteDireccion,
    required List<PedidoVentaLinea> pedidoVentaLineaList,
    String? observaciones,
    String? pedidoCliente,
    required bool oferta,
    DateTime? ofertaFechaHasta,
    required bool isBorrador,
    required ISentrySpan transaction,
  }) async {
    final pedidoVentaLocalDTO = PedidoVentaLocalDTO.fromForm(
      pedidoVentaAppId,
      pedidoId,
      empresaId,
      usuario.id,
      cliente,
      clienteDireccion,
      pedidoCliente,
      observaciones,
      oferta,
      ofertaFechaHasta?.toUtc(),
      isBorrador,
    );

    final pedidoVentaLineaLocalDTOList = pedidoVentaLineaList
        .map((e) => PedidoVentaLineaLocalDTO.fromDomain(e))
        .toList();

    await insertPedidoInDB(
      pedidoVentaLocalDTO,
      pedidoVentaLineaLocalDTOList,
      transaction,
    );

    if (!isBorrador) {
      try {
        if (pedidoId != null && empresaId != null) {
          await _removePedidoSyncDatabase(pedidoId);
        }
        final pedidoVentaLocalDTOEnviado = await _remoteCreatePedidoVenta(
          pedidoVentaLocalDTO,
          pedidoVentaLineaLocalDTOList,
          usuario.test,
        );

        await updatePedidoInDB(pedidoVentaLocalDTO: pedidoVentaLocalDTOEnviado);
      } catch (e) {
        if (e is AppException) {
          await e.whenOrNull(
            notConnection: () =>
                updateWithError(pedidoVentaLocalDTO, e.details.message),
            restApiFailure: (error, _) =>
                updateWithError(pedidoVentaLocalDTO, e.details.message),
          );
        }
        rethrow;
      }
    }
  }

  Future<void> updateWithError(
    PedidoVentaLocalDTO pedidoVentaLocalDTO,
    String errorMessage,
  ) async {
    await (_localDb.update(_localDb.pedidoVentaLocalTable)..where(
          (tbl) =>
              tbl.pedidoVentaAppId.equals(pedidoVentaLocalDTO.pedidoVentaAppId),
        ))
        .write(
          local.PedidoVentaLocalTableCompanion(
            errorSyncMessage: Value(errorMessage),
          ),
        );
  }

  Future<void> deletePedidoVenta({required String pedidoVentaAppId}) async {
    try {
      await (_localDb.delete(
        _localDb.pedidoVentaLocalTable,
      )..where((tbl) => tbl.pedidoVentaAppId.equals(pedidoVentaAppId))).go();
      await (_localDb.delete(
        _localDb.pedidoVentaLineaLocalTable,
      )..where((tbl) => tbl.pedidoVentaAppId.equals(pedidoVentaAppId))).go();
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.insertDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<ArticuloPrecio> getArticuloPrecio({
    required String articuloId,
    required String clienteId,
    required int cantidad,
  }) async {
    var precio = 0.toMoney();
    var divisaId = 'EU';
    var descuento1 = 0.0;
    const descuento2 = 0.0;
    const descuento3 = 0.0;

    var tipoPrecio = 1;
    var iva = 0.0;

    final clienteDto = await (_remoteDb.select(
      _remoteDb.clienteTable,
    )..where((t) => t.id.equals(clienteId))).getSingleOrNull();

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
              divisaId: divisaId,
            )
          : Precio(precio: 0.toMoney(currencyId: divisaId), tipoPrecio: 1);

      final precioNetoCliente = await _getPrecioClienteNeto(
        clienteId: clienteId,
        articuloId: articuloId,
        cantidad: cantidad,
        divisaId: divisaId,
      );

      final precioGrupoNetos = await _getPrecioGrupoNeto(
        clienteId: clienteId,
        articuloId: articuloId,
        cantidad: cantidad,
        divisaId: divisaId,
      );

      final descuentoGeneral = descuentoGeneralId != null
          ? await _getDescuentoGeneral(
              articuloId: articuloId,
              descuentoGeneralId: descuentoGeneralId,
            )
          : 0.0;
      final descuentoCliente = await _getDescuentoCliente(
        articuloId: articuloId,
        clienteId: clienteId,
      );

      final descuento = (descuentoGeneral > descuentoCliente)
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
      final precioNeto =
          (precioGrupoNetosUnitario.isZero ||
              (!precioNetoClienteUnitario.isZero &&
                  precioNetoClienteUnitario <= precioGrupoNetosUnitario))
          ? precioNetoCliente
          : precioGrupoNetos;

      final precioNetoUnitario = _getPrecioUnitario(
        precio: precioNeto.precio,
        tipoPrecio: precioNeto.tipoPrecio,
      );

      //PROMOCIONES
      final precioPromoDto = await _getPrecioPromoDto(
        clienteId,
        divisaId,
        articuloId,
        cantidad,
        DateTime.now(),
      );

      final promoDtoPrecioNeto =
          precioPromoDto.precio * ((100 - precioPromoDto.dto) / 100);
      final promoDtoPrecioNetoUnitario = _getPrecioUnitario(
        precio: promoDtoPrecioNeto,
        tipoPrecio: precioPromoDto.tipoPrecio,
      );

      // Determinamos si cogemos precios netos o tarifa + descuento, pero comprobando si queremos que coja mejor precio cliente o precio neto cliente (cliente_t.tipo_calculo_precio)
      // N: Normal
      // M: Mejor

      if (tipoCalculoPrecio == 'N') {
        if (precioNetoUnitario.isZero) {
          // SI Promo es inferior a tarifa -> promo ini
          if (promoDtoPrecioNetoUnitario < precioNetoTarifaUnitario) {
            precio = precioPromoDto.precio;
            tipoPrecio = precioPromoDto.tipoPrecio;
            descuento1 = precioPromoDto.dto;
          } else {
            precio = precioTarifa.precio;
            tipoPrecio = precioTarifa.tipoPrecio;
            descuento1 = descuento;
          }
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
          // SI Promo es inferior a tarifa -> promo ini
          if (promoDtoPrecioNetoUnitario.isPositive &&
              promoDtoPrecioNetoUnitario < precioNetoTarifaUnitario) {
            precio = precioPromoDto.precio;
            tipoPrecio = precioPromoDto.tipoPrecio;
            descuento1 = precioPromoDto.dto;
          } else {
            precio = precioTarifa.precio;
            tipoPrecio = precioTarifa.tipoPrecio;
            descuento1 = descuento;
          }
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

  Future<bool> ofertaHaveAttachment(String pedidoVentaId) {
    return _remoteOfertaHaveAttachment(pedidoVentaId);
  }

  Future<File?> getDocumentFile({required String pedidoVentaId}) async {
    final data = await _remoteGetAttachment(
      requestUri: Uri.https(
        dotenv.get('URL', fallback: 'localhost:3001'),
        'api/v1/online/adjunto/pedido/$pedidoVentaId',
      ),
      provisionalToken: usuario.provisionalToken,
    );

    try {
      final cahceDirectories = await getTemporaryDirectory();

      final file = await File(
        '${cahceDirectories.path}/pedido/$pedidoVentaId/PV$pedidoVentaId.PDF',
      ).create(recursive: true);
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data);
      await raf.close();
      return file;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.createFileInCacheFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<double> _getIvaClienteArticulo({
    required String articuloId,
    required ClienteDTO clienteDto,
  }) async {
    if (clienteDto.iva == 0) {
      return 0;
    }

    final ivaArticuloQuery =
        _remoteDb.selectOnly(_remoteDb.articuloEmpresaIvaTable)
          ..addColumns([_remoteDb.articuloEmpresaIvaTable.iva])
          ..where(
            _remoteDb.articuloEmpresaIvaTable.empresaId.equals(
                  clienteDto.empresaId,
                ) &
                _remoteDb.articuloEmpresaIvaTable.articuloId.equals(articuloId),
          );

    final ivaClienteQuery = _remoteDb.selectOnly(_remoteDb.clienteTable)
      ..addColumns([_remoteDb.clienteTable.iva])
      ..where(_remoteDb.clienteTable.id.equals(clienteDto.id));

    final ivaArticulo = (await ivaArticuloQuery.getSingleOrNull())?.read(
      _remoteDb.articuloEmpresaIvaTable.iva,
    );
    final ivaCliente = (await ivaClienteQuery.getSingleOrNull())?.read(
      _remoteDb.clienteTable.iva,
    );

    final iva = ivaArticulo ?? ivaCliente ?? 0;
    return iva;
  }

  Future<void> insertPedidoInDB(
    PedidoVentaLocalDTO pedidoVentaLocalDTO,
    List<PedidoVentaLineaLocalDTO> pedidoVentaLineaLocalDTOList,
    ISentrySpan transaction,
  ) async {
    final span = transaction.startChild(
      'insertPedidoInDB',
      description: 'Insert pedido: ${pedidoVentaLocalDTO.toJson()}',
    );
    try {
      return await _localDb.transaction(() async {
        await _localDb
            .into(_localDb.pedidoVentaLocalTable)
            .insertOnConflictUpdate(pedidoVentaLocalDTO);
        for (var i = 0; i < pedidoVentaLineaLocalDTOList.length; i++) {
          await _localDb
              .into(_localDb.pedidoVentaLineaLocalTable)
              .insertOnConflictUpdate(pedidoVentaLineaLocalDTOList[i]);
        }
      });
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.insertDataFailure(e.toString()),
        stackTrace,
      );
    } finally {
      await span.finish();
    }
  }

  Future<void> updatePedidoInDB({
    required PedidoVentaLocalDTO pedidoVentaLocalDTO,
  }) async {
    try {
      await _localDb
          .update(_localDb.pedidoVentaLocalTable)
          .replace(pedidoVentaLocalDTO);
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.insertDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<File> createPedidoVentaLineasCSV({
    required String pedidoVentaAppId,
    required List<PedidoVentaLinea> pedidoVentaLineaList,
  }) async {
    try {
      final getTempDirectory = await getTemporaryDirectory();
      final fileName = '$pedidoVentaAppId.csv';

      if (!await _csvFileExists(
        directory: getTempDirectory,
        fileName: fileName,
      )) {
        final rows = <List<dynamic>>[];
        _addNombreDeLosCampos(rows);
        for (var i = 0; i < pedidoVentaLineaList.length; i++) {
          final row = _addValoresDeLosCampos(pedidoVentaLineaList[i]);

          rows.add(row);
        }
        final res = const ListToCsvConverter(fieldDelimiter: ';').convert(rows);
        log.d(res);

        final csvFile = await File(
          join(getTempDirectory.path, fileName),
        ).create(recursive: true);
        await csvFile.writeAsString(res);

        return csvFile;
      }
      return File(join(getTempDirectory.path, fileName));
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.insertDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<PedidoVentaLocalDTO> _remoteCreatePedidoVenta(
    PedidoVentaLocalDTO pedidoVentaLocalDTO,
    List<PedidoVentaLineaLocalDTO> pedidoVentaLineaDTOList,
    bool test,
  ) async {
    try {
      final pedidoVentaLocalToJson = pedidoVentaLocalDTO.toJson();
      final pedidoVentaLineasLocalListToJson = pedidoVentaLineaDTOList
          .map((e) => e.toJson())
          .toList();
      pedidoVentaLocalToJson['PEDIDO_VENTA_LINEAS'] =
          pedidoVentaLineasLocalListToJson;

      final requestUri = (test)
          ? Uri.http(
              dotenv.get('URL_TEST', fallback: 'localhost:3001'),
              'api/v4/online/pedidos',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v4/online/pedidos',
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
      }

      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        getApiError(e, stackTrace, errorLogger),
        stackTrace,
      );
    }
  }

  Future<PedidoVenta> getPedidoVentaLocalById({
    required String pedidoVentaAppId,
  }) async {
    final pedidoVentaLocalDTO =
        await (_localDb.select(_localDb.pedidoVentaLocalTable)
              ..where((tbl) => tbl.pedidoVentaAppId.equals(pedidoVentaAppId)))
            .getSingle();

    final divisaDTO =
        await (_remoteDb.select(_remoteDb.divisaTable)
              ..where((tbl) => tbl.id.equals(pedidoVentaLocalDTO.divisaId!)))
            .getSingle();
    final paisDTO = await (_remoteDb.select(
      _remoteDb.paisTable,
    )..where((tbl) => tbl.id.equals(pedidoVentaLocalDTO.paisId!))).getSingle();

    final pedidoVentaLineas = await getLocalPedidoVentaLineaList(
      pedidoVentaAppId: pedidoVentaAppId,
    );

    final importeBaseImponible = getBaseImponible(
      pedidoVentaLineas,
      divisaDTO.id,
    );
    final importeIva = getImporteIva(
      importeBaseImponible,
      pedidoVentaLocalDTO.iva,
    );

    return pedidoVentaLocalDTO.toDomain(
      pais: paisDTO.toDomain(),
      divisa: divisaDTO.toDomain(),
      baseImponible: importeBaseImponible,
      importeIva: importeIva,
      total: importeBaseImponible + importeIva,
    );
  }

  Future<Precio> _getPrecioTarifa({
    required String tarifaId,
    required String articuloId,
    required int cantidad,
    String? divisaId,
  }) async {
    final articuloPrecioTarifaDTO =
        await (_remoteDb.select(_remoteDb.articuloPrecioTarifaTable)
              ..where(
                (precioTarifa) => divisaId != null
                    ? precioTarifa.tarifaId.equals(tarifaId) &
                          precioTarifa.articuloId.equals(articuloId) &
                          precioTarifa.cantidadDesde.isSmallerOrEqualValue(
                            cantidad,
                          ) &
                          precioTarifa.divisaId.equals(divisaId)
                    : precioTarifa.tarifaId.equals(tarifaId) &
                          precioTarifa.articuloId.equals(articuloId) &
                          precioTarifa.cantidadDesde.isSmallerOrEqualValue(
                            cantidad,
                          ),
              )
              ..orderBy([
                (precioTarifa) => OrderingTerm(
                  expression: precioTarifa.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    return (articuloPrecioTarifaDTO != null)
        ? Precio(
            precio: articuloPrecioTarifaDTO.precio.toMoney(
              currencyId: articuloPrecioTarifaDTO.divisaId,
            ),
            tipoPrecio: articuloPrecioTarifaDTO.tipoPrecio,
          )
        : Precio(precio: 0.toMoney(currencyId: divisaId), tipoPrecio: 1);
  }

  Future<Precio> _getPrecioGrupoNeto({
    required String clienteId,
    required String articuloId,
    required int cantidad,
    String? divisaId,
  }) async {
    final query =
        _remoteDb.select(_remoteDb.clienteGrupoNetoTable).join([
          innerJoin(
            _remoteDb.articuloGrupoNetoTable,
            _remoteDb.articuloGrupoNetoTable.grupoNetoId.equalsExp(
              _remoteDb.clienteGrupoNetoTable.grupoNetoId,
            ),
          ),
        ])..where(
          _remoteDb.clienteGrupoNetoTable.clienteId.equals(clienteId) &
              _remoteDb.articuloGrupoNetoTable.articuloId.equals(articuloId) &
              _remoteDb.articuloGrupoNetoTable.cantidadDesde
                  .isSmallerOrEqualValue(cantidad),
        );

    final queryResult = await query.get();
    if (queryResult.isEmpty) {
      return Precio(precio: 0.toMoney(currencyId: divisaId), tipoPrecio: 1);
    }
    final minResult = queryResult.reduce((a, b) {
      final precioA = a.read(_remoteDb.articuloGrupoNetoTable.precio)!;
      final tipoPrecioA = a.read(_remoteDb.articuloGrupoNetoTable.tipoPrecio)!;
      final divisaA = a.read(_remoteDb.articuloGrupoNetoTable.divisaId)!;
      final precioB = b.read(_remoteDb.articuloGrupoNetoTable.precio)!;
      final divisaB = b.read(_remoteDb.articuloGrupoNetoTable.divisaId)!;
      final tipoPrecioB = b.read(_remoteDb.articuloGrupoNetoTable.tipoPrecio)!;
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
      precio: (minResult.read(_remoteDb.articuloGrupoNetoTable.precio) ?? 0)
          .toMoney(
            currencyId: minResult.read(
              _remoteDb.articuloGrupoNetoTable.divisaId,
            ),
          ),
      tipoPrecio:
          (minResult.read(_remoteDb.articuloGrupoNetoTable.tipoPrecio) ?? 1),
    );
  }

  Future<Precio> _getPrecioClienteNeto({
    required String clienteId,
    required String articuloId,
    required int cantidad,
    String? divisaId,
  }) async {
    final queryResult =
        await (_remoteDb.select(_remoteDb.clientePrecioNetoTable).join([
                innerJoin(
                  _remoteDb.clienteTable,
                  _remoteDb.clienteTable.id.equalsExp(
                    _remoteDb.clientePrecioNetoTable.clienteId,
                  ),
                ),
              ])
              ..where(
                _remoteDb.clientePrecioNetoTable.clienteId.equals(clienteId) &
                    _remoteDb.clientePrecioNetoTable.articuloId.equals(
                      articuloId,
                    ) &
                    _remoteDb.clientePrecioNetoTable.cantidadDesde
                        .isSmallerOrEqualValue(cantidad),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.clientePrecioNetoTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    return (queryResult != null)
        ? Precio(
            precio: queryResult
                .read(_remoteDb.clientePrecioNetoTable.precio)!
                .toMoney(
                  currencyId: queryResult.read(_remoteDb.clienteTable.divisaId),
                ),
            tipoPrecio: queryResult.read(
              _remoteDb.clientePrecioNetoTable.tipoPrecio,
            )!,
          )
        : Precio(precio: 0.toMoney(currencyId: divisaId), tipoPrecio: 1);
  }

  Future<double> _getDescuentoCliente({
    required String articuloId,
    required String clienteId,
  }) async {
    TypedResult? queryResult;

    // Coincide articulo, familia y subfamilia
    queryResult =
        await (_remoteDb.select(_remoteDb.clienteDescuentoTable).join([
                innerJoin(
                  _remoteDb.articuloTable,
                  _remoteDb.articuloTable.id.equalsExp(
                        _remoteDb.clienteDescuentoTable.articuloId,
                      ) &
                      _remoteDb.articuloTable.familiaId.equalsExp(
                        _remoteDb.clienteDescuentoTable.familiaId,
                      ) &
                      _remoteDb.articuloTable.subfamiliaId.equalsExp(
                        _remoteDb.clienteDescuentoTable.subfamiliaId,
                      ),
                  useColumns: false,
                ),
              ])
              ..where(
                _remoteDb.clienteDescuentoTable.clienteId.equals(clienteId) &
                    _remoteDb.articuloTable.id.equals(articuloId),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_remoteDb.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo, familia y subfamilia
    queryResult =
        await (_remoteDb.select(_remoteDb.clienteDescuentoTable).join([
                innerJoin(
                  _remoteDb.articuloTable,
                  _remoteDb.articuloTable.id.equalsExp(
                        _remoteDb.clienteDescuentoTable.articuloId,
                      ) &
                      _remoteDb.articuloTable.familiaId.equalsExp(
                        _remoteDb.clienteDescuentoTable.familiaId,
                      ) &
                      _remoteDb.articuloTable.subfamiliaId.equalsExp(
                        _remoteDb.clienteDescuentoTable.subfamiliaId,
                      ),
                  useColumns: false,
                ),
              ])
              ..where(
                _remoteDb.clienteDescuentoTable.clienteId.equals(clienteId) &
                    _remoteDb.articuloTable.id.equals(articuloId),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_remoteDb.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo, familia
    queryResult =
        await (_remoteDb.select(_remoteDb.clienteDescuentoTable).join([
                innerJoin(
                  _remoteDb.articuloTable,
                  _remoteDb.articuloTable.id.equalsExp(
                        _remoteDb.clienteDescuentoTable.articuloId,
                      ) &
                      _remoteDb.articuloTable.familiaId.equalsExp(
                        _remoteDb.clienteDescuentoTable.familiaId,
                      ),
                ),
              ])
              ..where(
                _remoteDb.clienteDescuentoTable.clienteId.equals(clienteId) &
                    _remoteDb.articuloTable.id.equals(articuloId) &
                    _remoteDb.clienteDescuentoTable.subfamiliaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_remoteDb.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide familia, subfamilia
    queryResult =
        await (_remoteDb.select(_remoteDb.clienteDescuentoTable).join([
                innerJoin(
                  _remoteDb.articuloTable,
                  _remoteDb.articuloTable.familiaId.equalsExp(
                        _remoteDb.clienteDescuentoTable.familiaId,
                      ) &
                      _remoteDb.articuloTable.subfamiliaId.equalsExp(
                        _remoteDb.clienteDescuentoTable.subfamiliaId,
                      ),
                ),
              ])
              ..where(
                _remoteDb.clienteDescuentoTable.clienteId.equals(clienteId) &
                    _remoteDb.articuloTable.id.equals(articuloId) &
                    _remoteDb.clienteDescuentoTable.articuloId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_remoteDb.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo, subfamilia
    queryResult =
        await (_remoteDb.select(_remoteDb.clienteDescuentoTable).join([
                innerJoin(
                  _remoteDb.articuloTable,
                  _remoteDb.articuloTable.id.equalsExp(
                        _remoteDb.clienteDescuentoTable.articuloId,
                      ) &
                      _remoteDb.articuloTable.subfamiliaId.equalsExp(
                        _remoteDb.clienteDescuentoTable.subfamiliaId,
                      ),
                ),
              ])
              ..where(
                _remoteDb.clienteDescuentoTable.clienteId.equals(clienteId) &
                    _remoteDb.articuloTable.id.equals(articuloId) &
                    _remoteDb.clienteDescuentoTable.familiaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_remoteDb.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo
    queryResult =
        await (_remoteDb.select(_remoteDb.clienteDescuentoTable).join([
                innerJoin(
                  _remoteDb.articuloTable,
                  _remoteDb.articuloTable.id.equalsExp(
                    _remoteDb.clienteDescuentoTable.articuloId,
                  ),
                ),
              ])
              ..where(
                _remoteDb.clienteDescuentoTable.clienteId.equals(clienteId) &
                    _remoteDb.articuloTable.id.equals(articuloId) &
                    _remoteDb.clienteDescuentoTable.familiaId.equals('*') &
                    _remoteDb.clienteDescuentoTable.subfamiliaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_remoteDb.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide subfamilia
    queryResult =
        await (_remoteDb.select(_remoteDb.clienteDescuentoTable).join([
                innerJoin(
                  _remoteDb.articuloTable,
                  _remoteDb.articuloTable.subfamiliaId.equalsExp(
                    _remoteDb.clienteDescuentoTable.subfamiliaId,
                  ),
                ),
              ])
              ..where(
                _remoteDb.clienteDescuentoTable.clienteId.equals(clienteId) &
                    _remoteDb.articuloTable.id.equals(articuloId) &
                    _remoteDb.clienteDescuentoTable.articuloId.equals('*') &
                    _remoteDb.clienteDescuentoTable.familiaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_remoteDb.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide familia
    queryResult =
        await (_remoteDb.select(_remoteDb.clienteDescuentoTable).join([
                innerJoin(
                  _remoteDb.articuloTable,
                  _remoteDb.articuloTable.familiaId.equalsExp(
                    _remoteDb.clienteDescuentoTable.familiaId,
                  ),
                ),
              ])
              ..where(
                _remoteDb.clienteDescuentoTable.clienteId.equals(clienteId) &
                    _remoteDb.articuloTable.id.equals(articuloId) &
                    _remoteDb.clienteDescuentoTable.articuloId.equals('*') &
                    _remoteDb.clienteDescuentoTable.subfamiliaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.clienteDescuentoTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_remoteDb.clienteDescuentoTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide codigo cliente
    final queryResult2 =
        await (_remoteDb.select(_remoteDb.clienteDescuentoTable)
              ..where(
                (tbl) =>
                    tbl.clienteId.equals(clienteId) &
                    tbl.articuloId.equals('*') &
                    tbl.familiaId.equals('*') &
                    tbl.subfamiliaId.equals('*'),
              )
              ..orderBy([
                (tbl) => OrderingTerm(
                  expression: tbl.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
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
  }) async {
    TypedResult? queryResult;
    final articuloTable = _remoteDb.articuloTable;
    final descuentoGeneralTable = _remoteDb.descuentoGeneralTable;

    // Coincide articulo, familia y subfamilia
    queryResult =
        await (_remoteDb.select(descuentoGeneralTable).join([
                innerJoin(
                  articuloTable,
                  articuloTable.id.equalsExp(descuentoGeneralTable.articuloId) &
                      articuloTable.familiaId.equalsExp(
                        descuentoGeneralTable.familiaId,
                      ) &
                      articuloTable.subfamiliaId.equalsExp(
                        descuentoGeneralTable.subfamiliaId,
                      ),
                  useColumns: false,
                ),
              ])
              ..where(
                descuentoGeneralTable.descuentoGeneralId.equals(
                      descuentoGeneralId,
                    ) &
                    articuloTable.id.equals(articuloId),
              )
              ..orderBy([
                OrderingTerm(
                  expression: descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento = queryResult.read(descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }
    // Coincide articulo, familia
    queryResult =
        await (_remoteDb.select(descuentoGeneralTable).join([
                innerJoin(
                  _remoteDb.articuloTable,
                  articuloTable.id.equalsExp(descuentoGeneralTable.articuloId) &
                      articuloTable.familiaId.equalsExp(
                        descuentoGeneralTable.familiaId,
                      ),
                ),
              ])
              ..where(
                descuentoGeneralTable.descuentoGeneralId.equals(
                      descuentoGeneralId,
                    ) &
                    articuloTable.id.equals(articuloId) &
                    descuentoGeneralTable.subfamiliaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento = queryResult.read(descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide familia, subfamilia
    queryResult =
        await (_remoteDb.select(descuentoGeneralTable).join([
                innerJoin(
                  articuloTable,
                  articuloTable.familiaId.equalsExp(
                        descuentoGeneralTable.familiaId,
                      ) &
                      articuloTable.subfamiliaId.equalsExp(
                        descuentoGeneralTable.subfamiliaId,
                      ),
                ),
              ])
              ..where(
                descuentoGeneralTable.descuentoGeneralId.equals(
                      descuentoGeneralId,
                    ) &
                    articuloTable.id.equals(articuloId) &
                    descuentoGeneralTable.articuloId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento = queryResult.read(descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo, subfamilia
    queryResult =
        await (_remoteDb.select(descuentoGeneralTable).join([
                innerJoin(
                  articuloTable,
                  articuloTable.id.equalsExp(descuentoGeneralTable.articuloId) &
                      articuloTable.subfamiliaId.equalsExp(
                        descuentoGeneralTable.subfamiliaId,
                      ),
                ),
              ])
              ..where(
                descuentoGeneralTable.descuentoGeneralId.equals(
                      descuentoGeneralId,
                    ) &
                    articuloTable.id.equals(articuloId) &
                    descuentoGeneralTable.familiaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento = queryResult.read(descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide articulo
    queryResult =
        await (_remoteDb.select(descuentoGeneralTable).join([
                innerJoin(
                  articuloTable,
                  articuloTable.id.equalsExp(descuentoGeneralTable.articuloId),
                ),
              ])
              ..where(
                descuentoGeneralTable.descuentoGeneralId.equals(
                      descuentoGeneralId,
                    ) &
                    articuloTable.id.equals(articuloId) &
                    descuentoGeneralTable.familiaId.equals('*') &
                    descuentoGeneralTable.subfamiliaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento = queryResult.read(descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide subfamilia
    queryResult =
        await (_remoteDb.select(descuentoGeneralTable).join([
                innerJoin(
                  articuloTable,
                  articuloTable.subfamiliaId.equalsExp(
                    descuentoGeneralTable.subfamiliaId,
                  ),
                ),
              ])
              ..where(
                descuentoGeneralTable.descuentoGeneralId.equals(
                      descuentoGeneralId,
                    ) &
                    articuloTable.id.equals(articuloId) &
                    descuentoGeneralTable.articuloId.equals('*') &
                    descuentoGeneralTable.familiaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento = queryResult.read(descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide familia
    queryResult =
        await (_remoteDb.select(descuentoGeneralTable).join([
                innerJoin(
                  articuloTable,
                  articuloTable.familiaId.equalsExp(
                    descuentoGeneralTable.familiaId,
                  ),
                ),
              ])
              ..where(
                descuentoGeneralTable.descuentoGeneralId.equals(
                      descuentoGeneralId,
                    ) &
                    articuloTable.id.equals(articuloId) &
                    descuentoGeneralTable.articuloId.equals('*') &
                    descuentoGeneralTable.subfamiliaId.equals('*'),
              )
              ..orderBy([
                OrderingTerm(
                  expression: descuentoGeneralTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult != null) {
      final descuento =
          queryResult.read(_remoteDb.descuentoGeneralTable.descuento) ?? 0;
      return descuento;
    }

    // Coincide codigo descuento
    final queryResult2 =
        await (_remoteDb.select(_remoteDb.descuentoGeneralTable)
              ..where(
                (tbl) =>
                    tbl.descuentoGeneralId.equals(descuentoGeneralId) &
                    tbl.articuloId.equals('*') &
                    tbl.familiaId.equals('*') &
                    tbl.subfamiliaId.equals('*'),
              )
              ..orderBy([
                (tbl) => OrderingTerm(
                  expression: tbl.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(1))
            .getSingleOrNull();

    if (queryResult2 != null) {
      final descuento = queryResult2.descuento;
      return descuento;
    }

    return 0.0;
  }

  Money _getPrecioUnitario({required Money precio, required int tipoPrecio}) {
    return tipoPrecio != 0
        ? Money.fromFixedWithCurrency(
            precio.amount / Fixed.fromNum(tipoPrecio),
            precio.currency,
          )
        : 0.toMoney(currencyId: precio.currency.isoCode);
  }

  double _roundDouble(double value, int places) {
    final mod = math.pow(10.0, places);
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
        6,
      ),
    );
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
    List<PedidoVentaLinea> pedidoVentaLineaList,
    String divisaId,
  ) {
    var total = Money.parse('0', isoCode: divisaId);
    for (var i = 0; i < pedidoVentaLineaList.length; i++) {
      if (pedidoVentaLineaList[i].importeLinea != null) {
        total = total + pedidoVentaLineaList[i].importeLinea!;
      }
    }

    return total;
  }

  Future<DateTime> getLastSyncDate() async {
    final lastSyncDTO = await _localDb
        .select(_localDb.syncDateTimeTable)
        .getSingle();
    return lastSyncDTO.pedidoUltimaSync;
  }

  Money getImporteIva(Money importeBaseImponible, double iva) {
    final importeIve =
        (importeBaseImponible.amount * Fixed.fromNum(iva)) / Fixed.fromNum(100);

    return Money.fromFixedWithCurrency(
      importeIve,
      importeBaseImponible.currency,
    );
  }

  void _addNombreDeLosCampos(List<dynamic> rows) {
    rows.addAll([
      'PEDIDO_ID',
      'PEDIDO_LINEA_ID',
      'ARTICULO_ID',
      'ARTICULO_DESCRIPCION',
      'CANTIDAD',
      'PRECIO_DIVISA',
      'TIPO_PRECIO',
      'DESCUENTO1',
      'DESCUENTO2',
      'DESCUENTO3',
      'TOTAL_LINEA',
    ]);
  }

  List<dynamic> _addValoresDeLosCampos(PedidoVentaLinea pedidoVentaLinea) {
    return [
      pedidoVentaLinea.pedidoVentaAppId,
      pedidoVentaLinea.pedidoVentaLineaId,
      pedidoVentaLinea.articuloId,
      pedidoVentaLinea.articuloDescription,
      pedidoVentaLinea.cantidad,
      pedidoVentaLinea.precioDivisa.amount.toDecimal().toDouble(),
      pedidoVentaLinea.tipoPrecio,
      pedidoVentaLinea.descuento1,
      pedidoVentaLinea.descuento2,
      pedidoVentaLinea.descuento3,
      pedidoVentaLinea.importeLinea?.amount.toDecimal().toDouble() ?? '',
    ];
  }

  Future<bool> _csvFileExists({
    required Directory directory,
    required String fileName,
  }) {
    return (File((join(directory.path, fileName))).exists());
  }

  Future<bool> _remoteOfertaHaveAttachment(String pedidoVentaId) async {
    try {
      final requestUri = Uri.https(
        dotenv.get('URL', fallback: 'localhost:3001'),
        'api/v1/online/adjunto/pedido/$pedidoVentaId/exist',
      );

      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
        ),
      );
      if (response.statusCode == 200) {
        final responsaData = response.data['data'] as bool;

        return responsaData;
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        getApiError(e, stackTrace, errorLogger),
        stackTrace,
      );
    }
  }

  Future<List<int>> _remoteGetAttachment({
    required Uri requestUri,
    required String provisionalToken,
  }) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
          responseType: ResponseType.bytes,
          receiveDataWhenStatusError: true,
        ),
      );
      if (response.statusCode == 200) {
        return (response.data as List<Object?>).cast();
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        getApiError(e, stackTrace, errorLogger),
        stackTrace,
      );
    }
  }

  Future<int?> _getStockDisponible(String articuloId) async {
    final articuloDto = await (_remoteDb.select(
      _remoteDb.articuloTable,
    )..where((tbl) => tbl.id.equals(articuloId))).getSingleOrNull();

    return articuloDto?.stockDisponible;
  }

  Future<double> _getDescuentoProntoPago(String clienteId) async {
    final clienteDto = await (_remoteDb.select(
      _remoteDb.clienteTable,
    )..where((tbl) => tbl.id.equals(clienteId))).getSingle();

    return clienteDto.descuentoProntoPago;
  }

  Future<void> _removePedidoSyncDatabase(String pedidoId) async {
    await (_remoteDb.delete(
      _remoteDb.pedidoVentaTable,
    )..where((tbl) => tbl.pedidoVentaId.equals(pedidoId))).go();
    await (_remoteDb.delete(
      _remoteDb.pedidoVentaLineaTable,
    )..where((tbl) => tbl.pedidoId.equals(pedidoId))).go();
  }

  Future<void> deletePedidoVentaLocalAntiguos() async {
    final currentDate = DateTime.now();
    final pedidosVentaLocalList = await (_localDb.select(
      _localDb.pedidoVentaLocalTable,
    )).get();

    for (var i = 0; i < pedidosVentaLocalList.length; i++) {
      if (pedidosVentaLocalList[i].tratada == 'S' &&
          pedidosVentaLocalList[i].fechaAlta
              .add(const Duration(days: 30))
              .isBefore(currentDate)) {
        await (_localDb.delete(_localDb.pedidoVentaLineaLocalTable)..where(
              (tbl) => tbl.pedidoVentaAppId.equals(
                pedidosVentaLocalList[i].pedidoVentaAppId,
              ),
            ))
            .go();
        await (_localDb.delete(_localDb.pedidoVentaLocalTable)..where(
              (tbl) => tbl.pedidoVentaAppId.equals(
                pedidosVentaLocalList[i].pedidoVentaAppId,
              ),
            ))
            .go();
      }
    }
  }

  Future<Precio?> checkMinimumPrice(
    String articuloId,
    Money importeLinea,
    int totalQuantity,
    String divisaId,
  ) async {
    if (usuario.modificarPedido) {
      final unitPrice = importeLinea / totalQuantity;

      final precioTarifa = await _getPrecioTarifa(
        tarifaId: 'MAX',
        articuloId: articuloId,
        cantidad: totalQuantity,
        divisaId: divisaId,
      );

      if (unitPrice < precioTarifa.precio) {
        return precioTarifa;
      }
    }

    return null;
  }

  Future<PrecioPromocion> _getPrecioPromoDto(
    String clienteId,
    String divisaId,
    String articuloId,
    int cantidad,
    DateTime fecha,
  ) async {
    final queryResult =
        await (_remoteDb.select(_remoteDb.promoDtoLinTable).join([
                innerJoin(
                  _remoteDb.promoDtoCabTable,
                  _remoteDb.promoDtoLinTable.promoDtoId.equalsExp(
                        _remoteDb.promoDtoCabTable.promoDtoId,
                      ) &
                      _remoteDb.promoDtoLinTable.empresaId.equalsExp(
                        _remoteDb.promoDtoCabTable.empresaId,
                      ),
                ),
              ])
              ..where(
                _remoteDb.promoDtoCabTable.divisaId.equals(divisaId) &
                    _remoteDb.promoDtoCabTable.fechaDesde.isSmallerOrEqualValue(
                      fecha,
                    ) &
                    (_remoteDb.promoDtoCabTable.fechaHasta.isBiggerOrEqualValue(
                          fecha,
                        ) |
                        _remoteDb.promoDtoCabTable.fechaHasta.isNull()) &
                    _remoteDb.promoDtoLinTable.articuloId.equals(articuloId) &
                    _remoteDb.promoDtoLinTable.cantidadDesde
                        .isSmallerOrEqualValue(cantidad),
              )
              ..orderBy([
                OrderingTerm(
                  expression: _remoteDb.promoDtoCabTable.fechaHasta,
                  mode: OrderingMode.desc,
                ),
                OrderingTerm(
                  expression: _remoteDb.promoDtoLinTable.cantidadDesde,
                  mode: OrderingMode.desc,
                ),
              ]))
            .get();

    final filterResult = <TypedResult>[];

    for (var i = 0; i < queryResult.length; i++) {
      final promoId = queryResult[i].read(
        _remoteDb.promoDtoCabTable.promoDtoId,
      );
      final empresaId = queryResult[i].read(
        _remoteDb.promoDtoCabTable.empresaId,
      )!;
      final activa = await _getPromoDtoActivaCliente(
        empresaId,
        clienteId,
        promoId!,
      );

      if (activa) {
        filterResult.add(queryResult[i]);
      }
    }

    if (filterResult.isEmpty) {
      return PrecioPromocion(
        precio: 0.toMoney(currencyId: divisaId),
        tipoPrecio: 1,
        dto: 0,
      );
    }
    final promo = filterResult[0];
    return PrecioPromocion(
      precio: Money.fromNum(
        promo.read(_remoteDb.promoDtoLinTable.precio)!,
        isoCode: divisaId,
      ),
      tipoPrecio: promo.read(_remoteDb.promoDtoLinTable.tipoPrecio) ?? 1,
      dto: promo.read(_remoteDb.promoDtoLinTable.dto) ?? 0,
    );
  }

  Future<bool> _getPromoDtoActivaCliente(
    String empresaId,
    String clienteId,
    String promoDtoId,
  ) async {
    final promoClienteIncluido = (await (_remoteDb.customSelect(
      ''' SELECT * FROM promo_dto_cliente WHERE PROMO_DTO_ID = ? AND EMPRESA_ID = ? AND CLIENTE_ID = ? AND TIPO = ?''',
      variables: [
        Variable.withString(promoDtoId),
        Variable.withString(empresaId),
        Variable.withString(clienteId),
        Variable.withString('I'),
      ],
    )).get()).isNotEmpty;

    final promoClienteExcluido = (await (_remoteDb.customSelect(
      ''' SELECT * FROM promo_dto_cliente WHERE PROMO_DTO_ID = ? AND EMPRESA_ID = ? AND CLIENTE_ID = ? AND TIPO = ?''',
      variables: [
        Variable.withString(promoDtoId),
        Variable.withString(empresaId),
        Variable.withString(clienteId),
        Variable.withString('E'),
      ],
    )).get()).isNotEmpty;

    final promoClienteTodosIncluido =
        (await (_remoteDb
                .customSelect(
                  ''' SELECT * FROM promo_dto_cliente WHERE PROMO_DTO_ID = ? AND EMPRESA_ID = ? AND CLIENTE_ID = ? AND TIPO = ?''',
                  variables: [
                    Variable.withString(promoDtoId),
                    Variable.withString(empresaId),
                    Variable.withString('*'),
                    Variable.withString('I'),
                  ],

                  // _remoteDb.promoDtoClienteTable)
                  //         ..where((promoCliente) =>
                  //             promoCliente.promoDtoId.equals(promoDtoId) &
                  //             promoCliente.empresaId.equalsNullable(empresaId) &
                  //             promoCliente.clienteId.equals('*'.trim()) &
                  //             promoCliente.tipo.equals('I'))
                )
                .get()))
            .isNotEmpty;

    if (promoClienteIncluido) {
      return true;
    } else if (promoClienteTodosIncluido && promoClienteExcluido) {
      return false;
    } else if (promoClienteTodosIncluido && !promoClienteExcluido) {
      return true;
    }
    return false;
  }
}
