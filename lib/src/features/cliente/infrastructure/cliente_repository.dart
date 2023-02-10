import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/core/exceptions/get_api_error.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/app.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_adjunto_dto.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/domain/usuario.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/domain/adjunto_param.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/local_database.dart';
import '../../articulos/domain/articulo.dart';
import '../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../pedido_venta/domain/pedido_venta.dart';
import '../../pedido_venta/infrastructure/pedido_venta_repository.dart';
import '../../usuario/infrastructure/usuario_service.dart';
import '../../visitas/domain/visita.dart';
import '../../visitas/infrastructure/visita_repository.dart';
import '../domain/cliente.dart';
import '../domain/cliente_adjunto.dart';
import '../domain/cliente_contacto.dart';
import '../domain/cliente_descuento.dart';
import '../domain/cliente_direccion.dart';
import '../domain/cliente_grupo_neto.dart';
import '../domain/cliente_pago_pendiente.dart';
import '../domain/cliente_precio_neto.dart';
import '../domain/cliente_rappel.dart';
import '../domain/cliente_ventas_articulo.dart';
import '../domain/cliente_ventas_mes.dart';
import 'cliente_contacto_local_dto.dart';
import 'cliente_direccion_local_dto.dart';
import 'cliente_ventas_articulo_dto.dart';
import 'cliente_ventas_mes_dto.dart';

final clienteRepositoryProvider = Provider.autoDispose<ClienteRepository>(
  (ref) {
    final remoteDb = ref.watch(appRemoteDatabaseProvider);
    final localDb = ref.watch(appLocalDatabaseProvider);

    final dio = ref.watch(dioProvider);
    final usuario = ref.watch(usuarioNotifierProvider)!;
    return ClienteRepository(remoteDb, localDb, dio, usuario);
  },
);

final clienteProvider =
    FutureProvider.autoDispose.family<Cliente, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteById(clienteId: clienteId);
});

final clienteLastSyncDateProvider =
    FutureProvider.autoDispose<DateTime>((ref) async {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getLastSyncDate();
});

final clienteDireccionListProvider = FutureProvider.autoDispose
    .family<List<ClienteDireccion>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);

  return clienteRepository.getClienteDireccionListById(clienteId: clienteId);
});

final clienteContactosListProvider = FutureProvider.autoDispose
    .family<List<ClienteContacto>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteContactosListById(clienteId: clienteId);
});

final clienteDescuentoProvider = FutureProvider.autoDispose
    .family<List<ClienteDescuento>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteDescuentoById(clienteId: clienteId);
});

final clienteGrupoNetoProvider = FutureProvider.autoDispose
    .family<List<ClienteGrupoNeto>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteGrupoNetoById(clienteId: clienteId);
});

final clientePrecioNetoProvider = FutureProvider.autoDispose
    .family<List<ClientePrecioNeto>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClientePrecioNetoById(clienteId: clienteId);
});

final clientePendientePagoProvider = FutureProvider.autoDispose
    .family<List<ClientePagoPendiente>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClientePagoPendienteById(clienteId: clienteId);
});

final clienteRappelProvider = FutureProvider.autoDispose
    .family<List<ClienteRappel>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteRappelById(clienteId: clienteId);
});

final clienteVentasMesProvider = FutureProvider.autoDispose
    .family<List<ClienteVentasMes>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getVentasMesById(clienteId: clienteId);
});

final clienteVisitasProvider =
    FutureProvider.autoDispose.family<List<Visita>, String>((ref, clienteId) {
  final visitaRepository = ref.watch(visitaRepositoryProvider);
  return visitaRepository.getVisitaListByCliente(clienteId: clienteId);
});

final clientePedidosProvider = FutureProvider.autoDispose
    .family<List<PedidoVenta>, String>((ref, clienteId) {
  final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);
  return pedidoVentaRepository.getPedidoVentaListaByCliente(
      clienteId: clienteId);
});

final clienteAdjuntoProvider = FutureProvider.autoDispose
    .family<List<ClienteAdjunto>, String>((ref, clienteId) async {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return clienteRepository.getClienteAdjuntoById(
      clienteId: clienteId,
      provisionalToken: usuario!.provisionalToken,
      test: usuario.test);
});

final clientePaisProvider =
    FutureProvider.autoDispose.family<Pais?, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getPaisCliente(clienteId: clienteId);
});

class ClienteRepository {
  static const pageSize = 100;
  static const clienteVentasArticuloPageSize = 50;

  final RemoteAppDatabase _remoteDb;
  final LocalAppDatabase _localDb;
  final Dio _dio;
  final Usuario usuario;

  ClienteRepository(this._remoteDb, this._localDb, this._dio, this.usuario);

  Future<List<Cliente>> getClienteLista(
      {required int page,
      required String searchText,
      required bool searchPotenciales}) async {
    try {
      final query = _remoteDb.select(_remoteDb.clienteTable).join([
        innerJoin(
            _remoteDb.clienteUsuarioTable,
            _remoteDb.clienteUsuarioTable.clienteId
                .equalsExp(_remoteDb.clienteTable.id)),
        leftOuterJoin(
            _remoteDb.paisTable,
            _remoteDb.paisTable.id
                .equalsExp(_remoteDb.clienteTable.paisFiscalId)),
        leftOuterJoin(
            _remoteDb.divisaTable,
            _remoteDb.divisaTable.id
                .equalsExp(_remoteDb.clienteTable.divisaId)),
        leftOuterJoin(
            _remoteDb.metodoDeCobroTable,
            _remoteDb.metodoDeCobroTable.id
                .equalsExp(_remoteDb.clienteTable.metodoDeCobroId)),
        leftOuterJoin(
            _remoteDb.plazoDeCobroTable,
            _remoteDb.plazoDeCobroTable.id
                .equalsExp(_remoteDb.clienteTable.plazoDeCobroId)),
        leftOuterJoin(
            _remoteDb.clienteTipoPotencialTable,
            _remoteDb.clienteTipoPotencialTable.id
                .equalsExp(_remoteDb.clienteTable.clienteTipoPotencialId)),
        leftOuterJoin(
            _remoteDb.clienteEstadoPotencialTable,
            _remoteDb.clienteEstadoPotencialTable.id
                .equalsExp(_remoteDb.clienteTable.clienteEstadoPotencialId))
      ]);

      query.where(_remoteDb.clienteUsuarioTable.usuarioId.equals(usuario.id));

      if (searchText != '') {
        final busqueda = searchText.split(' ');
        Expression<bool>? predicate;
        for (var i = 0; i < busqueda.length; i++) {
          if (predicate == null) {
            predicate = ((_remoteDb.clienteTable.id.like('%${busqueda[i]}%') |
                (_remoteDb.clienteTable.nombreCliente.like('%${busqueda[i]}%') |
                    _remoteDb.clienteTable.nombreFiscal
                        .like('%${busqueda[i]}%') |
                    _remoteDb.clienteTable.poblacionFiscal
                        .like('%${busqueda[i]}%') |
                    _remoteDb.clienteTable.provinciaFiscal
                        .like('%${busqueda[i]}%'))));
          } else {
            predicate = predicate &
                ((_remoteDb.clienteTable.id.like('%${busqueda[i]}%') |
                    (_remoteDb.clienteTable.nombreCliente
                            .like('%${busqueda[i]}%') |
                        _remoteDb.clienteTable.nombreFiscal
                            .like('%${busqueda[i]}%') |
                        _remoteDb.clienteTable.poblacionFiscal
                            .like('%${busqueda[i]}%') |
                        _remoteDb.clienteTable.provinciaFiscal
                            .like('%${busqueda[i]}%'))));
          }
        }
        query.where(predicate!);
      }

      if (searchPotenciales) {
        query.where(_remoteDb.clienteTable.clientePotencial.equals('S'));
      }

      query.limit(pageSize, offset: page * pageSize);
      query.orderBy([
        OrderingTerm.asc(_remoteDb.clienteTable.nombreCliente),
        OrderingTerm.asc(_remoteDb.clienteTable.id)
      ]);

      final clienteList = await query.asyncMap((row) async {
        final clienteDTO = row.readTable(_remoteDb.clienteTable);
        final paisDTO = row.readTableOrNull(_remoteDb.paisTable);
        final divisaDTO = row.readTableOrNull(_remoteDb.divisaTable);
        final metodoDeCobroDTO =
            row.readTableOrNull(_remoteDb.metodoDeCobroTable);
        final plazoDeCobroDTO =
            row.readTableOrNull(_remoteDb.plazoDeCobroTable);
        final clienteEstadoPotencialDTO =
            row.readTableOrNull(_remoteDb.clienteEstadoPotencialTable);
        final clienteTipoPotencialDTO =
            row.readTableOrNull(_remoteDb.clienteTipoPotencialTable);

        return clienteDTO.toDomain(
          paisFiscal: paisDTO?.toDomain(),
          divisa: divisaDTO?.toDomain(),
          metodoDeCobro: metodoDeCobroDTO?.toDomain(),
          plazoDeCobro: plazoDeCobroDTO?.toDomain(),
          clienteEstadoPotencial: clienteEstadoPotencialDTO?.toDomain(),
          clienteTipoPotencial: clienteTipoPotencialDTO?.toDomain(),
        );
      }).get();
      return clienteList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<int> getClienteCountList(
      {required String searchText, required bool searchPotenciales}) async {
    try {
      final countExp = _remoteDb.clienteTable.id.count();

      final query = _remoteDb.selectOnly(_remoteDb.clienteTable).join([
        innerJoin(
            _remoteDb.clienteUsuarioTable,
            _remoteDb.clienteUsuarioTable.clienteId
                .equalsExp(_remoteDb.clienteTable.id)),
        leftOuterJoin(
            _remoteDb.paisTable,
            _remoteDb.paisTable.id
                .equalsExp(_remoteDb.clienteTable.paisFiscalId)),
        leftOuterJoin(
            _remoteDb.divisaTable,
            _remoteDb.divisaTable.id
                .equalsExp(_remoteDb.clienteTable.divisaId)),
        leftOuterJoin(
            _remoteDb.metodoDeCobroTable,
            _remoteDb.metodoDeCobroTable.id
                .equalsExp(_remoteDb.clienteTable.metodoDeCobroId)),
        leftOuterJoin(
            _remoteDb.plazoDeCobroTable,
            _remoteDb.plazoDeCobroTable.id
                .equalsExp(_remoteDb.clienteTable.plazoDeCobroId)),
        leftOuterJoin(
            _remoteDb.clienteTipoPotencialTable,
            _remoteDb.clienteTipoPotencialTable.id
                .equalsExp(_remoteDb.clienteTable.clienteTipoPotencialId)),
        leftOuterJoin(
            _remoteDb.clienteEstadoPotencialTable,
            _remoteDb.clienteEstadoPotencialTable.id
                .equalsExp(_remoteDb.clienteTable.clienteEstadoPotencialId))
      ]);
      query.addColumns([countExp]);
      query.where(_remoteDb.clienteUsuarioTable.usuarioId.equals(usuario.id));

      if (searchText != '') {
        final busqueda = searchText.split(' ');
        Expression<bool>? predicate;
        for (var i = 0; i < busqueda.length; i++) {
          if (predicate == null) {
            predicate = ((_remoteDb.clienteTable.id.like('%${busqueda[i]}%') |
                (_remoteDb.clienteTable.nombreCliente.like('%${busqueda[i]}%') |
                    _remoteDb.clienteTable.nombreFiscal
                        .like('%${busqueda[i]}%') |
                    _remoteDb.clienteTable.poblacionFiscal
                        .like('%${busqueda[i]}%') |
                    _remoteDb.clienteTable.provinciaFiscal
                        .like('%${busqueda[i]}%'))));
          } else {
            predicate = predicate &
                ((_remoteDb.clienteTable.id.like('%${busqueda[i]}%') |
                    (_remoteDb.clienteTable.nombreCliente
                            .like('%${busqueda[i]}%') |
                        _remoteDb.clienteTable.nombreFiscal
                            .like('%${busqueda[i]}%') |
                        _remoteDb.clienteTable.poblacionFiscal
                            .like('%${busqueda[i]}%') |
                        _remoteDb.clienteTable.provinciaFiscal
                            .like('%${busqueda[i]}%'))));
          }
        }
        query.where(predicate!);
      }

      if (searchPotenciales) {
        query.where(_remoteDb.clienteTable.clientePotencial.equals('S'));
      }

      final count = await query.map((row) => row.read(countExp)).getSingle();
      return count ?? 0;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Cliente> getClienteById({required String clienteId}) async {
    try {
      final query = _remoteDb.select(_remoteDb.clienteTable).join([
        leftOuterJoin(
            _remoteDb.paisTable,
            _remoteDb.paisTable.id
                .equalsExp(_remoteDb.clienteTable.paisFiscalId)),
        leftOuterJoin(
            _remoteDb.divisaTable,
            _remoteDb.divisaTable.id
                .equalsExp(_remoteDb.clienteTable.divisaId)),
        leftOuterJoin(
            _remoteDb.metodoDeCobroTable,
            _remoteDb.metodoDeCobroTable.id
                .equalsExp(_remoteDb.clienteTable.metodoDeCobroId)),
        leftOuterJoin(
            _remoteDb.plazoDeCobroTable,
            _remoteDb.plazoDeCobroTable.id
                .equalsExp(_remoteDb.clienteTable.plazoDeCobroId)),
        leftOuterJoin(
            _remoteDb.clienteTipoPotencialTable,
            _remoteDb.clienteTipoPotencialTable.id
                .equalsExp(_remoteDb.clienteTable.clienteTipoPotencialId)),
        leftOuterJoin(
            _remoteDb.clienteEstadoPotencialTable,
            _remoteDb.clienteEstadoPotencialTable.id
                .equalsExp(_remoteDb.clienteTable.clienteEstadoPotencialId))
      ]);

      query.where(_remoteDb.clienteTable.id.equals(clienteId));

      return query.map((row) {
        final clienteDTO = row.readTable(_remoteDb.clienteTable);
        final paisDTO = row.readTableOrNull(_remoteDb.paisTable);
        final divisaDTO = row.readTableOrNull(_remoteDb.divisaTable);
        final metodoDeCobroDTO =
            row.readTableOrNull(_remoteDb.metodoDeCobroTable);
        final plazoDeCobroDTO =
            row.readTableOrNull(_remoteDb.plazoDeCobroTable);
        final clienteEstadoPotencialDTO =
            row.readTableOrNull(_remoteDb.clienteEstadoPotencialTable);
        final clienteTipoPotencialDTO =
            row.readTableOrNull(_remoteDb.clienteTipoPotencialTable);

        return clienteDTO.toDomain(
          paisFiscal: paisDTO?.toDomain(),
          divisa: divisaDTO?.toDomain(),
          metodoDeCobro: metodoDeCobroDTO?.toDomain(),
          plazoDeCobro: plazoDeCobroDTO?.toDomain(),
          clienteEstadoPotencial: clienteEstadoPotencialDTO?.toDomain(),
          clienteTipoPotencial: clienteTipoPotencialDTO?.toDomain(),
        );
      }).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteDireccion>> getClienteDireccionListById(
      {required String clienteId}) async {
    final List<ClienteDireccion> clienteDireccionList = [];
    try {
      final clienteDireccionLocalList =
          await _getClienteDireccionLocalList(clienteId);

      final clienteDireccionSyncList = await _getClienteDireccionSyncList(
          clienteId, clienteDireccionLocalList);

      clienteDireccionList.addAll(clienteDireccionSyncList);

      for (var i = 0; i < clienteDireccionLocalList.length; i++) {
        final clienteDireccionLocal = clienteDireccionLocalList[i];
        bool existInSync = _existDireccionInSync(
            clienteDireccionLocal, clienteDireccionSyncList);

        if (!existInSync) {
          clienteDireccionList.add(clienteDireccionLocalList[i]);
        }
      }

      return clienteDireccionList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteDireccion> getClienteDireccionById(
      {required String clienteId,
      required String clienteDireccionId,
      bool tratado = true}) async {
    try {
      if (tratado) {
        return await _getClienteDireccionSyncById(
            clienteId, clienteDireccionId);
      } else {
        return await _getClienteDireccionLocalById(
            clienteId, clienteDireccionId);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<ClienteDireccion> upsertClienteDireccion(
      ClienteDireccion upsertClienteDireccion) async {
    try {
      final clienteDireccionLocalDto =
          ClienteDireccionLocalDTO.fromDomain(upsertClienteDireccion);

      await _insertClienteDireccionInLocalDB(clienteDireccionLocalDto);

      final clienteDireccionLocalDtoEnviado =
          await _remoteUpsertClienteDireccion(clienteDireccionLocalDto);

      await _updateClienteDireccionInDB(clienteDireccionLocalDtoEnviado);

      return clienteDireccionLocalDtoEnviado.toDomain(
          pais: upsertClienteDireccion.pais);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClienteContacto>> getClienteContactosListById(
      {required String clienteId}) async {
    final List<ClienteContacto> clienteContactoList = [];
    try {
      final clienteContactoLocalList =
          await _getClienteContactoLocalList(clienteId);

      final clienteContactoSyncList = await _getClienteContactoSyncList(
          clienteId, clienteContactoLocalList);

      clienteContactoList.addAll(clienteContactoSyncList);

      for (var i = 0; i < clienteContactoLocalList.length; i++) {
        final clienteContactoLocal = clienteContactoLocalList[i];
        bool existInSync = _existContactoInSync(
            clienteContactoLocal, clienteContactoLocalList);

        if (!existInSync) {
          clienteContactoList.add(clienteContactoLocalList[i]);
        }
      }

      return clienteContactoList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteContacto> getClienteContactoById(
      {required String clienteContactoId, bool tratado = true}) async {
    try {
      if (tratado) {
        return await _getClienteContactoSyncById(clienteContactoId);
      } else {
        return await _getClienteContactoLocalById(clienteContactoId);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<ClienteContacto> upsertClienteContacto(
      ClienteContacto upsertClienteContacto) async {
    try {
      final clienteContactoLocalDto =
          ClienteContactoLocalDTO.fromDomain(upsertClienteContacto);

      await _insertClienteContactoInLocalDB(clienteContactoLocalDto);

      final clienteContactoLocalDtoEnviado =
          await _remoteUpsertClienteContacto(clienteContactoLocalDto);

      await _updateClienteContactoInDB(clienteContactoLocalDtoEnviado);

      return clienteContactoLocalDtoEnviado.toDomain();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClienteDescuento>> getClienteDescuentoById(
      {required String clienteId}) {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteDescuentoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.asyncMap((row) async {
        final articuloDto = (row.articuloId != '*')
            ? await (_remoteDb.select(_remoteDb.articuloTable)
                  ..where((t) => t.id.equals(row.articuloId)))
                .getSingle()
            : null;

        final familiaDTO = await (_remoteDb.select(_remoteDb.familiaTable)
              ..where((t) => t.id.equals(row.familiaId)))
            .getSingle();
        final subfamiliaDTO = await (_remoteDb.select(_remoteDb.subfamiliaTable)
              ..where((t) => t.id.equals(row.subfamiliaId)))
            .getSingle();
        return row.toDomain(
          descripcion: (articuloDto != null)
              ? getDescriptionInLocalLanguage(
                  articulo:
                      articuloDto.toDomain(familia: null, subfamilia: null))
              : null,
          familia: familiaDTO.toDomain(),
          subfamilia: subfamiliaDTO.toDomain(),
        );
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClientePrecioNeto>> getClientePrecioNetoById(
      {required String clienteId}) {
    try {
      final query = _remoteDb.select(_remoteDb.clientePrecioNetoTable).join([
        innerJoin(
            _remoteDb.clienteTable,
            _remoteDb.clienteTable.id
                .equalsExp(_remoteDb.clientePrecioNetoTable.clienteId)),
        innerJoin(
            _remoteDb.articuloTable,
            _remoteDb.articuloTable.id
                .equalsExp(_remoteDb.clientePrecioNetoTable.articuloId)),
      ]);
      query.where(_remoteDb.clienteTable.id.equals(clienteId));

      return query.map((row) {
        final clienteDTO = row.readTable(_remoteDb.clienteTable);
        final articulo = row
            .readTable(_remoteDb.articuloTable)
            .toDomain(familia: null, subfamilia: null);

        final precioNetoDTO = row.readTable(_remoteDb.clientePrecioNetoTable);
        return precioNetoDTO.toDomain(
            divisaId: clienteDTO.divisaId,
            descripcion: getDescriptionInLocalLanguage(
              articulo: articulo,
            ));
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteGrupoNeto>> getClienteGrupoNetoById(
      {required String clienteId}) {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteGrupoNetoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteRappel>> getClienteRappelById(
      {required String clienteId}) {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteRappelTable)
        ..where((t) => t.clienteId.equals(clienteId))
        ..orderBy([
          (t) => OrderingTerm.desc(t.fechaDesDe),
        ]));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClientePagoPendiente>> getClientePagoPendienteById(
      {required String clienteId}) {
    try {
      final query = _remoteDb.select(_remoteDb.clientePagoPendienteTable).join([
        innerJoin(
            _remoteDb.clienteTable,
            _remoteDb.clienteTable.id
                .equalsExp(_remoteDb.clientePagoPendienteTable.clienteId)),
      ]);

      query.where(_remoteDb.clienteTable.id.equals(clienteId));

      return query.asyncMap((row) async {
        final clienteDTO = row.readTable(_remoteDb.clienteTable);

        final metodoDeCobroDTO =
            await (_remoteDb.select(_remoteDb.metodoDeCobroTable)
                  ..where((t) => t.id.equals(clienteDTO.metodoDeCobroId ?? '')))
                .getSingleOrNull();

        final pagosPendienteDTO =
            row.readTable(_remoteDb.clientePagoPendienteTable);
        return pagosPendienteDTO.toDomain(
            metodoDeCobro: metodoDeCobroDTO?.toDomain(),
            divisaId: clienteDTO.divisaId);
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteVentasMes>> getVentasMesById(
      {required String clienteId}) async {
    try {
      final query =
          await _remoteDb.customSelect(_getVentasMesCustomSelect(), variables: [
        Variable(clienteId),
      ], readsFrom: {
        _remoteDb.estadisticasClienteUsuarioVentasTable,
      }).get();

      return query.map((row) {
        return ClienteVentasMesDTO.fromJson(row.data).toDomain();
      }).toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteVentasArticulo>> getClienteVentasArticuloList(
      {required String clienteId, required String searchText}) async {
    try {
      final idioma = Intl.getCurrentLocale();
      final query = await _remoteDb
          .customSelect(_getVentasArticuloCustomSelect(searchText), variables: [
        Variable(idioma),
        Variable(clienteId),
      ], readsFrom: {
        _remoteDb.estadisticasClienteUsuarioVentasTable,
      }).get();

      return query.map((row) {
        return ClienteVentasArticuloDTO.fromJson(row.data).toDomain();
      }).toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteAdjunto>> getClienteAdjuntoById(
      {required String clienteId,
      required String provisionalToken,
      required bool test}) async {
    try {
      final query = {'CLIENTE_ID': clienteId};
      final clienteAdjuntoDTOList = await _remoteGetClienteAdjunto(
          requestUri: (test)
              ? Uri.http(
                  dotenv.get('URLTEST', fallback: 'localhost:3001'),
                  'api/v1/online/cliente/adjuntos',
                  query,
                )
              : Uri.https(
                  dotenv.get('URL', fallback: 'localhost:3001'),
                  'api/v1/online/cliente/adjuntos',
                  query,
                ),
          jsonDataSelector: (json) => json['data'] as List<dynamic>,
          provisionalToken: provisionalToken);

      return clienteAdjuntoDTOList.map((e) => e.toDomain()).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClienteAdjuntoDTO>> _remoteGetClienteAdjunto(
      {required Uri requestUri,
      required dynamic Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data) as List<dynamic>;
        return data.map((e) => ClienteAdjuntoDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<File?> getDocumentFile(
      {required AdjuntoParam adjuntoParam,
      required String provisionalToken,
      required bool test}) async {
    try {
      if (adjuntoParam.nombreArchivo != '') {
        final query = {'NOMBRE_ARCHIVO': adjuntoParam.nombreArchivo};
        final data = await _remoteGetAttachment(
            requestUri: (test)
                ? Uri.http(
                    dotenv.get('URLTEST', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/cliente/${adjuntoParam.id}',
                    query,
                  )
                : Uri.https(
                    dotenv.get('URL', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/cliente/${adjuntoParam.id}',
                    query,
                  ),
            provisionalToken: provisionalToken);

        try {
          final cahceDirectories = await getTemporaryDirectory();

          final File file = await File(
                  '${cahceDirectories.path}/cliente/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}')
              .create(recursive: true);
          final raf = file.openSync(mode: FileMode.write);
          raf.writeFromSync(data);
          await raf.close();
          return file;
        } catch (e) {
          throw AppException.createFileInCacheFailure(e.toString());
        }
      }

      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<File?> getRappelDocumentFile(
      {required AdjuntoParam adjuntoParam,
      required String provisionalToken,
      required bool test}) async {
    try {
      if (adjuntoParam.nombreArchivo != '') {
        final query = {'NOMBRE_ARCHIVO': adjuntoParam.nombreArchivo};
        final data = await _remoteGetAttachment(
            requestUri: (test)
                ? Uri.http(
                    dotenv.get('URLTEST', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/rappel/${adjuntoParam.id}',
                    query,
                  )
                : Uri.https(
                    dotenv.get('URL', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/rappel/${adjuntoParam.id}',
                    query,
                  ),
            provisionalToken: provisionalToken);

        try {
          final cahceDirectories = await getTemporaryDirectory();

          final File file = await File(
                  '${cahceDirectories.path}/rappel/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}')
              .create(recursive: true);
          final raf = file.openSync(mode: FileMode.write);
          raf.writeFromSync(data);
          await raf.close();
          return file;
        } catch (e) {
          throw AppException.createFileInCacheFailure(e.toString());
        }
      }

      return null;
    } catch (e) {
      rethrow;
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
        return response.data;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  String _getVentasMesCustomSelect() {
    String select = '''
SELECT mes MES
        , SUM(importe_anyo_0) IMPORTE_ANYO
        , SUM(importe_anyo_1) IMPORTE_ANYO_1
        , SUM(importe_anyo_2) IMPORTE_ANYO_2
        , SUM(importe_anyo_3) IMPORTE_ANYO_3
        , SUM(importe_anyo_4) IMPORTE_ANYO_4
FROM (  
  ''';
    for (var mes = 1; mes <= 12; mes++) {
      if (mes != 1) {
        select += ' UNION ALL ';
      }

      select += '''
        SELECT $mes mes
                , SUM(importe) importe_anyo_0
                , 0 importe_anyo_1
                , 0 importe_anyo_2
                , 0 importe_anyo_3
                , 0 importe_anyo_4
    FROM estadisticas_venta WHERE cliente_id = :clienteId
      AND anyo = strftime('%Y' ,DATE())
      AND mes = $mes
  UNION ALL
    SELECT $mes mes
                , 0 importe_anyo_0
                , SUM(importe) importe_anyo_1
                , 0 importe_anyo_2
                , 0 importe_anyo_3
                , 0 importe_anyo_4
    FROM estadisticas_venta WHERE cliente_id = :clienteId
      AND anyo = strftime('%Y' ,DATE()) - 1
      AND mes = $mes
  UNION ALL
    SELECT $mes mes
                , 0 importe_anyo_0
                , 0 importe_anyo_1
                , SUM(importe) importe_anyo_2
                , 0 importe_anyo_3
                , 0 importe_anyo_4
    FROM estadisticas_venta WHERE cliente_id = :clienteId
      AND anyo = strftime('%Y' ,DATE()) - 2
      AND mes = $mes
  UNION ALL
    SELECT $mes mes
                , 0 importe_anyo_0
                , 0 importe_anyo_1
                , 0 importe_anyo_2
                , SUM(importe) importe_anyo_3
                , 0 importe_anyo_4
    FROM estadisticas_venta WHERE cliente_id = :clienteId
      AND anyo = strftime('%Y' ,DATE()) - 3
      AND mes = $mes
   UNION ALL
      SELECT $mes mes
                , 0 importe_anyo_0
                , 0 importe_anyo_1
                , 0 importe_anyo_2
                , 0 importe_anyo_3
                , SUM(importe) importe_anyo_4
    FROM estadisticas_venta WHERE cliente_id = :clienteId
      AND anyo = strftime('%Y' ,DATE()) - 4
      AND mes = $mes
''';
    }
    select += '''
)
GROUP BY mes
''';

    return select;
  }

  String _getVentasArticuloCustomSelect(String searchText) {
    String select = '''
SELECT ARTICULO_ID
        , DESCRIPCION
        , GTIN_13_UNIDAD
        , GS1_128_SUBCAJA
        , GS1_128_CAJA
        , GS1_128_PALET
        , SUM(importe_anyo_0) IMPORTE_ANYO
        , SUM(importe_anyo_1) IMPORTE_ANYO_1
        , SUM(importe_anyo_2) IMPORTE_ANYO_2
        , SUM(importe_anyo_3) IMPORTE_ANYO_3
        , SUM(importe_anyo_4) IMPORTE_ANYO_4
        , SUM(unidades_anyo_0) CANTIDAD_ANYO
        , SUM(unidades_anyo_1) CANTIDAD_ANYO_1
        , SUM(unidades_anyo_2) CANTIDAD_ANYO_2
        , SUM(unidades_anyo_3) CANTIDAD_ANYO_3
        , SUM(unidades_anyo_4) CANTIDAD_ANYO_4
FROM (  
        SELECT ventas.ARTICULO_ID
                , case :idioma when 'es' then art.descripcion_ES
                  when 'de' then IFNULL(art.descripcion_DE,  art.descripcion_ES)
                  when 'en' then IFNULL(art.descripcion_EN,  art.descripcion_ES)
                  when 'fr' then IFNULL(art.descripcion_FR,  art.descripcion_ES)
                  when 'it' then IFNULL(art.descripcion_IT,  art.descripcion_ES)
                  else art.descripcion_ES end DESCRIPCION
                , art.gtin_13_unidad GTIN_13_UNIDAD
                , art.gs1_128_subcaja GS1_128_SUBCAJA
                , art.gs1_128_caja GS1_128_CAJA
                , art.gs1_128_palet GS1_128_PALET
                , ventas.importe importe_anyo_0
                , 0 importe_anyo_1
                , 0 importe_anyo_2
                , 0 importe_anyo_3
                , 0 importe_anyo_4
                , ventas.unidades unidades_anyo_0
                , 0 unidades_anyo_1
                , 0 unidades_anyo_2 
                , 0 unidades_anyo_3
                , 0 unidades_anyo_4              
    FROM estadisticas_venta ventas
      INNER JOIN articulos art ON ventas.articulo_id = art.articulo_id
    WHERE ventas.cliente_id = :clienteId
      AND ventas.anyo = strftime('%Y' ,DATE())
  UNION ALL
    SELECT ventas.ARTICULO_ID
                , case :idioma when 'es' then art.descripcion_ES
                  when 'de' then IFNULL(art.descripcion_DE,  art.descripcion_ES)
                  when 'en' then IFNULL(art.descripcion_EN,  art.descripcion_ES)
                  when 'fr' then IFNULL(art.descripcion_FR,  art.descripcion_ES)
                  when 'it' then IFNULL(art.descripcion_IT,  art.descripcion_ES)
                  else art.descripcion_ES end DESCRIPCION
                                , art.gtin_13_unidad GTIN_13_UNIDAD
                , art.gs1_128_subcaja GS1_128_SUBCAJA
                , art.gs1_128_caja GS1_128_CAJA
                , art.gs1_128_palet GS1_128_PALET
                , 0 importe_anyo_0
                , ventas.importe importe_anyo_1
                , 0 importe_anyo_2
                , 0 importe_anyo_3
                , 0 importe_anyo_4
                , 0 unidades_anyo_0
                , ventas.unidades unidades_anyo_1
                , 0 unidades_anyo_2
                , 0 unidades_anyo_3
                , 0 unidades_anyo_4   
    FROM estadisticas_venta ventas
    INNER JOIN articulos art ON ventas.articulo_id = art.articulo_id
    WHERE ventas.cliente_id = :clienteId
      AND ventas.anyo = strftime('%Y' ,DATE()) - 1
  UNION ALL
    SELECT ventas.ARTICULO_ID
                , case :idioma when 'es' then art.descripcion_ES
                  when 'de' then IFNULL(art.descripcion_DE,  art.descripcion_ES)
                  when 'en' then IFNULL(art.descripcion_EN,  art.descripcion_ES)
                  when 'fr' then IFNULL(art.descripcion_FR,  art.descripcion_ES)
                  when 'it' then IFNULL(art.descripcion_IT,  art.descripcion_ES)
                  else art.descripcion_ES end DESCRIPCION
                                , art.gtin_13_unidad GTIN_13_UNIDAD
                , art.gs1_128_subcaja GS1_128_SUBCAJA
                , art.gs1_128_caja GS1_128_CAJA
                , art.gs1_128_palet GS1_128_PALET
                , 0 importe_anyo_0
                , 0 importe_anyo_1
                , ventas.importe importe_anyo_2
                , 0 importe_anyo_3
                , 0 importe_anyo_4
                , 0 unidades_anyo_0
                , 0 unidades_anyo_1
                , ventas.unidades unidades_anyo_2
                , 0 unidades_anyo_3
                , 0 unidades_anyo_4   
    FROM estadisticas_venta ventas
    INNER JOIN articulos art ON ventas.articulo_id = art.articulo_id
    WHERE ventas.cliente_id = :clienteId
    AND ventas.anyo = strftime('%Y' ,DATE()) - 2
  UNION ALL
    SELECT ventas.ARTICULO_ID
                , case :idioma when 'es' then art.descripcion_ES
                  when 'de' then IFNULL(art.descripcion_DE,  art.descripcion_ES)
                  when 'en' then IFNULL(art.descripcion_EN,  art.descripcion_ES)
                  when 'fr' then IFNULL(art.descripcion_FR,  art.descripcion_ES)
                  when 'it' then IFNULL(art.descripcion_IT,  art.descripcion_ES)
                  else art.descripcion_ES end DESCRIPCION
                                , art.gtin_13_unidad GTIN_13_UNIDAD
                , art.gs1_128_subcaja GS1_128_SUBCAJA
                , art.gs1_128_caja GS1_128_CAJA
                , art.gs1_128_palet GS1_128_PALET
                , 0 importe_anyo_0
                , 0 importe_anyo_1
                , 0 importe_anyo_2
                , ventas.importe importe_anyo_3
                , 0 importe_anyo_4
                , 0 unidades_anyo_0
                , 0 unidades_anyo_1
                , 0 unidades_anyo_2
                , ventas.unidades unidades_anyo_3
                , 0 unidades_anyo_4   
    FROM estadisticas_venta ventas
    INNER JOIN articulos art ON ventas.articulo_id = art.articulo_id
    WHERE ventas.cliente_id = :clienteId
    AND ventas.anyo = strftime('%Y' ,DATE()) - 3

  UNION ALL
    SELECT ventas.ARTICULO_ID
                , case :idioma when 'es' then art.descripcion_ES
                  when 'de' then IFNULL(art.descripcion_DE,  art.descripcion_ES)
                  when 'en' then IFNULL(art.descripcion_EN,  art.descripcion_ES)
                  when 'fr' then IFNULL(art.descripcion_FR,  art.descripcion_ES)
                  when 'it' then IFNULL(art.descripcion_IT,  art.descripcion_ES)
                  else art.descripcion_ES end DESCRIPCION
                                , art.gtin_13_unidad GTIN_13_UNIDAD
                , art.gs1_128_subcaja GS1_128_SUBCAJA
                , art.gs1_128_caja GS1_128_CAJA
                , art.gs1_128_palet GS1_128_PALET
                , 0 importe_anyo_0
                , 0 importe_anyo_1
                , 0 importe_anyo_2
                , 0 importe_anyo_3
                , ventas.importe importe_anyo_4
                , 0 unidades_anyo_0
                , 0 unidades_anyo_1
                , 0 unidades_anyo_2
                , 0 unidades_anyo_3
                , ventas.unidades unidades_anyo_4   
    FROM estadisticas_venta ventas
    INNER JOIN articulos art ON ventas.articulo_id = art.articulo_id
    WHERE ventas.cliente_id = :clienteId
    AND ventas.anyo = strftime('%Y' ,DATE()) - 4
  )
WHERE ARTICULO_ID IS NOT NULL AND (ARTICULO_ID LIKE '%$searchText%' 
                                    OR DESCRIPCION LIKE '%$searchText%'
                                    OR GTIN_13_UNIDAD LIKE '%$searchText%'
                                    OR GS1_128_SUBCAJA LIKE '%$searchText%'
                                    OR GS1_128_CAJA LIKE '%$searchText%'
                                    OR GS1_128_PALET LIKE '%$searchText%')
GROUP BY ARTICULO_ID, DESCRIPCION
''';

    return select;
  }

  Future<ClienteDireccion?> getClienteDireccionByDireccionId(
      {required String clienteId, required String? direccionId}) async {
    try {
      if (direccionId != null) {
        final query = (_remoteDb.select(_remoteDb.clienteDireccionTable)
          ..where((t) =>
              t.clienteId.equals(clienteId) &
              t.direccionId.equals(direccionId)));

        return query.asyncMap((row) async {
          final paisDTO = await (_remoteDb.select(_remoteDb.paisTable)
                ..where((t) => t.id.equals(row.paisId ?? '')))
              .getSingleOrNull();
          return row.toDomain(
            pais: paisDTO?.toDomain(),
          );
        }).getSingle();
      }
      return null;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<EstadisticasUltimosPrecios>> getClienteUltimosPreciosList(
      {required String clienteId,
      required int page,
      required String searchText}) async {
    try {
      final query =
          _remoteDb.select(_remoteDb.estadisticasUltimosPreciosTable).join([
        innerJoin(
            _remoteDb.articuloTable,
            _remoteDb.articuloTable.id.equalsExp(
                _remoteDb.estadisticasUltimosPreciosTable.articuloId)),
      ]);
      if (searchText != '') {
        query.where((_remoteDb.estadisticasUltimosPreciosTable.clienteId
                .equals(clienteId) &
            (_remoteDb.articuloTable.id.contains(searchText) |
                _filtrarArticuloPorDescripcion(searchText))));
      } else {
        query.where(_remoteDb.estadisticasUltimosPreciosTable.clienteId
            .equals(clienteId));
      }

      query.limit(pageSize, offset: page * pageSize);

      query.orderBy(
        [OrderingTerm.desc(_remoteDb.estadisticasUltimosPreciosTable.fecha)],
      );

      return query.asyncMap((row) async {
        final lastPriceArticuloDTO =
            row.readTable(_remoteDb.estadisticasUltimosPreciosTable);
        final articuloDTO = row.readTableOrNull(_remoteDb.articuloTable);
        return lastPriceArticuloDTO.toDomain(
            descripcion: getDescriptionInLocalLanguage(
                articulo:
                    articuloDTO!.toDomain(familia: null, subfamilia: null)));
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<int> getClienteUltimosPreciosCountList(
      {required String clienteId, required String searchText}) async {
    try {
      final countExp =
          _remoteDb.estadisticasUltimosPreciosTable.clienteId.count();

      final query =
          _remoteDb.selectOnly(_remoteDb.estadisticasUltimosPreciosTable).join([
        leftOuterJoin(
            _remoteDb.articuloTable,
            _remoteDb.articuloTable.id.equalsExp(
                _remoteDb.estadisticasUltimosPreciosTable.articuloId)),
      ]);

      if (searchText != '') {
        query.where((_remoteDb.estadisticasUltimosPreciosTable.clienteId
                .equals(clienteId)) &
            (_remoteDb.articuloTable.id.contains(searchText) |
                _filtrarArticuloPorDescripcion(searchText)));
      } else {
        query.where(_remoteDb.estadisticasUltimosPreciosTable.clienteId
            .equals(clienteId));
      }

      query.addColumns([countExp]);

      final count = await query.map((row) => row.read(countExp)).getSingle();
      return count ?? 0;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  String getDescriptionInLocalLanguage({required Articulo articulo}) {
    final currentLocale = Intl.getCurrentLocale();
    if (currentLocale == 'es') {
    } else if (currentLocale == 'en' && articulo.descripcionEN != null) {
      return articulo.descripcionEN!;
    } else if (currentLocale == 'fr' && articulo.descripcionFR != null) {
      return articulo.descripcionFR!;
    } else if (currentLocale == 'it' && articulo.descripcionIT != null) {
      return articulo.descripcionIT!;
    } else if (currentLocale == 'pt' && articulo.descripcionPT != null) {
      return articulo.descripcionPT!;
    }
    //else if (currentLocale == 'de' && descripcionDE != null) {
    //   return descripcionDE!;
    // } else if (currentLocale == 'ca' && descripcionCA != null) {
    //   return descripcionCA!;
    // } else if (currentLocale == 'gb' && descripcionGB != null) {
    //   return descripcionGB!;
    // } else if (currentLocale == 'hu' && descripcionHU != null) {
    //   return descripcionHU!;
    // }
    //else if (currentLocale == 'nl' && descripcionNL != null) {
    //   return descripcionNL!;
    // } else if (currentLocale == 'pl' && descripcionPL != null) {
    //   return descripcionPL!;
    // }
    //else if (currentLocale == 'ro' && descripcionRO != null) {
    //   return descripcionRO!;
    // } else if (currentLocale == 'ru' && descripcionRU != null) {
    //   return descripcionRU!;
    // } else if (currentLocale == 'cn' && descripcionCN != null) {
    //   return descripcionCN!;
    // } else if (currentLocale == 'el' && descripcionEL != null) {
    //   return descripcionEL!;
    // }

    return articulo.descripcionES;
  }

  Future<DateTime> getLastSyncDate() async {
    try {
      final lastSyncDTO =
          await _localDb.select(_localDb.syncDateTimeTable).getSingle();
      return lastSyncDTO.clienteUltimaSync;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Visita>> getVisitasByClienteId(
      {required String clienteId}) async {
    try {
      final List<Visita> visitas = [];
      final visitasList = await _getVisitasById(clienteId: clienteId);
      final visitasLocalList = await _getVisitasLocalById(clienteId: clienteId);

      visitas.addAll(visitasList);

      visitas.addAll(visitasLocalList);

      return visitas;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<Visita>> _getVisitasById({required String clienteId}) async {
    try {
      final query = _remoteDb.select(_remoteDb.visitaTable).join([
        innerJoin(
            _remoteDb.clienteTable,
            _remoteDb.clienteTable.id
                .equalsExp(_remoteDb.visitaTable.clienteId))
      ]);

      query.where(_remoteDb.visitaTable.clienteId.equals(clienteId));

      return query.map((row) {
        final visitaDTO = row.readTable(_remoteDb.visitaTable);
        final clienteDto = row.readTable(_remoteDb.clienteTable);
        return visitaDTO.toDomain(nombreCliente: clienteDto.nombreCliente);
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<Visita>> _getVisitasLocalById({required String clienteId}) async {
    try {
      final visitasLocalDto = await (_localDb.select(_localDb.visitaLocalTable)
            ..where((tbl) => tbl.clienteId.equals(clienteId)))
          .get();

      final clienteDto = await (_remoteDb.select(_remoteDb.clienteTable)
            ..where((tbl) => tbl.id.equals(clienteId)))
          .getSingle();

      return visitasLocalDto
          .map((e) => e.toDomain(nombreCliente: clienteDto.nombreCliente))
          .toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Expression<bool> _filtrarArticuloPorDescripcion(String searchText) {
    final currentLocale = Intl.getCurrentLocale();

    if (currentLocale == 'es') {
      return _remoteDb.articuloTable.descripcionES.contains(searchText);
    } else if (currentLocale == 'en') {
      return _remoteDb.articuloTable.descripcionEN.contains(searchText);
    } else if (currentLocale == 'de') {
      return _remoteDb.articuloTable.descripcionDE.contains(searchText);
    } else if (currentLocale == 'fr') {
      return _remoteDb.articuloTable.descripcionFR.contains(searchText);
    } else if (currentLocale == 'it') {
      return _remoteDb.articuloTable.descripcionIT.contains(searchText);
    } else {
      return _remoteDb.articuloTable.descripcionES.contains(searchText);
    }
  }

  Future<List<ClienteContacto>> _getClienteContactoLocalList(
      String clienteId) async {
    try {
      final query = (_localDb.select(_localDb.clienteContactoLocalTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.map((row) => row.toDomain()).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteContacto>> _getClienteContactoSyncList(
      String clienteId, List<ClienteContacto> clienteContactoLocalList) async {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteContactoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.map((row) {
        for (var i = 0; i < clienteContactoLocalList.length; i++) {
          if (clienteContactoLocalList[i].contactoId == row.contactoId &&
              !clienteContactoLocalList[i].tratado) {
            return row.toDomain(
              enviado: clienteContactoLocalList[i].enviado,
              tratado: clienteContactoLocalList[i].tratado,
            );
          }
        }
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteContacto> _getClienteContactoLocalById(
      String clienteContactoId) async {
    try {
      final query = (_localDb.select(_localDb.clienteContactoLocalTable)
        ..where((t) => t.contactoId.equals(clienteContactoId)));

      return query.map((row) => row.toDomain()).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteContacto> _getClienteContactoSyncById(
      String clienteContactoId) async {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteContactoTable)
        ..where((t) => t.contactoId.equals(clienteContactoId)));

      return query.map((row) => row.toDomain()).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> _insertClienteContactoInLocalDB(
      ClienteContactoLocalDTO clienteContactoLocalDTO) async {
    try {
      await _localDb
          .into(_localDb.clienteContactoLocalTable)
          .insertOnConflictUpdate(clienteContactoLocalDTO);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<ClienteContactoLocalDTO> _remoteUpsertClienteContacto(
    ClienteContactoLocalDTO clienteContactoLocalDTO,
  ) async {
    try {
      final clienteContactoLocalToJson = clienteContactoLocalDTO.toJson();
      print(jsonEncode(clienteContactoLocalToJson));

      final requestUri = (usuario.test)
          ? Uri.http(
              dotenv.get('URLTEST', fallback: 'localhost:3001'),
              'api/v1/online/clientes/${clienteContactoLocalDTO.clienteId}/contacto',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/clientes/${clienteContactoLocalDTO.clienteId}/contacto',
            );

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
        ),
        data: jsonEncode(clienteContactoLocalToJson),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return ClienteContactoLocalDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> _updateClienteContactoInDB(
      ClienteContactoLocalDTO clienteContactoLocalDTO) async {
    try {
      await _localDb
          .update(_localDb.clienteContactoLocalTable)
          .replace(clienteContactoLocalDTO);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  bool _existContactoInSync(ClienteContacto clienteContactoLocal,
      List<ClienteContacto> clienteContactoSyncList) {
    bool existInSync = false;

    for (var i = 0; i < clienteContactoSyncList.length; i++) {
      if (clienteContactoLocal.contactoId ==
          clienteContactoSyncList[i].contactoId) {
        existInSync = true;
      }
    }
    return existInSync;
  }

  Future<List<ClienteDireccion>> _getClienteDireccionLocalList(
      String clienteId) async {
    try {
      final query = (_localDb.select(_localDb.clienteDireccionLocalTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return await query.asyncMap((row) async {
        final paisDTO = await (_remoteDb.select(_remoteDb.paisTable)
              ..where((t) => t.id.equals(row.paisId ?? '')))
            .getSingleOrNull();
        return row.toDomain(pais: paisDTO?.toDomain());
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteDireccion>> _getClienteDireccionSyncList(String clienteId,
      List<ClienteDireccion> clienteDireccionLocalList) async {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteDireccionTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return await query.asyncMap((row) async {
        final paisDTO = await (_remoteDb.select(_remoteDb.paisTable)
              ..where((t) => t.id.equals(row.paisId ?? '')))
            .getSingleOrNull();
        for (var i = 0; i < clienteDireccionLocalList.length; i++) {
          if (clienteDireccionLocalList[i].direccionId == row.direccionId &&
              !clienteDireccionLocalList[i].tratada) {
            return row.toDomain(
              pais: paisDTO?.toDomain(),
              enviada: clienteDireccionLocalList[i].enviada,
              tratada: clienteDireccionLocalList[i].tratada,
            );
          }
        }
        return row.toDomain(pais: paisDTO?.toDomain());
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteDireccion> _getClienteDireccionLocalById(
      String clienteId, String clienteDireccionId) async {
    try {
      final query = (_localDb.select(_localDb.clienteDireccionLocalTable)
        ..where((t) =>
            t.direccionId.equals(clienteDireccionId) &
            t.clienteId.equals(clienteId)));

      return await query.asyncMap((row) async {
        final paisDTO = await (_remoteDb.select(_remoteDb.paisTable)
              ..where((t) => t.id.equals(row.paisId ?? '')))
            .getSingleOrNull();
        return row.toDomain(pais: paisDTO?.toDomain());
      }).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteDireccion> _getClienteDireccionSyncById(
      String clienteId, String clienteDireccionId) async {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteDireccionTable)
        ..where((t) =>
            t.direccionId.equals(clienteDireccionId) &
            t.clienteId.equals(clienteId)));

      return await query.asyncMap((row) async {
        final paisDTO = await (_remoteDb.select(_remoteDb.paisTable)
              ..where((t) => t.id.equals(row.paisId ?? '')))
            .getSingleOrNull();
        return row.toDomain(pais: paisDTO?.toDomain());
      }).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> _insertClienteDireccionInLocalDB(
      ClienteDireccionLocalDTO clienteDireccionLocalDTO) async {
    try {
      await _localDb
          .into(_localDb.clienteDireccionLocalTable)
          .insertOnConflictUpdate(clienteDireccionLocalDTO);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<ClienteDireccionLocalDTO> _remoteUpsertClienteDireccion(
    ClienteDireccionLocalDTO clienteDireccionLocalDTO,
  ) async {
    try {
      final clienteDireccionLocalToJson = clienteDireccionLocalDTO.toJson();
      print(jsonEncode(clienteDireccionLocalToJson));

      final requestUri = (usuario.test)
          ? Uri.http(
              dotenv.get('URLTEST', fallback: 'localhost:3001'),
              'api/v1/online/clientes/${clienteDireccionLocalDTO.clienteId}/direccion',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/clientes/${clienteDireccionLocalDTO.clienteId}/direccion',
            );

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
        ),
        data: jsonEncode(clienteDireccionLocalToJson),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return ClienteDireccionLocalDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> _updateClienteDireccionInDB(
      ClienteDireccionLocalDTO clienteDireccionLocalDTO) async {
    try {
      await _localDb
          .update(_localDb.clienteDireccionLocalTable)
          .replace(clienteDireccionLocalDTO);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  bool _existDireccionInSync(ClienteDireccion clienteDireccionLocal,
      List<ClienteDireccion> clienteDireccionSyncList) {
    bool existInSync = false;

    for (var i = 0; i < clienteDireccionSyncList.length; i++) {
      if (clienteDireccionLocal.direccionId ==
          clienteDireccionSyncList[i].direccionId) {
        existInSync = true;
      }
    }
    return existInSync;
  }

  Future<Pais?> getPaisCliente({required String clienteId}) async {
    final clienteDto = await (_remoteDb.select(_remoteDb.clienteTable)
          ..where((tbl) => tbl.id.equals(clienteId)))
        .getSingle();

    final paisDto = await (_remoteDb.select(_remoteDb.paisTable)
          ..where((tbl) => tbl.id.equalsNullable(clienteDto.paisFiscalId)))
        .getSingleOrNull();

    return paisDto?.toDomain();
  }

  Future<List<Pais>> getPaisList({required String searchText}) async {
    final query = _remoteDb.select(_remoteDb.paisTable);

    if (searchText != '') {
      query.where((tbl) =>
          tbl.id.contains(searchText) | _filtrarPaisPorDescripcion(searchText));
    }

    query.orderBy(
      [(tbl) => OrderingTerm.asc(_orderByPaisPorDescripcion())],
    );

    final paisDtoList = await query.get();

    return paisDtoList.map((e) => e.toDomain()).toList();
  }

  Expression<bool> _filtrarPaisPorDescripcion(String searchText) {
    final currentLocale = Intl.getCurrentLocale();

    if (currentLocale == 'es') {
      return _remoteDb.paisTable.descripcionES.contains(searchText);
    } else if (currentLocale == 'en') {
      return _remoteDb.paisTable.descripcionEN.contains(searchText);
    } else if (currentLocale == 'de') {
      return _remoteDb.paisTable.descripcionDE.contains(searchText);
    } else if (currentLocale == 'fr') {
      return _remoteDb.paisTable.descripcionFR.contains(searchText);
    } else if (currentLocale == 'it') {
      return _remoteDb.paisTable.descripcionIT.contains(searchText);
    } else {
      return _remoteDb.paisTable.descripcionES.contains(searchText);
    }
  }

  Expression<Object> _orderByPaisPorDescripcion() {
    final currentLocale = Intl.getCurrentLocale();

    if (currentLocale == 'es') {
      return _remoteDb.paisTable.descripcionES;
    } else if (currentLocale == 'en') {
      return _remoteDb.paisTable.descripcionEN;
    } else if (currentLocale == 'de') {
      return _remoteDb.paisTable.descripcionDE;
    } else if (currentLocale == 'fr') {
      return _remoteDb.paisTable.descripcionFR;
    } else if (currentLocale == 'it') {
      return _remoteDb.paisTable.descripcionIT;
    } else {
      return _remoteDb.paisTable.descripcionES;
    }
  }
}
