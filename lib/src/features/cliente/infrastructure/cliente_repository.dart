import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/app.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_adjunto_dto.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/domain/default_list_params.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../usuario/infrastructure/usuario_service.dart';
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
    return ClienteRepository(db, dio);
  },
);

final clienteListaSearchProvider = FutureProvider.autoDispose
    .family<List<Cliente>, DefaultListParams>((ref, defaultListParams) async {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return clienteRepository.getClienteLista(
      usuarioId: usuario!.id,
      page: defaultListParams.page,
      searchText: defaultListParams.searchText);
});

final clienteProvider =
    FutureProvider.autoDispose.family<Cliente, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteById(clienteId: clienteId);
});

final clienteDireccionStreamProvider = StreamProvider.autoDispose
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

final clienteAdjuntoProvider = FutureProvider.autoDispose
    .family<List<ClienteAdjunto>, String>((ref, clienteId) async {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return clienteRepository.getClienteAdjuntoById(
      clienteId: clienteId, provisionalToken: usuario!.provisionalToken);
});

const pageSize = 100;
List<Cliente> clientes = [];

class ClienteRepository {
  final AppDatabase _db;
  final Dio _dio;

  ClienteRepository(this._db, this._dio);

  Future<List<Cliente>> getClienteLista(
      {required String usuarioId,
      required int page,
      String? searchText}) async {
    try {
      if (page == 1) {
        clientes.clear();
      }
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

      if (searchText != null) {
        query.where(
          _db.clienteUsuarioTable.usuarioId.equals(usuarioId) &
              (_db.clienteTable.nombreCliente.like('%$searchText%') |
                  _db.clienteTable.poblacionFiscal.like('%$searchText%') |
                  _db.clienteTable.provinciaFiscal.like('%$searchText%')),
        );
      } else {
        query.where(_db.clienteUsuarioTable.usuarioId.equals(usuarioId));
      }

      query.limit(pageSize, offset: (page == 1) ? 0 : (page * pageSize));
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
      clientes.addAll(clienteList);
      return clientes;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Cliente> getClienteById({required String clienteId}) async {
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

  Stream<List<ClienteDireccion>> getClienteDireccionById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clienteDireccionTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.asyncMap((row) async {
        final paisDTO = await (_db.select(_db.paisTable)
              ..where((t) => t.id.equals(row.paisId ?? '')))
            .getSingleOrNull();
        return row.toDomain(
          pais: paisDTO?.toDomain(),
        );
      }).watch();
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
        final familiaDTO = await (_db.select(_db.familiaTable)
              ..where((t) => t.id.equals(row.familiaId)))
            .getSingle();
        final subfamiliaDTO = await (_db.select(_db.subfamiliaTable)
              ..where((t) => t.id.equals(row.subfamiliaId)))
            .getSingle();
        return row.toDomain(
            familia: familiaDTO.toDomain(),
            subfamilia: subfamiliaDTO.toDomain());
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
      ]);
      query.where(_db.clienteTable.id.equals(clienteId));

      return query.map((row) {
        final clienteDTO = row.readTable(_db.clienteTable);
        final precioNetoDTO = row.readTable(_db.clientePrecioNetoTable);
        return precioNetoDTO.toDomain(divisaId: clienteDTO.divisaId);
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
        print(row.data);
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
        print(row.data);
        return ClienteVentasArticuloDTO.fromJson(row.data).toDomain();
      }).toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteAdjunto>> getClienteAdjuntoById(
      {required String clienteId, required String provisionalToken}) async {
    try {
      final query = {'CLIENTE_ID': clienteId};
      final clienteAdjuntoDTOList = await _remoteGetClienteAdjunto(
          requestUri: Uri.http(
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
    } on DioError catch (e) {
      String? errorDetalle;
      final responseErrorJson =
          e.response?.data['detalle'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetalle = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetalle ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<File?> getDocumentFile(
      {required String path, required String provisionalToken}) async {
    try {
      if (path != '') {
        final query = {'PATH': path};
        final data = await _remoteGetAttachment(
            requestUri: Uri.http(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/adjunto/doc',
              query,
            ),
            provisionalToken: provisionalToken);

        try {
          final cahceDirectories = await getTemporaryDirectory();
          print('${cahceDirectories.path}/$path');
          final File file = await File('${cahceDirectories.path}/$path')
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
    } on DioError catch (e) {
      String? errorDetalle;
      final responseErrorJson = (e.response?.data is List<int>)
          ? e.response?.statusMessage
          : e.response?.data['detalle'] ?? e.response?.data['message'];
      if (responseErrorJson != null) {
        errorDetalle = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetalle ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
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
    print(select);
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
    print(select);
    return select;
  }
}
