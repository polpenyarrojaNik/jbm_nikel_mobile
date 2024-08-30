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
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_contacto_imp.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_adjunto_dto.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/domain/usuario.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../../../core/domain/adjunto_param.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/local_database.dart';
import '../../articulos/domain/articulo.dart';
import '../../devoluciones/domain/devolucion.dart';
import '../../devoluciones/domain/devolucion_linea.dart';
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
import '../domain/cliente_direccion_imp.dart';
import '../domain/cliente_grupo_neto.dart';
import '../domain/cliente_imp_param.dart';
import '../domain/cliente_pago_pendiente.dart';
import '../domain/cliente_precio_neto.dart';
import '../domain/cliente_rappel.dart';
import '../domain/cliente_ventas_articulo.dart';
import '../domain/cliente_ventas_mes.dart';
import 'cliente_contacto_dto.dart';
import 'cliente_contacto_imp_dto.dart';
import 'cliente_direccion_dto.dart';
import 'cliente_direccion_imp_dto.dart';
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

  return clienteRepository.getClienteDireccionesListById(
    clienteId: clienteId,
    searchText: ref.watch(customerAddressSearchQueryStateProvider),
  );
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

final clienteDevolucionesProvider = FutureProvider.autoDispose
    .family<List<Devolucion>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getDevolucionByCliente(clienteId: clienteId);
});

final clienteDevolucionesLineaProvider = FutureProvider.autoDispose
    .family<List<DevolucionLinea>, String>((ref, devolucionId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getDevolucionLineaList(devolucionId: devolucionId);
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
  return clienteRepository._getPaisCliente(clienteId: clienteId);
});

final clienteContactoImpListInSyncByClienteProvider = FutureProvider.autoDispose
    .family<List<ClienteContactoImp>, ClienteImpParam>((ref, clienteImpParam) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository
      .getClienteContactosImpListInSyncByCliente(clienteImpParam);
});

final clienteDireccionImpListInSyncByClienteProvider = FutureProvider
    .autoDispose
    .family<List<ClienteDireccionImp>, ClienteImpParam>((ref, clienteImpParam) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository
      .getClienteDireccionesImpListInSyncByCliente(clienteImpParam);
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
        final busqueda = searchText.toUpperCase().split(' ');
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
        ClienteDireccion? clienteDireccionPredeterminada;

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

        final direccionesPredeterminada =
            await getClienteDireccionesListById(clienteId: clienteDTO.id);

        for (var i = 0; i < direccionesPredeterminada.length; i++) {
          if (direccionesPredeterminada[i].predeterminada) {
            clienteDireccionPredeterminada = direccionesPredeterminada[i];
            break;
          }
        }

        return clienteDTO.toDomain(
          paisFiscal: paisDTO?.toDomain(),
          divisa: divisaDTO?.toDomain(),
          metodoDeCobro: metodoDeCobroDTO?.toDomain(),
          plazoDeCobro: plazoDeCobroDTO?.toDomain(),
          clienteEstadoPotencial: clienteEstadoPotencialDTO?.toDomain(),
          clienteTipoPotencial: clienteTipoPotencialDTO?.toDomain(),
          clienteDireccionPredeterminada: clienteDireccionPredeterminada,
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
        final busqueda = searchText.toUpperCase().split(' ');
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

      return query.asyncMap((row) async {
        ClienteDireccion? clienteDireccionPredeterminada;
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

        final direccionesPredeterminada =
            await getClienteDireccionesListById(clienteId: clienteDTO.id);

        for (var i = 0; i < direccionesPredeterminada.length; i++) {
          if (direccionesPredeterminada[i].predeterminada) {
            clienteDireccionPredeterminada = direccionesPredeterminada[i];
            break;
          }
        }

        return clienteDTO.toDomain(
          paisFiscal: paisDTO?.toDomain(),
          divisa: divisaDTO?.toDomain(),
          metodoDeCobro: metodoDeCobroDTO?.toDomain(),
          plazoDeCobro: plazoDeCobroDTO?.toDomain(),
          clienteEstadoPotencial: clienteEstadoPotencialDTO?.toDomain(),
          clienteTipoPotencial: clienteTipoPotencialDTO?.toDomain(),
          clienteDireccionPredeterminada: clienteDireccionPredeterminada,
        );
      }).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
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
                  dotenv.get('URL', fallback: 'localhost:3001'),
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
                    dotenv.get('URL', fallback: 'localhost:3001'),
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
                    dotenv.get('URL', fallback: 'localhost:3001'),
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
                _filtrarArticuloPorDescripcion(searchText.toUpperCase()))));
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
                _filtrarArticuloPorDescripcion(searchText.toUpperCase())));
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

  Future<List<Devolucion>> getDevolucionByCliente({required String clienteId}) {
    try {
      final query = _remoteDb.select(_remoteDb.devolucionTable).join([
        innerJoin(
            _remoteDb.clienteTable,
            _remoteDb.clienteTable.id
                .equalsExp(_remoteDb.devolucionTable.clienteId)),
        leftOuterJoin(
            _remoteDb.devolucionEstadoTable,
            _remoteDb.devolucionEstadoTable.id
                .equalsExp(_remoteDb.devolucionTable.devolucionEstadoId)),
        leftOuterJoin(_remoteDb.paisTable,
            _remoteDb.paisTable.id.equalsExp(_remoteDb.devolucionTable.paisId))
      ]);

      query.where(_remoteDb.devolucionTable.clienteId.equals(clienteId));

      return query.map((row) {
        final devolucionDTO = row.readTable(_remoteDb.devolucionTable);
        final devolucionEstadoDTO =
            row.readTable(_remoteDb.devolucionEstadoTable);
        final paisDTO = row.readTableOrNull(_remoteDb.paisTable);

        return devolucionDTO.toDomain(
            devolucionEstado: devolucionEstadoDTO.toDomain(),
            pais: paisDTO?.toDomain());
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<DevolucionLinea>> getDevolucionLineaList(
      {required String devolucionId}) async {
    try {
      final query = _remoteDb.select(_remoteDb.devolucionLineaTable).join([
        innerJoin(
            _remoteDb.devolucionTable,
            _remoteDb.devolucionTable.id
                .equalsExp(_remoteDb.devolucionLineaTable.devolucionId)),
        leftOuterJoin(
            _remoteDb.devolucionEstadoTable,
            _remoteDb.devolucionEstadoTable.id
                .equalsExp(_remoteDb.devolucionLineaTable.devolucionEstadoId)),
        leftOuterJoin(
            _remoteDb.devolucionMotivoTable,
            _remoteDb.devolucionMotivoTable.id
                .equalsExp(_remoteDb.devolucionLineaTable.devolucionMotivoId))
      ]);

      query.where(
          _remoteDb.devolucionLineaTable.devolucionId.equals(devolucionId));

      return query.asyncMap((row) async {
        final devolucionMotivoDTO =
            row.readTableOrNull(_remoteDb.devolucionMotivoTable);
        final devolucionEstadoDTO =
            row.readTableOrNull(_remoteDb.devolucionEstadoTable);

        final devolucionLineaDTO =
            row.readTable(_remoteDb.devolucionLineaTable);
        return devolucionLineaDTO.toDomain(
          devolucionMotivoDTO?.toDomain(),
          devolucionEstadoDTO?.toDomain(),
        );
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteContacto>> getClienteContactosListById(
      {required String clienteId}) async {
    final List<ClienteContacto> clienteContactoList = [];
    try {
      final clienteContactoImpList =
          await _getClienteContactoImpList(clienteId);

      final clienteContactoSyncList =
          await _getClienteContactoSyncList(clienteId, clienteContactoImpList);

      clienteContactoList.addAll(clienteContactoSyncList);

      for (var i = 0; i < clienteContactoImpList.length; i++) {
        if (clienteContactoImpList[i].contactoId == null) {
          clienteContactoList.add(clienteContactoImpList[i]);
        }
      }

      return clienteContactoList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteContacto> getClienteContactoSyncById(
      String clienteContactoId) async {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteContactoTable)
        ..where((t) => t.contactoId.equals(clienteContactoId)));

      return query.map((row) => row.toDomain()).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteContacto> getClienteContactoImpById(
      String contactoImpGuid) async {
    try {
      final query = (_localDb.select(_localDb.clienteContactoImpTable)
        ..where((t) => t.id.equals(contactoImpGuid)));

      final clienteConatctoImpDto = await query.getSingle();

      return ClienteContactoDTO.fromContactoImp(clienteConatctoImpDto).toDomain(
        enviado: false,
        tratado: false,
        contactoImpGuid: clienteConatctoImpDto.id,
      );
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteContacto> upsertClienteContactoImp(
      ClienteContactoImp upsertClienteContactoImp, bool isNew) async {
    try {
      final clienteContactoImpDto =
          ClienteContactoImpDTO.fromDomain(upsertClienteContactoImp);
      await _insertClienteContactoImpInLocalDB(clienteContactoImpDto);

      final clienteContactoImpDtoEnviado =
          await _remoteUpsertClienteContactoImp(clienteContactoImpDto);

      if (!isNew) {
        await _deleteClienteContactoImpInLocalDB(
            clienteContactoImpDtoEnviado.id);
      } else {
        await _updateContactoImpInLocalDB(clienteContactoImpDtoEnviado);
      }

      return ClienteContactoDTO.fromContactoImp(clienteContactoImpDtoEnviado)
          .toDomain();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteClienteContacto(String clienteId,
      {String? contactoId, String? contactoImpGuid}) async {
    try {
      if (contactoImpGuid != null) {
        await _deleteClienteContactoImpInLocalDB(contactoImpGuid);
      } else {
        await _deleteClienteContactoTratado(clienteId, contactoId!);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClienteContactoImp>> getClienteContactosImpListInSyncByCliente(
      ClienteImpParam clienteContactoImpParam) async {
    try {
      try {
        final requestUri = (usuario.test)
            ? Uri.http(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/clientes/${clienteContactoImpParam.clienteId}/contactos/${clienteContactoImpParam.id!}',
              )
            : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/clientes/${clienteContactoImpParam.clienteId}/contactos/${clienteContactoImpParam.id!}',
              );

        final response = await _dio.getUri(
          requestUri,
          options: Options(
            headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
          ),
        );
        if (response.statusCode == 200) {
          final jsonData = response.data['data'] as List<dynamic>;

          final clienteContactoDTOList =
              jsonData.map((e) => ClienteContactoImpDTO.fromJson(e));

          return clienteContactoDTOList.map((e) => e.toDomain()).toList();
        } else {
          throw AppException.restApiFailure(
              response.statusCode ?? 400, response.statusMessage ?? '');
        }
      } catch (e) {
        throw getApiError(e);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClienteContacto>> _getClienteContactoSyncList(
      String clienteId, List<ClienteContacto> clienteContactoImpList) async {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteContactoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.map((row) {
        for (var i = 0; i < clienteContactoImpList.length; i++) {
          final clienteContactoImp = clienteContactoImpList[i];
          if (!clienteContactoImp.enviado &&
              row.clienteId == clienteContactoImp.clienteId &&
              row.contactoId == clienteContactoImp.contactoId) {
            return row.toDomain(
                enviado: clienteContactoImp.enviado,
                tratado: clienteContactoImp.tratado,
                contactoImpGuid: clienteContactoImp.contactoImpGuid);
          }
        }

        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteContacto>> _getClienteContactoImpList(
      String clienteId) async {
    try {
      final query = (_localDb.select(_localDb.clienteContactoImpTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return await query
          .map((row) => ClienteContacto.fromClienteContactoImp(row.toDomain()))
          .get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> _insertClienteContactoImpInLocalDB(
      ClienteContactoImpDTO clienteContactoImpDTO) async {
    try {
      await _localDb
          .into(_localDb.clienteContactoImpTable)
          .insertOnConflictUpdate(clienteContactoImpDTO);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<ClienteContactoImpDTO> _remoteUpsertClienteContactoImp(
    ClienteContactoImpDTO clienteContactoImpDTO,
  ) async {
    try {
      final clienteContactoImpToJson = clienteContactoImpDTO.toJson();
      print(jsonEncode(clienteContactoImpToJson));

      final requestUri = (usuario.test)
          ? Uri.http(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/clientes/${clienteContactoImpDTO.clienteId}/contacto',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/clientes/${clienteContactoImpDTO.clienteId}/contacto',
            );

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
        ),
        data: jsonEncode(clienteContactoImpToJson),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return ClienteContactoImpDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> _updateContactoImpInLocalDB(
      ClienteContactoImpDTO clienteContactoImpDTO) async {
    try {
      await _localDb
          .update(_localDb.clienteContactoImpTable)
          .replace(clienteContactoImpDTO);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<void> _deleteClienteContactoTratado(
      String clienteId, String clienteContactoId) async {
    try {
      final deletedContactoImpDto = ClienteContactoImpDTO(
        id: const Uuid().v4(),
        fecha: DateTime.now().toUtc().toLocal(),
        usuarioId: usuario.id,
        clienteId: clienteId,
        contactoId: clienteContactoId,
        enviado: 'N',
        borrar: 'S',
      );

      await _insertClienteContactoImpInLocalDB(deletedContactoImpDto);
      final contactoImpEnviado =
          await _remoteUpsertClienteContactoImp(deletedContactoImpDto);
      if (contactoImpEnviado.enviado == 'S') {
        await _deleteClienteContactoImpInLocalDB(deletedContactoImpDto.id);
      } else {
        await _updateContactoImpInLocalDB(deletedContactoImpDto);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _deleteClienteContactoImpInLocalDB(
      String contactoGuidImp) async {
    try {
      await (_localDb.delete(_localDb.clienteContactoImpTable)
            ..where((tbl) => tbl.id.equals(contactoGuidImp)))
          .go();
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<List<ClienteDireccion>> getClienteDireccionesListById(
      {required String clienteId, String? searchText}) async {
    final List<ClienteDireccion> clienteDireccionList = [];
    try {
      final clienteDireccionImpList =
          await _getClienteDireccionImpList(clienteId, searchText);

      final clienteDireccionSyncList = await _getClienteDireccionSyncList(
          clienteId, clienteDireccionImpList, searchText);

      clienteDireccionList.addAll(clienteDireccionSyncList);

      for (var i = 0; i < clienteDireccionImpList.length; i++) {
        if (clienteDireccionImpList[i].direccionId == null) {
          clienteDireccionList.add(clienteDireccionImpList[i]);
        }
      }

      return clienteDireccionList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteDireccion> getClienteDireccionSyncById(
      String clienteId, String clienteDireccionId) async {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteDireccionTable)
        ..where((t) =>
            t.clienteId.equals(clienteId) &
            t.direccionId.equals(clienteDireccionId)));

      return await query.asyncMap((row) async {
        final pais = await _getPaisCliente(clienteId: clienteId);
        return row.toDomain(pais);
      }).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteDireccion> getClienteDireccionImpById(
      String direccionImpGuid) async {
    try {
      final query = (_localDb.select(_localDb.clienteDireccionImpTable)
        ..where((t) => t.id.equals(direccionImpGuid)));

      final clienteDireccionImpDto = await query.getSingle();

      final pais =
          await _getPaisCliente(clienteId: clienteDireccionImpDto.clienteId);

      return ClienteDireccionDTO.fromDireccionImp(clienteDireccionImpDto)
          .toDomain(
        pais,
        enviada: false,
        tratada: false,
        direccionImpGuid: clienteDireccionImpDto.id,
      );
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<ClienteDireccion> upsertClienteDireccionImp(
      ClienteDireccionImp upsertClienteDireccionImp, bool isNew) async {
    try {
      final clienteDireccionImpDto =
          ClienteDireccionImpDTO.fromDomain(upsertClienteDireccionImp);
      await _insertClienteDireccionImpInLocalDB(clienteDireccionImpDto);

      final clienteDireccionImpDtoEnviada =
          await _remoteUpsertClienteDireccionImp(clienteDireccionImpDto);

      if (!isNew) {
        await _deleteClienteDireccionImpInLocalDB(
            clienteDireccionImpDtoEnviada.id);
      } else {
        await _updateDireccionImpInLocalDB(clienteDireccionImpDtoEnviada);
      }

      final pais = await _getPaisCliente(
          clienteId: clienteDireccionImpDtoEnviada.clienteId);
      return ClienteDireccionDTO.fromDireccionImp(clienteDireccionImpDtoEnviada)
          .toDomain(pais);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteClienteDireccion(String clienteId,
      {String? direccionId, String? direccionImpGuid}) async {
    try {
      if (direccionImpGuid != null) {
        await _deleteClienteDireccionImpInLocalDB(direccionImpGuid);
      } else {
        await _deleteClienteDireccionTratada(clienteId, direccionId!);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClienteDireccionImp>> getClienteDireccionesImpListInSyncByCliente(
      ClienteImpParam clienteDireccionImpParam) async {
    try {
      try {
        final requestUri = (usuario.test)
            ? Uri.http(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/clientes/${clienteDireccionImpParam.clienteId}/direcciones/${clienteDireccionImpParam.id!}',
              )
            : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/clientes/${clienteDireccionImpParam.clienteId}/direcciones/${clienteDireccionImpParam.id!}',
              );

        final response = await _dio.getUri(
          requestUri,
          options: Options(
            headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
          ),
        );
        if (response.statusCode == 200) {
          final jsonData = response.data['data'] as List<dynamic>;

          final clienteDireccionDTOList =
              jsonData.map((e) => ClienteDireccionImpDTO.fromJson(e));

          return await Future.wait(clienteDireccionDTOList.map((e) async {
            final pais = await _getPaisCliente(clienteId: e.clienteId);
            return e.toDomain(pais);
          }).toList());
        } else {
          throw AppException.restApiFailure(
              response.statusCode ?? 400, response.statusMessage ?? '');
        }
      } catch (e) {
        throw getApiError(e);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<ClienteDireccion?> getClienteDireccionByDireccionId(
      {required String clienteId, required String? direccionId}) async {
    try {
      final pais = await _getPaisCliente(clienteId: clienteId);
      if (direccionId != null) {
        final queryRemote = (_remoteDb.select(_remoteDb.clienteDireccionTable)
          ..where((t) =>
              t.clienteId.equals(clienteId) &
              t.direccionId.equals(direccionId)));

        final clienteDireccionSync = await queryRemote
            .map((row) => row.toDomain(pais))
            .getSingleOrNull();

        if (clienteDireccionSync != null) {
          return clienteDireccionSync;
        }

        final queryLocal = (_localDb.select(_localDb.clienteDireccionImpTable)
          ..where((t) =>
              t.clienteId.equals(clienteId) &
              t.direccionId.equals(direccionId)));

        return await queryLocal
            .map((row) =>
                ClienteDireccion.fromClienteDireccionImp(row.toDomain(pais)))
            .getSingle();
      }
      return null;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteDireccion>> _getClienteDireccionSyncList(
      String clienteId,
      List<ClienteDireccion> clienteDireccionImpList,
      String? searchText) async {
    try {
      final query = (_remoteDb.select(_remoteDb.clienteDireccionTable)
        ..where((t) =>
            t.clienteId.equals(clienteId) &
            (t.nombre.contains(searchText ?? '') |
                t.direccion1.contains(searchText ?? '') |
                t.direccion1.contains(searchText ?? '') |
                t.codigoPostal.contains(searchText ?? '') |
                t.poblacion.contains(searchText ?? '') |
                t.provincia.contains(searchText ?? '') |
                t.paisId.contains(searchText ?? ''))));

      return await query.asyncMap((row) async {
        final pais = await _getPaisCliente(clienteId: clienteId);
        for (var i = 0; i < clienteDireccionImpList.length; i++) {
          final clienteContactoImp = clienteDireccionImpList[i];
          if (!clienteContactoImp.enviada &&
              row.clienteId == clienteContactoImp.clienteId &&
              row.direccionId == clienteContactoImp.direccionId) {
            return row.toDomain(pais,
                enviada: clienteContactoImp.enviada,
                tratada: clienteContactoImp.tratada,
                direccionImpGuid: clienteContactoImp.direccionImpGuid);
          }
        }

        return row.toDomain(pais);
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteDireccion>> _getClienteDireccionImpList(
      String clienteId, String? searchText) async {
    try {
      final query = (_localDb.select(_localDb.clienteDireccionImpTable)
        ..where((t) =>
            t.clienteId.equals(clienteId) &
            (t.nombre.contains(searchText ?? '') |
                t.direccion1.contains(searchText ?? '') |
                t.direccion1.contains(searchText ?? '') |
                t.codigoPostal.contains(searchText ?? '') |
                t.poblacion.contains(searchText ?? '') |
                t.provincia.contains(searchText ?? '') |
                t.paisId.contains(searchText ?? ''))));

      return await query.asyncMap((row) async {
        final pais = await _getPaisCliente(clienteId: row.clienteId);
        return ClienteDireccion.fromClienteDireccionImp(row.toDomain(pais));
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> _insertClienteDireccionImpInLocalDB(
      ClienteDireccionImpDTO clienteDireccionImpDTO) async {
    try {
      await _localDb
          .into(_localDb.clienteDireccionImpTable)
          .insertOnConflictUpdate(clienteDireccionImpDTO);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<ClienteDireccionImpDTO> _remoteUpsertClienteDireccionImp(
    ClienteDireccionImpDTO clienteDireccionImpDTO,
  ) async {
    try {
      final clienteDireccionImpToJson = clienteDireccionImpDTO.toJson();
      print(jsonEncode(clienteDireccionImpToJson));

      final requestUri = (usuario.test)
          ? Uri.http(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/clientes/${clienteDireccionImpDTO.clienteId}/direccion',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/clientes/${clienteDireccionImpDTO.clienteId}/direccion',
            );

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
        ),
        data: jsonEncode(clienteDireccionImpToJson),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return ClienteDireccionImpDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> _updateDireccionImpInLocalDB(
      ClienteDireccionImpDTO clienteDireccionImpDTO) async {
    try {
      await _localDb
          .update(_localDb.clienteDireccionImpTable)
          .replace(clienteDireccionImpDTO);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<void> _deleteClienteDireccionTratada(
      String clienteId, String clienteDireccionId) async {
    try {
      final deletedDireccionImpDto = ClienteDireccionImpDTO(
        id: const Uuid().v4(),
        fecha: DateTime.now().toUtc().toLocal(),
        usuarioId: usuario.id,
        clienteId: clienteId,
        direccionId: clienteDireccionId,
        enviada: 'N',
        borrar: 'S',
      );

      await _insertClienteDireccionImpInLocalDB(deletedDireccionImpDto);
      final direccionImpEnviado =
          await _remoteUpsertClienteDireccionImp(deletedDireccionImpDto);
      if (direccionImpEnviado.enviada == 'S') {
        await _deleteClienteDireccionImpInLocalDB(deletedDireccionImpDto.id);
      } else {
        await _updateDireccionImpInLocalDB(deletedDireccionImpDto);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _deleteClienteDireccionImpInLocalDB(
      String direccionGuidImp) async {
    try {
      await (_localDb.delete(_localDb.clienteDireccionImpTable)
            ..where((tbl) => tbl.id.equals(direccionGuidImp)))
          .go();
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<Pais?> _getPaisCliente({required String clienteId}) async {
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
          tbl.id.contains(searchText) |
          _filtrarPaisPorDescripcion(searchText.toUpperCase()));
    }

    query.orderBy(
      [(tbl) => OrderingTerm.asc(_orderByPaisPorDescripcion())],
    );

    final paisDtoList = await query.get();

    return paisDtoList.map((e) => e.toDomain()).toList();
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
}
