import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_precio_tarifa.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_recambio.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_documento_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_grupo_neto_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_pedido_venta_linea_dto.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/domain/adjunto_param.dart';
import '../../../core/domain/default_list_params.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/infrastructure/sync_service.dart';
import '../../../core/presentation/app.dart';
import '../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../usuario/infrastructure/usuario_service.dart';
import '../domain/articulo.dart';
import '../domain/articulo_componente.dart';
import '../domain/articulo_documento.dart';
import '../domain/articulo_grupo_neto.dart';
import '../domain/articulo_imagen.dart';
import '../domain/articulo_pedido_venta_linea.dart';
import '../domain/articulo_sustitutivo.dart';
import '../domain/articulo_ventas_cliente.dart';
import '../domain/articulo_ventas_mes.dart';
import 'articulo_dto.dart';
import 'articulo_imagen_dto.dart';
import 'articulo_precio_tarifa_dto.dart';
import 'articulo_ventas_cliente_dto.dart';
import 'articulo_ventas_mes_dto.dart';

List<Articulo> articulos = [];

final articuloRepositoryProvider = Provider.autoDispose<ArticuloRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    final dio = ref.watch(dioProvider);
    return ArticuloRepository(db, dio);
  },
);

final articulosSearchProvider =
    FutureProvider.autoDispose.family<List<Articulo>, DefaultListParams>(
  (ref, defaultListParams) async {
    print('Searching: ${defaultListParams.searchText}');
    final articuloRepository = ref.watch(articuloRepositoryProvider);
    return articuloRepository.getArticuloLista(
        page: defaultListParams.page, searchText: defaultListParams.searchText);
  },
);

final articuloLastSyncDateProvider =
    FutureProvider.autoDispose<DateTime>((ref) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getLastSyncDate();
});

final articuloProvider =
    FutureProvider.autoDispose.family<Articulo, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloById(articuloId: articuloId);
});

final articuloComponenteListProvider = FutureProvider.autoDispose
    .family<List<ArticuloComponente>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloComponenteListaById(
      articuloId: articuloId);
});

final articuloPrecioTarifaListProvider = FutureProvider.autoDispose
    .family<List<ArticuloPrecioTarifa>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();

  return articuloRepository.getArticuloPrecioTarifaListaById(
      articuloId: articuloId, usuarioId: usuario!.id);
});

final articuloGrupoNetoPriceListProvider = FutureProvider.autoDispose
    .family<List<ArticuloGrupoNeto>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();

  return articuloRepository.getArticuloGrupoNetoListaById(
      articuloId: articuloId, usuarioId: usuario!.id);
});

final articuloSustitutivoListProvider = FutureProvider.autoDispose
    .family<List<ArticuloSustitutivo>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloSustitutivoListaById(
      articuloId: articuloId);
});

final articuloRecambioListProvider = FutureProvider.autoDispose
    .family<List<ArticuloRecambio>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloRecambioListaById(
      articuloId: articuloId);
});

final articuloImageListProvider = FutureProvider.autoDispose
    .family<List<ArticuloImagen>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getArticuloImagenesListaById(
      articuloId: articuloId,
      provisionalToken: usuario!.provisionalToken,
      test: usuario.test);
});

final articuloDocumentListProvider = FutureProvider.autoDispose
    .family<List<ArticuloDocumento>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getArticuloDocumentoListById(
      articuloId: articuloId,
      provisionalToken: usuario!.provisionalToken,
      test: usuario.test);
});

final articuloDocumentFileProvider = FutureProvider.autoDispose
    .family<File?, AdjuntoParam>((ref, adjuntoParam) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getArticuloDocumentFile(
      adjuntoParam: adjuntoParam,
      provisionalToken: usuario!.provisionalToken,
      test: usuario.test);
});

final articuloImageFileProvider = FutureProvider.autoDispose
    .family<Uint8List?, AdjuntoParam>((ref, adjuntoParam) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);

  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getImageFile(
      adjuntoParam: adjuntoParam,
      provisionalToken: usuario!.provisionalToken,
      test: usuario.test);
});

final articuloPedidoVentaLineaListProvider = FutureProvider.autoDispose
    .family<List<ArticuloPedidoVentaLinea>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);

  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getArticuloPedidoVentaById(
      articuloId: articuloId, usuarioId: usuario!.id);
});

final articuloUltimosPreciosSearchProvider = FutureProvider.autoDispose
    .family<List<EstadisticasUltimosPrecios>, DefaultListParams>(
  (ref, defaultListParams) async {
    final usuario =
        await ref.watch(usuarioServiceProvider).getSignedInUsuario();

    final articuloRepository = ref.watch(articuloRepositoryProvider);
    return articuloRepository.getArticuloUltimosPreciosById(
        articuloId: defaultListParams.entityId!,
        usuarioId: usuario!.id,
        page: defaultListParams.page,
        searchText: defaultListParams.searchText);
  },
);

final articuloVentasMesProvider = FutureProvider.autoDispose
    .family<List<ArticuloVentasMes>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getVentasMesById(articuloId: articuloId);
});

final articuloVentasClienteProvider = FutureProvider.autoDispose
    .family<List<ArticuloVentasCliente>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getVentasClienteById(articuloId: articuloId);
});

final syncAllArticuloDb = FutureProvider.autoDispose<void>((ref) async {
  final syncRepository = ref.watch(syncServiceProvider);
  return syncRepository.syncArticulos();
});

const pageSize = 100;

class ArticuloRepository {
  final AppDatabase _db;
  final Dio _dio;

  ArticuloRepository(this._db, this._dio);

  Future<List<Articulo>> getArticuloLista(
      {required int page, required String searchText}) async {
    try {
      if (page == 1) {
        articulos.clear();
      }
      final query = await _db.customSelect('''
          SELECT art.*
          FROM ARTICULOS art
          WHERE ${descripcionSegunLocale(searchText)}
          OR art.ARTICULO_ID LIKE '%$searchText%'
          ORDER BY CASE
            WHEN art.ARTICULO_ID = '$searchText' THEN 1
            ELSE 2
          END
          , art.ARTICULO_ID
          LIMIT :limit OFFSET :offset
''', variables: [
        const Variable(pageSize),
        Variable((page == 1) ? 0 : page * pageSize),
      ], readsFrom: {
        _db.articuloTable,
      }).get();

      final articlesList = query.map((row) async {
        final articuloDTO = ArticuloDTO.fromJson(row.data);
        final familiaDTO = await (_db.select(_db.familiaTable)
              ..where((t) => t.id.equals(row.data['FAMILIA_ID'] ?? '')))
            .getSingleOrNull();
        final subfamiliaDTO = await (_db.select(_db.subfamiliaTable)
              ..where((t) => t.id.equals(row.data['SUBFAMILIA_ID'] ?? '')))
            .getSingleOrNull();
        return articuloDTO.toDomain(
            familia: familiaDTO?.toDomain(),
            subfamilia: subfamiliaDTO?.toDomain());
      }).toList();

      articulos.addAll(await Future.wait(articlesList));

      return articulos;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Articulo> getArticuloById({required String articuloId}) async {
    try {
      final query = (_db.select(_db.articuloTable)
        ..where((t) => t.id.equals(articuloId)));

      return query.asyncMap((row) async {
        final familiaDTO = await (_db.select(_db.familiaTable)
              ..where((t) => t.id.equals(row.familiaId ?? '')))
            .getSingleOrNull();
        final subfamiliaDTO = await (_db.select(_db.subfamiliaTable)
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

  Future<List<ArticuloComponente>> getArticuloComponenteListaById(
      {required String articuloId}) async {
    try {
      final query = (_db.select(_db.articuloComponenteTable)
        ..where((t) => t.articuloId.equals(articuloId)));

      return query.asyncMap((row) async {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloPrecioTarifa>> getArticuloPrecioTarifaListaById(
      {required String articuloId, required String usuarioId}) async {
    try {
      final query = await _db.customSelect('''
      SELECT *
  FROM ${_db.articuloPrecioTarifaTable.tableName}
 WHERE EXISTS
         (SELECT TARIFA_ID
            FROM ${_db.clienteTable.tableName}
                 INNER JOIN ${_db.clienteUsuarioTable.tableName} ON clientes_usuario.cliente_id = CLIENTES.cliente_id
           WHERE CLIENTES.TARIFA_ID = ARTICULOS_TARIFA_PRECIO.TARIFA_ID
             AND clientes_usuario.usuario_id = :usuarioId)
   AND ARTICULOS_TARIFA_PRECIO.articulo_id = :articuloId;
''', variables: [
        Variable(usuarioId),
        Variable(articuloId),
      ], readsFrom: {
        _db.articuloGrupoNetoTable,
        _db.clienteGrupoNetoTable
      }).get();

      return query
          .map((row) => ArticuloPrecioTarifaDTO.fromJson(row.data).toDomain())
          .toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloGrupoNeto>> getArticuloGrupoNetoListaById(
      {required String articuloId, required String usuarioId}) async {
    try {
      final query = await _db.customSelect('''
      SELECT *
  FROM ${_db.articuloGrupoNetoTable.tableName}
 WHERE EXISTS
         (SELECT *
            FROM ${_db.clienteGrupoNetoTable.tableName}
                 INNER JOIN ${_db.clienteUsuarioTable.tableName} ON clientes_usuario.cliente_id = clientes_grupos_netos.cliente_id
           WHERE clientes_grupos_netos.grupo_neto_id = articulos_grupos_netos_precio.grupo_neto_id
             AND clientes_usuario.usuario_id = :usuarioId)
   AND articulos_grupos_netos_precio.articulo_id = :articuloId
''', variables: [
        Variable(usuarioId),
        Variable(articuloId),
      ], readsFrom: {
        _db.articuloGrupoNetoTable,
        _db.clienteGrupoNetoTable
      }).get();

      return query
          .map((row) => ArticuloGrupoNetoDTO.fromJson(row.data).toDomain())
          .toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloRecambio>> getArticuloRecambioListaById(
      {required String articuloId}) async {
    try {
      final query = (_db.select(_db.articuloRecambioTable)
        ..where((t) => t.articuloId.equals(articuloId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloSustitutivo>> getArticuloSustitutivoListaById(
      {required String articuloId}) async {
    try {
      final query =
          (_db.select(_db.articuloSustitutivoTable)..where((t) => t.articuloId.equals(articuloId)))
            ..orderBy([
              (t) => OrderingTerm(expression: t.orden),
              (t) => OrderingTerm(expression: t.articuloSustitutivoId)
            ]);

      return query.asyncMap((row) async {
        final articuloSustitutivo =
            await getArticuloById(articuloId: row.articuloSustitutivoId);
        return row.toDomain(
            articuloSustitutivoDescripcion:
                getDescriptionArticuloInLocalLanguage(
                    articulo: articuloSustitutivo));
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloImagen>> getArticuloImagenesListaById(
      {required String articuloId,
      required String provisionalToken,
      required bool test}) async {
    try {
      final query = {'ARTICULO_ID': articuloId};
      final articuloImageDTOList = await _remoteGetArticuloImagen(
        requestUri: (test)
            ? Uri.http(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
                'api/v1/online/articulo/imagenes',
                query,
              )
            : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/articulo/imagenes',
                query,
              ),
        jsonDataSelector: (json) => json['data'] as List<dynamic>,
        provisionalToken: provisionalToken,
      );

      return articuloImageDTOList.map((e) => e.toDomain(test: test)).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ArticuloDocumento>> getArticuloDocumentoListById(
      {required String articuloId,
      required String provisionalToken,
      required bool test}) async {
    try {
      final query = {'ARTICULO_ID': articuloId};
      final articuloDocumentoDTOList = await _remoteGetArticuloDocumentos(
        requestUri: (test)
            ? Uri.http(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
                'api/v1/online/articulo/documentos',
                query,
              )
            : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/articulo/documentos',
                query,
              ),
        jsonDataSelector: (json) => json['data'] as List<dynamic>,
        provisionalToken: provisionalToken,
      );

      return articuloDocumentoDTOList.map((e) => e.toDomain()).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<Uint8List?> getImageFile(
      {required AdjuntoParam adjuntoParam,
      required String provisionalToken,
      required bool test}) async {
    try {
      if (adjuntoParam.nombreArchivo != '') {
        final query = {'NOMBRE_ARCHIVO': adjuntoParam.nombreArchivo};
        final dataImage = await _remoteGetAttachment(
            requestUri: (test)
                ? Uri.http(
                    dotenv.get('URLTEST', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/articulo/${adjuntoParam.id}/img',
                    query,
                  )
                : Uri.https(
                    dotenv.get('URL', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/articulo/${adjuntoParam.id}/img',
                    query,
                  ),
            provisionalToken: provisionalToken);

        return Uint8List.fromList((dataImage));
      }

      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<File?> getArticuloDocumentFile(
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
                    'api/v1/online/adjunto/articulo/${adjuntoParam.id}/doc',
                    query,
                  )
                : Uri.https(
                    dotenv.get('URL', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/articulo/${adjuntoParam.id}/doc',
                    query,
                  ),
            provisionalToken: provisionalToken);

        try {
          final cahceDirectories = await getTemporaryDirectory();
          print(
              '${cahceDirectories.path}/articulo/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}');
          final File file = await File(
                  '${cahceDirectories.path}/articulo/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}')
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

  Future<File?> getClientesDocumentFile(
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
          print(
              '${cahceDirectories.path}/clientes/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}');
          final File file = await File(
                  '${cahceDirectories.path}/clientes/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}')
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

  Future<List<ArticuloPedidoVentaLinea>> getArticuloPedidoVentaById(
      {required String articuloId, required String usuarioId}) async {
    try {
      final query = _db.select(_db.pedidoVentaLineaTable).join([
        leftOuterJoin(
            _db.pedidoVentaTable,
            _db.pedidoVentaTable.pedidoVentaId
                .equalsExp(_db.pedidoVentaLineaTable.pedidoVentaId)),
        innerJoin(
            _db.clienteUsuarioTable,
            _db.clienteUsuarioTable.clienteId
                .equalsExp(_db.pedidoVentaTable.clienteId)),
        leftOuterJoin(
            _db.pedidoVentaEstadoTable,
            _db.pedidoVentaEstadoTable.id
                .equalsExp(_db.pedidoVentaTable.pedidoVentaEstadoId)),
      ]);

      query.where((_db.pedidoVentaLineaTable.articuloId.equals(articuloId) &
          _db.clienteUsuarioTable.usuarioId.equals(usuarioId) &
          (_db.pedidoVentaEstadoTable.id.equals(0) |
              _db.pedidoVentaEstadoTable.id.equals(1) |
              _db.pedidoVentaEstadoTable.id.equals(98) |
              _db.pedidoVentaEstadoTable.id.equals(99))));

      query.orderBy([OrderingTerm.desc(_db.pedidoVentaTable.pedidoVentaDate)]);

      return query.asyncMap((row) async {
        final pedidoVentaLineaDTO = row.readTable(_db.pedidoVentaLineaTable);
        final pedidoVentaDTO = row.readTable(_db.pedidoVentaTable);
        return ArticuloPedidoVentaLineaDTO.fromDB(
          pedidoVentaLineaDto: pedidoVentaLineaDTO,
          clienteId: pedidoVentaDTO.clienteId,
          nombreCliente: pedidoVentaDTO.nombreCliente,
        ).toDomain(
            divisaId: pedidoVentaDTO.divisaId,
            fechaPedido: pedidoVentaDTO.pedidoVentaDate);
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<EstadisticasUltimosPrecios>> getArticuloUltimosPreciosById(
      {required String articuloId,
      required String usuarioId,
      required int page,
      required String searchText}) async {
    try {
      final query = _db.select(_db.estadisticasUltimosPreciosTable).join([
        innerJoin(
            _db.clienteUsuarioTable,
            _db.clienteUsuarioTable.clienteId
                .equalsExp(_db.estadisticasUltimosPreciosTable.clienteId)),
        leftOuterJoin(
            _db.clienteTable,
            _db.clienteTable.id
                .equalsExp(_db.estadisticasUltimosPreciosTable.clienteId)),
      ]);
      query.where(
          (_db.estadisticasUltimosPreciosTable.articuloId.equals(articuloId) &
                  _db.clienteUsuarioTable.usuarioId.equals(usuarioId)) &
              (_db.clienteTable.nombreCliente.like('%$searchText%') |
                  _db.clienteTable.nombreCliente
                      .like('%${searchText.toUpperCase()}%') |
                  _db.clienteTable.id.like('%$searchText%') |
                  _db.clienteTable.nombreFiscal.like('%$searchText%') |
                  _db.clienteTable.nombreFiscal
                      .like('%${searchText.toUpperCase()}%')));
      query.limit(pageSize, offset: (page == 1) ? 0 : (page * pageSize));

      query.orderBy(
        [OrderingTerm.desc(_db.estadisticasUltimosPreciosTable.fecha)],
      );

      return query.asyncMap((row) async {
        final lastPriceArticuloDTO =
            row.readTable(_db.estadisticasUltimosPreciosTable);
        final clienteDTO = row.readTableOrNull(_db.clienteTable);
        return lastPriceArticuloDTO.toDomain(
          nombreCliente: clienteDTO!.nombreCliente,
          descripcion: '',
        );
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloVentasMes>> getVentasMesById(
      {required String articuloId}) async {
    try {
      final query =
          await _db.customSelect(_getVentasMesCustomSelect(), variables: [
        Variable(articuloId),
      ], readsFrom: {
        _db.estadisticasClienteUsuarioVentasTable,
      }).get();

      return query.map((row) {
        print(row.data);
        return ArticuloVentasMesDTO.fromJson(row.data).toDomain();
      }).toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloVentasCliente>> getVentasClienteById(
      {required String articuloId}) async {
    try {
      final query =
          await _db.customSelect(_getVentasClienteCustomSelect(), variables: [
        Variable(articuloId),
      ], readsFrom: {
        _db.estadisticasClienteUsuarioVentasTable,
      }).get();

      return query.map((row) {
        print(row.data);
        return ArticuloVentasClienteDTO.fromJson(row.data).toDomain();
      }).toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  String _getVentasMesCustomSelect() {
    String select = '''
SELECT mes MES
        , SUM(unidades_anyo_0) UNIDADES_ANYO
        , SUM(unidades_anyo_1) UNIDADES_ANYO_1
        , SUM(unidades_anyo_2) UNIDADES_ANYO_2
        , SUM(unidades_anyo_3) UNIDADES_ANYO_3
        , SUM(unidades_anyo_4) UNIDADES_ANYO_4
FROM (  
  ''';
    for (var mes = 1; mes <= 12; mes++) {
      if (mes != 1) {
        select += ' UNION ALL ';
      }

      select += '''
        SELECT $mes mes
                , SUM(unidades) unidades_anyo_0
                , 0 unidades_anyo_1
                , 0 unidades_anyo_2
                , 0 unidades_anyo_3
                , 0 unidades_anyo_4
    FROM estadisticas_venta WHERE articulo_id = :articuloId
      AND anyo = strftime('%Y' ,DATE())
      AND mes = $mes
  UNION ALL
    SELECT $mes mes
                , 0 unidades_anyo_0
                , SUM(unidades) unidades_anyo_1
                , 0 unidades_anyo_2
                , 0 unidades_anyo_3
                , 0 unidades_anyo_4
    FROM estadisticas_venta WHERE articulo_id = :articuloId
      AND anyo = strftime('%Y' ,DATE()) - 1
      AND mes = $mes
  UNION ALL
    SELECT $mes mes
                , 0 unidades_anyo_0
                , 0 unidades_anyo_1
                , SUM(unidades) unidades_anyo_2
                , 0 unidades_anyo_3
                , 0 unidades_anyo_4
    FROM estadisticas_venta WHERE articulo_id = :articuloId
      AND anyo = strftime('%Y' ,DATE()) - 2
      AND mes = $mes
  UNION ALL
    SELECT $mes mes
                , 0 unidades_anyo_0
                , 0 unidades_anyo_1
                , 0 unidades_anyo_2
                , SUM(unidades) unidades_anyo_3
                , 0 unidades_anyo_4
    FROM estadisticas_venta WHERE articulo_id = :articuloId
      AND anyo = strftime('%Y' ,DATE()) - 3
      AND mes = $mes
   UNION ALL
      SELECT $mes mes
                , 0 unidades_anyo_0
                , 0 unidades_anyo_1
                , 0 unidades_anyo_2
                , 0 unidades_anyo_3
                , SUM(unidades) unidades_anyo_4
    FROM estadisticas_venta WHERE articulo_id = :articuloId
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

  String _getVentasClienteCustomSelect() {
    String select = '''
SELECT CLIENTE_ID
        , NOMBRE
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
        SELECT ventas.CLIENTE_ID
                , cli.NOMBRE NOMBRE
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
      INNER JOIN clientes cli ON ventas.cliente_id = cli.cliente_id
    WHERE ventas.articulo_id = :articuloId
      AND ventas.anyo = strftime('%Y' ,DATE())
  UNION ALL
    SELECT ventas.CLIENTE_ID
                , cli.NOMBRE NOMBRE
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
    INNER JOIN clientes cli ON ventas.cliente_id = cli.cliente_id
    WHERE ventas.articulo_id = :articuloId
      AND ventas.anyo = strftime('%Y' ,DATE()) - 1
  UNION ALL
    SELECT ventas.CLIENTE_ID
                , cli.NOMBRE NOMBRE
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
    INNER JOIN clientes cli ON ventas.cliente_id = cli.cliente_id
    WHERE ventas.articulo_id = :articuloId
    AND ventas.anyo = strftime('%Y' ,DATE()) - 2
  UNION ALL
    SELECT ventas.CLIENTE_ID
                , cli.NOMBRE NOMBRE
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
    INNER JOIN clientes cli ON ventas.cliente_id = cli.cliente_id
    WHERE ventas.articulo_id = :articuloId
    AND ventas.anyo = strftime('%Y' ,DATE()) - 3

  UNION ALL
    SELECT ventas.CLIENTE_ID
                , cli.NOMBRE NOMBRE
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
    INNER JOIN clientes cli ON ventas.cliente_id = cli.cliente_id
    WHERE ventas.articulo_id = :articuloId
    AND ventas.anyo = strftime('%Y' ,DATE()) - 4
)
WHERE CLIENTE_ID IS NOT NULL
GROUP BY CLIENTE_ID, NOMBRE
ORDER BY IMPORTE_ANYO DESC
''';
    print(select);
    return select;
  }

  Future<List<ArticuloImagenDTO>> _remoteGetArticuloImagen({
    required Uri requestUri,
    required dynamic Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data) as List<dynamic>;
        return data.map((e) => ArticuloImagenDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<List<ArticuloDocumentoDTO>> _remoteGetArticuloDocumentos({
    required Uri requestUri,
    required dynamic Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data) as List<dynamic>;
        return data.map((e) => ArticuloDocumentoDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
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

  String descripcionSegunLocale(String searchText) {
    final currentLocale = Intl.getCurrentLocale();

    switch (currentLocale) {
      case 'es':
        return "art.DESCRIPCION_ES LIKE '%$searchText%'";
      case 'en':
        return "art.DESCRIPCION_EN LIKE '%$searchText%'";
      case 'fr':
        return "art.DESCRIPCION_FR LIKE '%$searchText%'";
      case 'de':
        return "art.DESCRIPCION_EN LIKE '%$searchText%'";
      case 'ca':
        return "art.DESCRIPCION_DE LIKE '%$searchText%'";
      case 'gb':
        return "art.DESCRIPCION_GB LIKE '%$searchText%'";
      case 'hu':
        return "art.DESCRIPCION_HU LIKE '%$searchText%'";
      case 'it':
        return "art.DESCRIPCION_IT LIKE '%$searchText%'";
      case 'nl':
        return "art.DESCRIPCION_NL LIKE '%$searchText%'";
      case 'pl':
        return "art.DESCRIPCION_PL LIKE '%$searchText%'";
      case 'pt':
        return "art.DESCRIPCION_PT LIKE '%$searchText%'";
      case 'ro':
        return "art.DESCRIPCION_RO LIKE '%$searchText%'";
      case 'ru':
        return "art.DESCRIPCION_RU LIKE '%$searchText%'";
      case 'cn':
        return "art.DESCRIPCION_CN LIKE '%$searchText%'";
      case 'el':
        return "art.DESCRIPCION_EL LIKE '%$searchText%'";

      default:
        return "art.DESCRIPCION_ES LIKE '%$searchText%'";
    }
  }

  Future<DateTime> getLastSyncDate() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final dateUTCString =
          sharedPreferences.getString(articuloFechaUltimaSyncKey) as String;
      return DateTime.parse(dateUTCString);
    } catch (e) {
      rethrow;
    }
  }
}
