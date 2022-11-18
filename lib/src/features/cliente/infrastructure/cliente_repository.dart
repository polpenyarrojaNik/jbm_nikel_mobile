import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/exceptions/get_api_error.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/app.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_adjunto_dto.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/domain/adjunto_param.dart';
import '../../../core/exceptions/app_exception.dart';
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
import 'cliente_ventas_articulo_dto.dart';
import 'cliente_ventas_mes_dto.dart';

final clienteRepositoryProvider = Provider.autoDispose<ClienteRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    final dio = ref.watch(dioProvider);
    final usuarioId = ref.watch(usuarioNotifierProvider)!.id;
    return ClienteRepository(db, dio, usuarioId);
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

final clienteDireccionProvider = FutureProvider.autoDispose
    .family<List<ClienteDireccion>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);

  return clienteRepository.getClienteDireccionById(clienteId: clienteId);
});

final clienteContactoProvider = FutureProvider.autoDispose
    .family<List<ClienteContacto>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteContactoById(clienteId: clienteId);
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

final clienteVentasArticuloProvider = FutureProvider.autoDispose
    .family<List<ClienteVentasArticulo>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getVentasArticuloById(clienteId: clienteId);
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

class ClienteRepository {
  static const pageSize = 100;

  final AppDatabase _db;
  final Dio _dio;
  final String usuarioId;

  ClienteRepository(this._db, this._dio, this.usuarioId);

  Future<List<Cliente>> getClienteLista(
      {required int page,
      required String searchText,
      required bool searchPotenciales}) async {
    try {
      final query = _db.select(_db.clienteTable).join([
        innerJoin(_db.clienteUsuarioTable,
            _db.clienteUsuarioTable.clienteId.equalsExp(_db.clienteTable.id)),
        leftOuterJoin(_db.paisTable,
            _db.paisTable.id.equalsExp(_db.clienteTable.paisFiscalId)),
        leftOuterJoin(_db.divisaTable,
            _db.divisaTable.id.equalsExp(_db.clienteTable.divisaId)),
        leftOuterJoin(
            _db.metodoDeCobroTable,
            _db.metodoDeCobroTable.id
                .equalsExp(_db.clienteTable.metodoDeCobroId)),
        leftOuterJoin(
            _db.plazoDeCobroTable,
            _db.plazoDeCobroTable.id
                .equalsExp(_db.clienteTable.plazoDeCobroId)),
        leftOuterJoin(
            _db.clienteTipoPotencialTable,
            _db.clienteTipoPotencialTable.id
                .equalsExp(_db.clienteTable.clienteTipoPotencialId)),
        leftOuterJoin(
            _db.clienteEstadoPotencialTable,
            _db.clienteEstadoPotencialTable.id
                .equalsExp(_db.clienteTable.clienteEstadoPotencialId))
      ]);

      query.where(_db.clienteUsuarioTable.usuarioId.equals(usuarioId));

      if (searchText != '') {
        final busqueda = searchText.split(' ');
        Expression<bool>? predicate;
        for (var i = 0; i < busqueda.length; i++) {
          if (predicate == null) {
            predicate = ((_db.clienteTable.id.like('%${busqueda[i]}%') |
                (_db.clienteTable.nombreCliente.like('%${busqueda[i]}%') |
                    _db.clienteTable.poblacionFiscal.like('%${busqueda[i]}%') |
                    _db.clienteTable.provinciaFiscal
                        .like('%${busqueda[i]}%'))));
          } else {
            predicate = predicate &
                ((_db.clienteTable.id.like('%${busqueda[i]}%') |
                    (_db.clienteTable.nombreCliente.like('%${busqueda[i]}%') |
                        _db.clienteTable.poblacionFiscal
                            .like('%${busqueda[i]}%') |
                        _db.clienteTable.provinciaFiscal
                            .like('%${busqueda[i]}%'))));
          }
        }
        query.where(predicate!);
      }

      if (searchPotenciales) {
        query.where(_db.clienteTable.clientePotencial.equals('S'));
      }

      query.limit(pageSize, offset: page * pageSize);
      query.orderBy([
        OrderingTerm.asc(_db.clienteTable.nombreCliente),
        OrderingTerm.asc(_db.clienteTable.id)
      ]);

      final clienteList = await query.asyncMap((row) async {
        final clienteDTO = row.readTable(_db.clienteTable);
        final paisDTO = row.readTableOrNull(_db.paisTable);
        final divisaDTO = row.readTableOrNull(_db.divisaTable);
        final metodoDeCobroDTO = row.readTableOrNull(_db.metodoDeCobroTable);
        final plazoDeCobroDTO = row.readTableOrNull(_db.plazoDeCobroTable);
        final clienteEstadoPotencialDTO =
            row.readTableOrNull(_db.clienteEstadoPotencialTable);
        final clienteTipoPotencialDTO =
            row.readTableOrNull(_db.clienteTipoPotencialTable);

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
      final countExp = _db.clienteTable.id.count();

      final query = _db.selectOnly(_db.clienteTable).join([
        innerJoin(_db.clienteUsuarioTable,
            _db.clienteUsuarioTable.clienteId.equalsExp(_db.clienteTable.id)),
        leftOuterJoin(_db.paisTable,
            _db.paisTable.id.equalsExp(_db.clienteTable.paisFiscalId)),
        leftOuterJoin(_db.divisaTable,
            _db.divisaTable.id.equalsExp(_db.clienteTable.divisaId)),
        leftOuterJoin(
            _db.metodoDeCobroTable,
            _db.metodoDeCobroTable.id
                .equalsExp(_db.clienteTable.metodoDeCobroId)),
        leftOuterJoin(
            _db.plazoDeCobroTable,
            _db.plazoDeCobroTable.id
                .equalsExp(_db.clienteTable.plazoDeCobroId)),
        leftOuterJoin(
            _db.clienteTipoPotencialTable,
            _db.clienteTipoPotencialTable.id
                .equalsExp(_db.clienteTable.clienteTipoPotencialId)),
        leftOuterJoin(
            _db.clienteEstadoPotencialTable,
            _db.clienteEstadoPotencialTable.id
                .equalsExp(_db.clienteTable.clienteEstadoPotencialId))
      ]);
      query.addColumns([countExp]);
      query.where(_db.clienteUsuarioTable.usuarioId.equals(usuarioId));

      if (searchText != '') {
        final busqueda = searchText.split(' ');
        Expression<bool>? predicate;
        for (var i = 0; i < busqueda.length; i++) {
          if (predicate == null) {
            predicate = ((_db.clienteTable.id.like('%${busqueda[i]}%') |
                (_db.clienteTable.nombreCliente.like('%${busqueda[i]}%') |
                    _db.clienteTable.poblacionFiscal.like('%${busqueda[i]}%') |
                    _db.clienteTable.provinciaFiscal
                        .like('%${busqueda[i]}%'))));
          } else {
            predicate = predicate &
                ((_db.clienteTable.id.like('%${busqueda[i]}%') |
                    (_db.clienteTable.nombreCliente.like('%${busqueda[i]}%') |
                        _db.clienteTable.poblacionFiscal
                            .like('%${busqueda[i]}%') |
                        _db.clienteTable.provinciaFiscal
                            .like('%${busqueda[i]}%'))));
          }
        }
        query.where(predicate!);
      }

      if (searchPotenciales) {
        query.where(_db.clienteTable.clientePotencial.equals('S'));
      }

      final count = await query.map((row) => row.read(countExp)).getSingle();
      return count ?? 0;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Cliente> getClienteById({required String clienteId}) async {
    try {
      final query = _db.select(_db.clienteTable).join([
        leftOuterJoin(_db.paisTable,
            _db.paisTable.id.equalsExp(_db.clienteTable.paisFiscalId)),
        leftOuterJoin(_db.divisaTable,
            _db.divisaTable.id.equalsExp(_db.clienteTable.divisaId)),
        leftOuterJoin(
            _db.metodoDeCobroTable,
            _db.metodoDeCobroTable.id
                .equalsExp(_db.clienteTable.metodoDeCobroId)),
        leftOuterJoin(
            _db.plazoDeCobroTable,
            _db.plazoDeCobroTable.id
                .equalsExp(_db.clienteTable.plazoDeCobroId)),
        leftOuterJoin(
            _db.clienteTipoPotencialTable,
            _db.clienteTipoPotencialTable.id
                .equalsExp(_db.clienteTable.clienteTipoPotencialId)),
        leftOuterJoin(
            _db.clienteEstadoPotencialTable,
            _db.clienteEstadoPotencialTable.id
                .equalsExp(_db.clienteTable.clienteEstadoPotencialId))
      ]);

      query.where(_db.clienteTable.id.equals(clienteId));

      return query.map((row) {
        final clienteDTO = row.readTable(_db.clienteTable);
        final paisDTO = row.readTableOrNull(_db.paisTable);
        final divisaDTO = row.readTableOrNull(_db.divisaTable);
        final metodoDeCobroDTO = row.readTableOrNull(_db.metodoDeCobroTable);
        final plazoDeCobroDTO = row.readTableOrNull(_db.plazoDeCobroTable);
        final clienteEstadoPotencialDTO =
            row.readTableOrNull(_db.clienteEstadoPotencialTable);
        final clienteTipoPotencialDTO =
            row.readTableOrNull(_db.clienteTipoPotencialTable);

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

  Future<List<ClienteDireccion>> getClienteDireccionById(
      {required String clienteId}) async {
    try {
      final queryDirecciones = (_db.select(_db.clienteDireccionTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      final clientesDireccionList =
          await queryDirecciones.asyncMap((row) async {
        final paisDTO = await (_db.select(_db.paisTable)
              ..where((t) => t.id.equals(row.paisId ?? '')))
            .getSingleOrNull();
        return row.toDomain(
          pais: paisDTO?.toDomain(),
        );
      }).get();

      return clientesDireccionList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteContacto>> getClienteContactoById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clienteContactoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteDescuento>> getClienteDescuentoById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clienteDescuentoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.asyncMap((row) async {
        final articuloDto = (row.articuloId != '*')
            ? await (_db.select(_db.articuloTable)
                  ..where((t) => t.id.equals(row.articuloId)))
                .getSingle()
            : null;

        final familiaDTO = await (_db.select(_db.familiaTable)
              ..where((t) => t.id.equals(row.familiaId)))
            .getSingle();
        final subfamiliaDTO = await (_db.select(_db.subfamiliaTable)
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
      final query = _db.select(_db.clientePrecioNetoTable).join([
        innerJoin(
            _db.clienteTable,
            _db.clienteTable.id
                .equalsExp(_db.clientePrecioNetoTable.clienteId)),
        innerJoin(
            _db.articuloTable,
            _db.articuloTable.id
                .equalsExp(_db.clientePrecioNetoTable.articuloId)),
      ]);
      query.where(_db.clienteTable.id.equals(clienteId));

      return query.map((row) {
        final clienteDTO = row.readTable(_db.clienteTable);
        final articulo = row
            .readTable(_db.articuloTable)
            .toDomain(familia: null, subfamilia: null);

        final precioNetoDTO = row.readTable(_db.clientePrecioNetoTable);
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
      final query = (_db.select(_db.clienteGrupoNetoTable)
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
      final query = (_db.select(_db.clienteRappelTable)
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
      final query = _db.select(_db.clientePagoPendienteTable).join([
        innerJoin(
            _db.clienteTable,
            _db.clienteTable.id
                .equalsExp(_db.clientePagoPendienteTable.clienteId)),
      ]);

      query.where(_db.clienteTable.id.equals(clienteId));

      return query.asyncMap((row) async {
        final clienteDTO = row.readTable(_db.clienteTable);

        final metodoDeCobroDTO = await (_db.select(_db.metodoDeCobroTable)
              ..where((t) => t.id.equals(clienteDTO.metodoDeCobroId ?? '')))
            .getSingleOrNull();

        final pagosPendienteDTO = row.readTable(_db.clientePagoPendienteTable);
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
          await _db.customSelect(_getVentasMesCustomSelect(), variables: [
        Variable(clienteId),
      ], readsFrom: {
        _db.estadisticasClienteUsuarioVentasTable,
      }).get();

      return query.map((row) {
        return ClienteVentasMesDTO.fromJson(row.data).toDomain();
      }).toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteVentasArticulo>> getVentasArticuloById(
      {required String clienteId}) async {
    try {
      final query =
          await _db.customSelect(_getVentasArticuloCustomSelect(), variables: [
        Variable(clienteId),
      ], readsFrom: {
        _db.estadisticasClienteUsuarioVentasTable,
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

  String _getVentasArticuloCustomSelect() {
    String select = '''
SELECT ARTICULO_ID
        , DESCRIPCION_ES DESCRIPCION_ES
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
                , art.descripcion_ES
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
                ,art.descripcion_ES
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
                ,art.descripcion_ES
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
                ,art.descripcion_ES
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
                ,art.descripcion_ES
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
WHERE ARTICULO_ID IS NOT NULL
GROUP BY ARTICULO_ID, DESCRIPCION_ES
ORDER BY IMPORTE_ANYO DESC
''';

    return select;
  }

  Future<ClienteDireccion?> getClienteDireccionByDireccionId(
      {required String clienteId, required String? direccionId}) async {
    try {
      if (direccionId != null) {
        final query = (_db.select(_db.clienteDireccionTable)
          ..where((t) =>
              t.clienteId.equals(clienteId) &
              t.direccionId.equals(direccionId)));

        return query.asyncMap((row) async {
          final paisDTO = await (_db.select(_db.paisTable)
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
      final query = _db.select(_db.estadisticasUltimosPreciosTable).join([
        leftOuterJoin(
            _db.articuloTable,
            _db.articuloTable.id
                .equalsExp(_db.estadisticasUltimosPreciosTable.articuloId)),
      ]);

      if (searchText != '') {
        query.where(
            (_db.estadisticasUltimosPreciosTable.clienteId.equals(clienteId)) &
                (_db.articuloTable.id.like('%$searchText%') |
                    _db.articuloTable.descripcionES.like('%$searchText%')));
      } else {
        query.where(
            _db.estadisticasUltimosPreciosTable.clienteId.equals(clienteId));
      }

      query.limit(pageSize, offset: page * pageSize);

      query.orderBy(
        [OrderingTerm.desc(_db.estadisticasUltimosPreciosTable.fecha)],
      );

      return query.asyncMap((row) async {
        final lastPriceArticuloDTO =
            row.readTable(_db.estadisticasUltimosPreciosTable);
        final articuloDTO = row.readTableOrNull(_db.articuloTable);
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
      final countExp = _db.estadisticasUltimosPreciosTable.clienteId.count();

      final query = _db.selectOnly(_db.estadisticasUltimosPreciosTable).join([
        leftOuterJoin(
            _db.articuloTable,
            _db.articuloTable.id
                .equalsExp(_db.estadisticasUltimosPreciosTable.articuloId)),
      ]);

      if (searchText != '') {
        query.where(
            (_db.estadisticasUltimosPreciosTable.clienteId.equals(clienteId)) &
                (_db.articuloTable.id.like('%$searchText%') |
                    _db.articuloTable.descripcionES.like('%$searchText%')));
      } else {
        query.where(
            _db.estadisticasUltimosPreciosTable.clienteId.equals(clienteId));
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
      return articulo.descripcionES;
    } else if (currentLocale == 'en' && articulo.descripcionEN != null) {
      return articulo.descripcionEN!;
    }

    return articulo.descripcionES;
  }

  Future<DateTime> getLastSyncDate() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final dateUTCString =
          sharedPreferences.getString(clienteFechaUltimaSyncKey) as String;
      return DateTime.parse(dateUTCString);
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
      final query = _db.select(_db.visitaTable).join([
        innerJoin(_db.clienteTable,
            _db.clienteTable.id.equalsExp(_db.visitaTable.clienteId))
      ]);

      query.where(_db.visitaTable.clienteId.equals(clienteId));

      return query.map((row) {
        final visitaDTO = row.readTable(_db.visitaTable);
        final clienteDto = row.readTable(_db.clienteTable);
        return visitaDTO.toDomain(nombreCliente: clienteDto.nombreCliente);
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<Visita>> _getVisitasLocalById({required String clienteId}) async {
    try {
      final query = _db.select(_db.visitaLocalTable).join([
        innerJoin(_db.clienteTable,
            _db.clienteTable.id.equalsExp(_db.visitaLocalTable.clienteId))
      ]);

      query.where(_db.visitaLocalTable.clienteId.equals(clienteId));

      return query.map((row) {
        final visitaDTO = row.readTable(_db.visitaLocalTable);
        final clienteDto = row.readTable(_db.clienteTable);
        return visitaDTO.toDomain(nombreCliente: clienteDto.nombreCliente);
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }
}
