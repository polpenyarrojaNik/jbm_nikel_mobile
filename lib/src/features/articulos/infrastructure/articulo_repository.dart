import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:money2/money2.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/application/log_service.dart';
import '../../../core/domain/adjunto_param.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/infrastructure/local_database.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../../../core/infrastructure/sync_service.dart';
import '../../../core/presentation/app.dart';
import '../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../pedido_venta/domain/pedido_venta_linea_ultimos_precios_param.dart';
import '../../usuario/infrastructure/usuario_service.dart';
import '../domain/articulo.dart';
import '../domain/articulo_componente.dart';
import '../domain/articulo_documento.dart';
import '../domain/articulo_grupo_neto.dart';
import '../domain/articulo_imagen.dart';
import '../domain/articulo_pedido_venta_linea.dart';
import '../domain/articulo_precio_tarifa.dart';
import '../domain/articulo_recambio.dart';
import '../domain/articulo_sustitutivo.dart';
import '../domain/articulo_ventas_cliente.dart';
import '../domain/articulo_ventas_mes.dart';
import 'articulo_documento_dto.dart';
import 'articulo_dto.dart';
import 'articulo_grupo_neto_dto.dart';
import 'articulo_imagen_dto.dart';
import 'articulo_pedido_venta_linea_dto.dart';
import 'articulo_precio_tarifa_dto.dart';
import 'articulo_ventas_cliente_dto.dart';
import 'articulo_ventas_mes_dto.dart';
import 'articulo_ventas_mes_todos_dto.dart';

final articuloRepositoryProvider = Provider.autoDispose<ArticuloRepository>(
  (ref) {
    final remoteDb = ref.watch(appRemoteDatabaseProvider);
    final localDb = ref.watch(appLocalDatabaseProvider);
    final usuarioService = ref.watch(usuarioServiceProvider);

    final dio = ref.watch(dioProvider);
    return ArticuloRepository(
      remoteDb,
      localDb,
      dio,
      usuarioService,
    );
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

final articuloVentasMesProvider = FutureProvider.autoDispose
    .family<List<ArticuloVentasMes>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getVentasMesById(
    articuloId: articuloId,
    usuarioId: usuario!.id,
    verTotalVentas: usuario.verTotalVentas,
  );
});

final articuloVentasClienteProvider = FutureProvider.autoDispose
    .family<List<ArticuloVentasCliente>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getVentasClienteById(
    articuloId: articuloId,
    usuarioId: usuario!.id,
  );
});

final articuloUltimosPreciosProvider = FutureProvider.autoDispose
    .family<EstadisticasUltimosPrecios?, UltimosPreciosParam>(
        (ref, ultimosPreciosParam) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloUltimosPrecios(
    articuloId: ultimosPreciosParam.articuloId,
    clienteId: ultimosPreciosParam.clienteId,
  );
});

final syncAllArticuloDb = FutureProvider.autoDispose<void>((ref) async {
  final syncRepository = ref.watch(syncServiceProvider);
  return syncRepository.syncArticulos();
});

class ArticuloRepository {
  static const pageSize = 100;

  final RemoteAppDatabase _remoteDb;
  final LocalAppDatabase _localDb;
  final UsuarioService _usuario;

  final Dio _dio;

  ArticuloRepository(
    this._remoteDb,
    this._localDb,
    this._dio,
    this._usuario,
  );

  Future<List<Articulo>> getArticuloLista(
      {required int page,
      required bool isSearchArticuloForForm,
      required String searchText}) async {
    try {
      final query = await _remoteDb.customSelect('''
          SELECT art.*
          FROM ARTICULOS art
          WHERE ${descripcionSegunLocale(searchText)}
          OR art.ARTICULO_ID LIKE '%$searchText%'
          OR art.GTIN_13_UNIDAD LIKE '%$searchText%'
          OR art.GS1_128_SUBCAJA LIKE '%$searchText%'
          OR art.GS1_128_CAJA LIKE '%$searchText%'
          OR art.GS1_128_PALET LIKE '%$searchText%'
          ORDER BY 
          CASE
            WHEN art.ARTICULO_ID = '$searchText' OR art.ARTICULO_ID like'$searchText%' THEN 1
            ELSE 2
          END
          ,${isSearchArticuloForForm ? 'VENTAS_ORDEN DESC NULLS LAST,' : ''}
           art.ARTICULO_ID
          LIMIT :limit OFFSET :offset
''', variables: [
        const Variable(pageSize),
        Variable(page * pageSize),
      ], readsFrom: {
        _remoteDb.articuloTable,
      }).get();

      return await Future.wait(query.map((row) async {
        final articuloDTO = ArticuloDTO.fromJson(row.data);
        final familiaDTO = await (_remoteDb.select(_remoteDb.familiaTable)
              ..where(
                  (t) => t.id.equals(row.data['FAMILIA_ID'] as String? ?? '')))
            .getSingleOrNull();
        final subfamiliaDTO = await (_remoteDb.select(_remoteDb.subfamiliaTable)
              ..where((t) =>
                  t.id.equals(row.data['SUBFAMILIA_ID'] as String? ?? '')))
            .getSingleOrNull();
        return articuloDTO.toDomain(
            familia: familiaDTO?.toDomain(),
            subfamilia: subfamiliaDTO?.toDomain());
      }).toList());
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<int> getArticuloCountList({required String searchText}) async {
    try {
      final query = await _remoteDb.customSelect('''
          SELECT COUNT(*) as COUNT
          FROM ARTICULOS art
          WHERE ${descripcionSegunLocale(searchText)}
          OR art.ARTICULO_ID LIKE '%$searchText%'
          OR art.GTIN_13_UNIDAD LIKE '%$searchText%'
          OR art.GS1_128_SUBCAJA LIKE '%$searchText%'
          OR art.GS1_128_CAJA LIKE '%$searchText%'
          OR art.GS1_128_PALET LIKE '%$searchText%'
''', readsFrom: {
        _remoteDb.articuloTable,
      }).getSingle();

      final count = query.data['COUNT'] as int?;

      return count ?? 0;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Articulo> getArticuloById({required String articuloId}) async {
    try {
      final usuario = await _usuario.getSignedInUsuario();
      final usuarioId = usuario?.id ?? '';
      final margenComercial = usuario?.margenComercial ?? 0.0;

      final query = (_remoteDb.select(_remoteDb.articuloTable)
        ..where((t) => t.id.equals(articuloId)));

      return query.asyncMap((row) async {
        final familiaDTO = await (_remoteDb.select(_remoteDb.familiaTable)
              ..where((t) => t.id.equals(row.familiaId ?? '')))
            .getSingleOrNull();
        final subfamiliaDTO = await (_remoteDb.select(_remoteDb.subfamiliaTable)
              ..where((t) => t.id.equals(row.subfamiliaId ?? '')))
            .getSingleOrNull();

        final ventasAnyoActual =
            await _getSalesForYear(DateTime.now().year, articuloId, usuarioId);
        final ventasAnyoAnterior = await _getSalesForYear(
            DateTime.now().year - 1, articuloId, usuarioId);
        final ventasHaceDosAnyos = await _getSalesForYear(
            DateTime.now().year - 2, articuloId, usuarioId);

        final costeAnyoActual =
            await _getCostForYear(DateTime.now().year, articuloId, usuarioId);
        // margenComercial
        final costeAnyoAnterior = await _getCostForYear(
            DateTime.now().year - 1, articuloId, usuarioId);
        final costeHaceDosAnyos = await _getCostForYear(
            DateTime.now().year - 2, articuloId, usuarioId);

        final margenAnyoActual = ventasAnyoActual == 0
            ? 0.0
            : ((1 - (costeAnyoActual / ventasAnyoActual)) * 100) -
                margenComercial;
        final margenAnyoAnterior = ventasAnyoAnterior == 0
            ? 0.0
            : ((1 - (costeAnyoAnterior / ventasAnyoAnterior)) * 100) -
                margenComercial;
        final margenHaceDosAnyos = ventasHaceDosAnyos == 0
            ? 0.0
            : ((1 - (costeHaceDosAnyos / ventasHaceDosAnyos)) * 100) -
                margenComercial;

        return row
            .toDomain(
              familia: familiaDTO?.toDomain(),
              subfamilia: subfamiliaDTO?.toDomain(),
            )
            .copyWith(
              ventasAnyoActual: Money.fromNum(ventasAnyoActual, isoCode: 'EU'),
              ventasAnyoAnterior:
                  Money.fromNum(ventasAnyoAnterior, isoCode: 'EU'),
              ventasHaceDosAnyos:
                  Money.fromNum(ventasHaceDosAnyos, isoCode: 'EU'),
              margenAnyoActual: margenAnyoActual,
              margenAnyoAnterior: margenAnyoAnterior,
              margenHaceDosAnyos: margenHaceDosAnyos,
            );
      }).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<double> _getSalesForYear(
      int year, String articuloId, String usuarioId) async {
    final ventas = await _remoteDb
            .customSelect(
              '''SELECT SUM(estadisticas_venta.importe) AS ventas
FROM estadisticas_venta
WHERE estadisticas_venta.anyo = ?
AND estadisticas_venta.articulo_id = ?
AND estadisticas_venta.cliente_id IN (SELECT clientes_usuario.cliente_id
                    FROM clientes_usuario
                   WHERE clientes_usuario.usuario_id = ?)''',
              variables: [
                Variable.withInt(year),
                Variable.withString(articuloId),
                Variable.withString(usuarioId)
              ],
              readsFrom: {
                _remoteDb.estadisticasClienteUsuarioVentasTable,
              },
            )
            .map((row) => row.read<double?>('ventas'))
            .getSingleOrNull() ??
        0;

    return ventas;
  }

  Future<double> _getCostForYear(
      int year, String articuloId, String usuarioId) async {
    final coste = await _remoteDb
            .customSelect(
              '''SELECT SUM(estadisticas_venta.coste) AS coste
FROM estadisticas_venta
WHERE estadisticas_venta.anyo = ?
AND estadisticas_venta.articulo_id = ?
AND estadisticas_venta.cliente_id IN (SELECT clientes_usuario.cliente_id
                    FROM clientes_usuario
                   WHERE clientes_usuario.usuario_id = ?)''',
              variables: [
                Variable.withInt(year),
                Variable.withString(articuloId),
                Variable.withString(usuarioId)
              ],
              readsFrom: {
                _remoteDb.estadisticasClienteUsuarioVentasTable,
              },
            )
            .map((row) => row.read<double?>('coste'))
            .getSingleOrNull() ??
        0;

    return coste;
  }

  Future<List<ArticuloComponente>> getArticuloComponenteListaById(
      {required String articuloId}) async {
    try {
      final query = (_remoteDb.select(_remoteDb.articuloComponenteTable)
        ..where((t) => t.articuloId.equals(articuloId)));

      return query.asyncMap((row) async {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloPrecioTarifa>> getArticuloPrecioTarifaListaById({
    required String articuloId,
    required String usuarioId,
  }) async {
    try {
      final query = await _remoteDb.customSelect('''
SELECT *
  FROM ARTICULOS_TARIFA_PRECIO
 WHERE ARTICULOS_TARIFA_PRECIO.TARIFA_ID
       IN (SELECT DISTINCT CLIENTES.TARIFA_ID
                      FROM CLIENTES
                INNER JOIN CLIENTES_USUARIO
                        ON CLIENTES_USUARIO.CLIENTE_ID = CLIENTES.CLIENTE_ID
                       AND CLIENTES_USUARIO.USUARIO_ID = :usuarioId)
       AND ARTICULOS_TARIFA_PRECIO.ARTICULO_ID = :articuloId;
''', variables: [
        Variable(usuarioId),
        Variable(articuloId),
      ], readsFrom: {
        _remoteDb.articuloGrupoNetoTable,
        _remoteDb.clienteGrupoNetoTable
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
      final query = await _remoteDb.customSelect('''
      SELECT *
  FROM ${_remoteDb.articuloGrupoNetoTable.tableName}
 WHERE EXISTS
         (SELECT *
            FROM ${_remoteDb.clienteGrupoNetoTable.tableName}
                 INNER JOIN ${_remoteDb.clienteUsuarioTable.tableName} ON clientes_usuario.cliente_id = clientes_grupos_netos.cliente_id
           WHERE clientes_grupos_netos.grupo_neto_id = articulos_grupos_netos_precio.grupo_neto_id
             AND clientes_usuario.usuario_id = :usuarioId)
   AND articulos_grupos_netos_precio.articulo_id = :articuloId
''', variables: [
        Variable(usuarioId),
        Variable(articuloId),
      ], readsFrom: {
        _remoteDb.articuloGrupoNetoTable,
        _remoteDb.clienteGrupoNetoTable
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
      final query = (_remoteDb.select(_remoteDb.articuloRecambioTable)
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
          (_remoteDb.select(_remoteDb.articuloSustitutivoTable)..where((t) => t.articuloId.equals(articuloId)))
            ..orderBy([
              (t) => OrderingTerm(expression: t.orden),
              (t) => OrderingTerm(expression: t.articuloSustitutivoId)
            ]);

      return query.asyncMap((row) async {
        final articuloSustitutivo =
            await getArticuloById(articuloId: row.articuloSustitutivoId);
        return row.toDomain(
          articuloSustitutivoDescripcion: getDescriptionArticuloInLocalLanguage(
              articulo: articuloSustitutivo),
          stockDisponible: articuloSustitutivo.stockDisponible,
        );
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
                dotenv.get('URL', fallback: 'localhost:3001'),
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
                dotenv.get('URL', fallback: 'localhost:3001'),
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
                    dotenv.get('URL', fallback: 'localhost:3001'),
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
                    dotenv.get('URL', fallback: 'localhost:3001'),
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

          final file = await File(
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

          final file = await File(
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
      final query = _remoteDb.select(_remoteDb.pedidoVentaLineaTable).join([
        innerJoin(
            _remoteDb.pedidoVentaTable,
            (_remoteDb.pedidoVentaTable.pedidoVentaId
                    .equalsExp(_remoteDb.pedidoVentaLineaTable.pedidoId) &
                _remoteDb.pedidoVentaTable.empresaId
                    .equalsExp(_remoteDb.pedidoVentaLineaTable.empresaId))),
        innerJoin(
            _remoteDb.clienteUsuarioTable,
            _remoteDb.clienteUsuarioTable.clienteId
                .equalsExp(_remoteDb.pedidoVentaTable.clienteId)),
        innerJoin(
            _remoteDb.pedidoVentaEstadoTable,
            _remoteDb.pedidoVentaEstadoTable.id
                .equalsExp(_remoteDb.pedidoVentaTable.pedidoVentaEstadoId)),
      ]);

      query.where(
          (_remoteDb.pedidoVentaLineaTable.articuloId.equals(articuloId) &
              _remoteDb.clienteUsuarioTable.usuarioId.equals(usuarioId) &
              (_remoteDb.pedidoVentaLineaTable.cantidad -
                      _remoteDb.pedidoVentaLineaTable.cantidadServida)
                  .isBiggerThanValue(0) &
              _remoteDb.pedidoVentaEstadoTable.id.isIn([0, 1, 98, 99])));

      query.orderBy([
        OrderingTerm.asc(_remoteDb.pedidoVentaTable.pedidoVentaDate),
        OrderingTerm.asc(_remoteDb.pedidoVentaTable.pedidoVentaId),
        OrderingTerm.asc(_remoteDb.pedidoVentaLineaTable.pedidoVentaLineaId)
      ]);

      return query.asyncMap((row) async {
        final pedidoVentaLineaDTO =
            row.readTable(_remoteDb.pedidoVentaLineaTable);
        final pedidoVentaDTO = row.readTable(_remoteDb.pedidoVentaTable);
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

  Future<List<EstadisticasUltimosPrecios>> getArticuloUltimosPreciosList(
      {required String articuloId,
      required String usuarioId,
      required int page,
      required String searchText}) async {
    try {
      final query =
          _remoteDb.select(_remoteDb.estadisticasUltimosPreciosTable).join([
        innerJoin(
            _remoteDb.clienteUsuarioTable,
            _remoteDb.clienteUsuarioTable.clienteId.equalsExp(
                _remoteDb.estadisticasUltimosPreciosTable.clienteId)),
        leftOuterJoin(
            _remoteDb.clienteTable,
            _remoteDb.clienteTable.id.equalsExp(
                _remoteDb.estadisticasUltimosPreciosTable.clienteId)),
      ]);
      query.where((_remoteDb.estadisticasUltimosPreciosTable.articuloId
                  .equals(articuloId) &
              _remoteDb.clienteUsuarioTable.usuarioId.equals(usuarioId)) &
          (_remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
              _remoteDb.clienteTable.nombreCliente
                  .like('%${searchText.toUpperCase()}%') |
              _remoteDb.clienteTable.id.like('%$searchText%') |
              _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
              _remoteDb.clienteTable.nombreFiscal
                  .like('%${searchText.toUpperCase()}%')));
      query.limit(pageSize, offset: page * pageSize);

      query.orderBy(
        [OrderingTerm.desc(_remoteDb.estadisticasUltimosPreciosTable.fecha)],
      );

      return query.asyncMap((row) async {
        final lastPriceArticuloDTO =
            row.readTable(_remoteDb.estadisticasUltimosPreciosTable);
        final clienteDTO = row.readTableOrNull(_remoteDb.clienteTable);
        return lastPriceArticuloDTO.toDomain(
          nombreCliente: clienteDTO!.nombreCliente,
          descripcion: '',
        );
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<EstadisticasUltimosPrecios?> getArticuloUltimosPrecios(
      {required String articuloId, required String clienteId}) async {
    try {
      final query =
          _remoteDb.select(_remoteDb.estadisticasUltimosPreciosTable).join([
        innerJoin(
            _remoteDb.clienteUsuarioTable,
            _remoteDb.clienteUsuarioTable.clienteId.equalsExp(
                _remoteDb.estadisticasUltimosPreciosTable.clienteId)),
        leftOuterJoin(
            _remoteDb.clienteTable,
            _remoteDb.clienteTable.id.equalsExp(
                _remoteDb.estadisticasUltimosPreciosTable.clienteId)),
      ]);
      query.where((_remoteDb.estadisticasUltimosPreciosTable.articuloId
              .equals(articuloId) &
          _remoteDb.clienteTable.id.equals(clienteId)));

      query.orderBy(
        [OrderingTerm.desc(_remoteDb.estadisticasUltimosPreciosTable.fecha)],
      );

      query.limit(1);

      return query.asyncMap((row) async {
        final lastPriceArticuloDTO =
            row.readTable(_remoteDb.estadisticasUltimosPreciosTable);
        final clienteDTO = row.readTableOrNull(_remoteDb.clienteTable);
        return lastPriceArticuloDTO.toDomain(
          nombreCliente: clienteDTO!.nombreCliente,
          descripcion: '',
        );
      }).getSingleOrNull();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<int> getArticuloUltimosPreciosCountList(
      {required String articuloId,
      required String usuarioId,
      required String searchText}) async {
    try {
      final countExp =
          _remoteDb.estadisticasUltimosPreciosTable.articuloId.count();

      final query =
          _remoteDb.select(_remoteDb.estadisticasUltimosPreciosTable).join([
        innerJoin(
            _remoteDb.clienteUsuarioTable,
            _remoteDb.clienteUsuarioTable.clienteId.equalsExp(
                _remoteDb.estadisticasUltimosPreciosTable.clienteId)),
        leftOuterJoin(
            _remoteDb.clienteTable,
            _remoteDb.clienteTable.id.equalsExp(
                _remoteDb.estadisticasUltimosPreciosTable.clienteId)),
      ]);
      query.where((_remoteDb.estadisticasUltimosPreciosTable.articuloId
                  .equals(articuloId) &
              _remoteDb.clienteUsuarioTable.usuarioId.equals(usuarioId)) &
          (_remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
              _remoteDb.clienteTable.nombreCliente
                  .like('%${searchText.toUpperCase()}%') |
              _remoteDb.clienteTable.id.like('%$searchText%') |
              _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
              _remoteDb.clienteTable.nombreFiscal
                  .like('%${searchText.toUpperCase()}%')));

      query.addColumns([countExp]);

      final count = await query.map((row) => row.read(countExp)).getSingle();
      return count ?? 0;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloVentasMes>> getVentasMesById({
    required String articuloId,
    required String usuarioId,
    required bool verTotalVentas,
  }) async {
    try {
      final queryVentasMes =
          await _remoteDb.customSelect(_getVentasMesCustomSelect(), variables: [
        Variable(articuloId),
        Variable(usuarioId),
      ], readsFrom: {
        _remoteDb.estadisticasClienteUsuarioVentasTable,
      }).get();

      if (verTotalVentas) {
        final articuloVentaMesList = <ArticuloVentasMes>[];

        final queryVentasMesTodos = await _remoteDb
            .customSelect(_getVentasMesAllCustomSelect(), variables: [
          Variable(articuloId),
          Variable(usuarioId),
        ], readsFrom: {
          _remoteDb.estadisticasClienteUsuarioVentasTable,
        }).get();

        final ventasMesTodos = queryVentasMesTodos.map((row) {
          return ArticuloVentasMesTodosDTO.fromJson(row.data).toDomain();
        }).toList();

        for (var i = 0; i < queryVentasMes.length; i++) {
          articuloVentaMesList.add(
              ArticuloVentasMesDTO.fromJson(queryVentasMes[i].data)
                  .toDomain(articulosVentasMesTodos: ventasMesTodos[i]));
        }

        return articuloVentaMesList;
      }

      return queryVentasMes.map((row) {
        return ArticuloVentasMesDTO.fromJson(row.data).toDomain();
      }).toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloVentasCliente>> getVentasClienteById({
    required String articuloId,
    required String usuarioId,
  }) async {
    try {
      final query = await _remoteDb
          .customSelect(_getVentasClienteCustomSelect(), variables: [
        Variable(articuloId),
        Variable(usuarioId)
      ], readsFrom: {
        _remoteDb.estadisticasClienteUsuarioVentasTable,
      }).get();

      return query
          .map((row) => ArticuloVentasClienteDTO.fromJson(row.data).toDomain())
          .toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  String _getVentasMesCustomSelect() {
    var select = '''
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
SELECT $mes          mes,
       Sum(unidades) unidades_anyo_0,
       0             unidades_anyo_1,
       0             unidades_anyo_2,
       0             unidades_anyo_3,
       0             unidades_anyo_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date())
       AND mes = $mes
       AND EXISTS (SELECT *
                   FROM   clientes_usuario
                   WHERE  clientes_usuario.cliente_id =
                          estadisticas_venta.cliente_id
                          AND clientes_usuario.usuario_id = :usuarioId)
UNION ALL
SELECT $mes          mes,
       0             unidades_anyo_0,
       Sum(unidades) unidades_anyo_1,
       0             unidades_anyo_2,
       0             unidades_anyo_3,
       0             unidades_anyo_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date()) - 1
       AND mes = $mes
       AND EXISTS (SELECT *
                   FROM   clientes_usuario
                   WHERE  clientes_usuario.cliente_id =
                          estadisticas_venta.cliente_id
                          AND clientes_usuario.usuario_id = :usuarioId)
UNION ALL
SELECT $mes          mes,
       0             unidades_anyo_0,
       0             unidades_anyo_1,
       Sum(unidades) unidades_anyo_2,
       0             unidades_anyo_3,
       0             unidades_anyo_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date()) - 2
       AND mes = $mes
       AND EXISTS (SELECT *
                   FROM   clientes_usuario
                   WHERE  clientes_usuario.cliente_id =
                          estadisticas_venta.cliente_id
                          AND clientes_usuario.usuario_id = :usuarioId)
UNION ALL
SELECT $mes          mes,
       0             unidades_anyo_0,
       0             unidades_anyo_1,
       0             unidades_anyo_2,
       Sum(unidades) unidades_anyo_3,
       0             unidades_anyo_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date()) - 3
       AND mes = $mes
       AND EXISTS (SELECT *
                   FROM   clientes_usuario
                   WHERE  clientes_usuario.cliente_id =
                          estadisticas_venta.cliente_id
                          AND clientes_usuario.usuario_id = :usuarioId)
UNION ALL
SELECT $mes          mes,
       0             unidades_anyo_0,
       0             unidades_anyo_1,
       0             unidades_anyo_2,
       0             unidades_anyo_3,
       Sum(unidades) unidades_anyo_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date()) - 4
       AND mes = $mes
       AND EXISTS (SELECT *
                   FROM   clientes_usuario
                   WHERE  clientes_usuario.cliente_id =
                          estadisticas_venta.cliente_id
                          AND clientes_usuario.usuario_id = :usuarioId)
''';
    }
    select += '''
)
GROUP BY mes
''';
    log.i('VENTAS-MES SELECT: $select');

    return select;
  }

  String _getVentasMesAllCustomSelect() {
    var select = '''
SELECT mes MES
        , SUM(unidades_anyo_todos_0) UNIDADES_ANYO_TODOS
        , SUM(unidades_anyo_todos_1) UNIDADES_ANYO_TODOS_1
        , SUM(unidades_anyo_todos_2) UNIDADES_ANYO_TODOS_2
        , SUM(unidades_anyo_todos_3) UNIDADES_ANYO_TODOS_3
        , SUM(unidades_anyo_todos_4) UNIDADES_ANYO_TODOS_4
FROM (
  ''';
    for (var mes = 1; mes <= 12; mes++) {
      if (mes != 1) {
        select += ' UNION ALL ';
      }

      select += '''
SELECT $mes          mes,
       Sum(unidades) unidades_anyo_todos_0,
       0             unidades_anyo_todos_1,
       0             unidades_anyo_todos_2,
       0             unidades_anyo_todos_3,
       0             unidades_anyo_todos_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date())
       AND mes = $mes
       AND EXISTS (SELECT *
                   FROM   clientes_usuario
                   WHERE  clientes_usuario.cliente_id =
                          estadisticas_venta.cliente_id
                          AND clientes_usuario.usuario_id = :usuarioId)
UNION ALL
SELECT $mes          mes,
       0             unidades_anyo_todos_0,
       Sum(unidades) unidades_anyo_todos_1,
       0             unidades_anyo_todos_2,
       0             unidades_anyo_todos_3,
       0             unidades_anyo_todos_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date()) - 1
       AND mes = $mes
UNION ALL
SELECT $mes          mes,
       0             unidades_anyo_todos_0,
       0             unidades_anyo_todos_1,
       Sum(unidades) unidades_anyo_todos_2,
       0             unidades_anyo_todos_3,
       0             unidades_anyo_todos_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date()) - 2
       AND mes = $mes
UNION ALL
SELECT $mes          mes,
       0             unidades_anyo_todos_0,
       0             unidades_anyo_todos_1,
       0             unidades_anyo_todos_2,
       Sum(unidades) unidades_anyo_todos_3,
       0             unidades_anyo_todos_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date()) - 3
       AND mes = $mes
UNION ALL
SELECT $mes          mes,
       0             unidades_anyo_todos_0,
       0             unidades_anyo_todos_1,
       0             unidades_anyo_todos_2,
       0             unidades_anyo_todos_3,
       Sum(unidades) unidades_anyo_todos_4
FROM   estadisticas_venta
WHERE  articulo_id = :articuloId
       AND anyo = Strftime('%Y', Date()) - 4
       AND mes = $mes
''';
    }
    select += '''
)
GROUP BY mes
''';

    log.i('ALL SELECT: $select');
    return select;
  }

  String _getVentasClienteCustomSelect() {
    const select = '''
SELECT CLIENTE_ID,
       NOMBRE,
       SUM(IMPORTE_ANYO_0)  IMPORTE_ANYO,
       SUM(IMPORTE_ANYO_1)  IMPORTE_ANYO_1,
       SUM(IMPORTE_ANYO_2)  IMPORTE_ANYO_2,
       SUM(IMPORTE_ANYO_3)  IMPORTE_ANYO_3,
       SUM(IMPORTE_ANYO_4)  IMPORTE_ANYO_4,
       SUM(UNIDADES_ANYO_0) CANTIDAD_ANYO,
       SUM(UNIDADES_ANYO_1) CANTIDAD_ANYO_1,
       SUM(UNIDADES_ANYO_2) CANTIDAD_ANYO_2,
       SUM(UNIDADES_ANYO_3) CANTIDAD_ANYO_3,
       SUM(UNIDADES_ANYO_4) CANTIDAD_ANYO_4
FROM   (SELECT VENTAS.CLIENTE_ID,
               CLI.NOMBRE      NOMBRE,
               VENTAS.IMPORTE  IMPORTE_ANYO_0,
               0               IMPORTE_ANYO_1,
               0               IMPORTE_ANYO_2,
               0               IMPORTE_ANYO_3,
               0               IMPORTE_ANYO_4,
               VENTAS.UNIDADES UNIDADES_ANYO_0,
               0               UNIDADES_ANYO_1,
               0               UNIDADES_ANYO_2,
               0               UNIDADES_ANYO_3,
               0               UNIDADES_ANYO_4
        FROM   ESTADISTICAS_VENTA VENTAS
               INNER JOIN CLIENTES CLI
                       ON VENTAS.CLIENTE_ID = CLI.CLIENTE_ID
        WHERE  VENTAS.ARTICULO_ID = :ARTICULOID
               AND VENTAS.ANYO = STRFTIME('%Y', DATE())
               AND EXISTS (SELECT *
                           FROM   CLIENTES_USUARIO
                           WHERE  CLIENTES_USUARIO.CLIENTE_ID =
                                  VENTAS.CLIENTE_ID
                                  AND CLIENTES_USUARIO.USUARIO_ID = :USUARIOID)
        UNION ALL
        SELECT VENTAS.CLIENTE_ID,
               CLI.NOMBRE      NOMBRE,
               0               IMPORTE_ANYO_0,
               VENTAS.IMPORTE  IMPORTE_ANYO_1,
               0               IMPORTE_ANYO_2,
               0               IMPORTE_ANYO_3,
               0               IMPORTE_ANYO_4,
               0               UNIDADES_ANYO_0,
               VENTAS.UNIDADES UNIDADES_ANYO_1,
               0               UNIDADES_ANYO_2,
               0               UNIDADES_ANYO_3,
               0               UNIDADES_ANYO_4
        FROM   ESTADISTICAS_VENTA VENTAS
               INNER JOIN CLIENTES CLI
                       ON VENTAS.CLIENTE_ID = CLI.CLIENTE_ID
        WHERE  VENTAS.ARTICULO_ID = :ARTICULOID
               AND VENTAS.ANYO = STRFTIME('%Y', DATE()) - 1
               AND EXISTS (SELECT *
                           FROM   CLIENTES_USUARIO
                           WHERE  CLIENTES_USUARIO.CLIENTE_ID =
                                  VENTAS.CLIENTE_ID
                                  AND CLIENTES_USUARIO.USUARIO_ID = :USUARIOID)
        UNION ALL
        SELECT VENTAS.CLIENTE_ID,
               CLI.NOMBRE      NOMBRE,
               0               IMPORTE_ANYO_0,
               0               IMPORTE_ANYO_1,
               VENTAS.IMPORTE  IMPORTE_ANYO_2,
               0               IMPORTE_ANYO_3,
               0               IMPORTE_ANYO_4,
               0               UNIDADES_ANYO_0,
               0               UNIDADES_ANYO_1,
               VENTAS.UNIDADES UNIDADES_ANYO_2,
               0               UNIDADES_ANYO_3,
               0               UNIDADES_ANYO_4
        FROM   ESTADISTICAS_VENTA VENTAS
               INNER JOIN CLIENTES CLI
                       ON VENTAS.CLIENTE_ID = CLI.CLIENTE_ID
        WHERE  VENTAS.ARTICULO_ID = :ARTICULOID
               AND VENTAS.ANYO = STRFTIME('%Y', DATE()) - 2
               AND EXISTS (SELECT *
                           FROM   CLIENTES_USUARIO
                           WHERE  CLIENTES_USUARIO.CLIENTE_ID =
                                  VENTAS.CLIENTE_ID
                                  AND CLIENTES_USUARIO.USUARIO_ID = :USUARIOID)
        UNION ALL
        SELECT VENTAS.CLIENTE_ID,
               CLI.NOMBRE      NOMBRE,
               0               IMPORTE_ANYO_0,
               0               IMPORTE_ANYO_1,
               0               IMPORTE_ANYO_2,
               VENTAS.IMPORTE  IMPORTE_ANYO_3,
               0               IMPORTE_ANYO_4,
               0               UNIDADES_ANYO_0,
               0               UNIDADES_ANYO_1,
               0               UNIDADES_ANYO_2,
               VENTAS.UNIDADES UNIDADES_ANYO_3,
               0               UNIDADES_ANYO_4
        FROM   ESTADISTICAS_VENTA VENTAS
               INNER JOIN CLIENTES CLI
                       ON VENTAS.CLIENTE_ID = CLI.CLIENTE_ID
        WHERE  VENTAS.ARTICULO_ID = :ARTICULOID
               AND VENTAS.ANYO = STRFTIME('%Y', DATE()) - 3
               AND EXISTS (SELECT *
                           FROM   CLIENTES_USUARIO
                           WHERE  CLIENTES_USUARIO.CLIENTE_ID =
                                  VENTAS.CLIENTE_ID
                                  AND CLIENTES_USUARIO.USUARIO_ID = :USUARIOID)
        UNION ALL
        SELECT VENTAS.CLIENTE_ID,
               CLI.NOMBRE      NOMBRE,
               0               IMPORTE_ANYO_0,
               0               IMPORTE_ANYO_1,
               0               IMPORTE_ANYO_2,
               0               IMPORTE_ANYO_3,
               VENTAS.IMPORTE  IMPORTE_ANYO_4,
               0               UNIDADES_ANYO_0,
               0               UNIDADES_ANYO_1,
               0               UNIDADES_ANYO_2,
               0               UNIDADES_ANYO_3,
               VENTAS.UNIDADES UNIDADES_ANYO_4
        FROM   ESTADISTICAS_VENTA VENTAS
               INNER JOIN CLIENTES CLI
                       ON VENTAS.CLIENTE_ID = CLI.CLIENTE_ID
        WHERE  VENTAS.ARTICULO_ID = :ARTICULOID
               AND VENTAS.ANYO = STRFTIME('%Y', DATE()) - 4
               AND EXISTS (SELECT *
                           FROM   CLIENTES_USUARIO
                           WHERE  CLIENTES_USUARIO.CLIENTE_ID =
                                  VENTAS.CLIENTE_ID
                                  AND CLIENTES_USUARIO.USUARIO_ID = :USUARIOID))
WHERE  CLIENTE_ID IS NOT NULL
GROUP  BY CLIENTE_ID,
          NOMBRE
ORDER  BY IMPORTE_ANYO DESC
''';

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
        return data
            .map((e) => ArticuloImagenDTO.fromJson(e as Map<String, dynamic>))
            .toList();
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
        return data
            .map(
                (e) => ArticuloDocumentoDTO.fromJson(e as Map<String, dynamic>))
            .toList();
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
        return response.data as List<int>;
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

    final stringList = searchText.split(' ');

    switch (currentLocale) {
      case 'es':
        var sqlWhere = '';
        for (var i = 0; i < stringList.length; i++) {
          if (i > 0 && i < stringList.length) {
            sqlWhere += " OR art.DESCRIPCION_ES LIKE '%${stringList[i]}%'";
          } else {
            sqlWhere += "art.DESCRIPCION_ES LIKE '%${stringList[i]}%'";
          }
        }

        return sqlWhere;
      case 'en':
        var sqlWhere = '';
        for (var i = 0; i < stringList.length; i++) {
          if (i > 0 && i < stringList.length) {
            sqlWhere += " OR art.DESCRIPCION_EN LIKE '%${stringList[i]}%'";
          } else {
            sqlWhere += "art.DESCRIPCION_EN LIKE '%${stringList[i]}%'";
          }
        }

        return sqlWhere;
      case 'fr':
        var sqlWhere = '';
        for (var i = 0; i < stringList.length; i++) {
          if (i > 0 && i < stringList.length) {
            sqlWhere += " OR art.DESCRIPCION_FR LIKE '%${stringList[i]}%'";
          } else {
            sqlWhere += "art.DESCRIPCION_FR LIKE '%${stringList[i]}%'";
          }
        }

        return sqlWhere;
      case 'de':
        var sqlWhere = '';
        for (var i = 0; i < stringList.length; i++) {
          if (i > 0 && i < stringList.length) {
            sqlWhere += " OR art.DESCRIPCION_EN LIKE '%${stringList[i]}%'";
          } else {
            sqlWhere += "art.DESCRIPCION_EN LIKE '%${stringList[i]}%'";
          }
        }

        return sqlWhere;

      case 'it':
        var sqlWhere = '';
        for (var i = 0; i < stringList.length; i++) {
          if (i > 0 && i < stringList.length) {
            sqlWhere += " OR art.DESCRIPCION_IT LIKE '%${stringList[i]}%'";
          } else {
            sqlWhere += "art.DESCRIPCION_IT LIKE '%${stringList[i]}%'";
          }
        }

        return sqlWhere;

      default:
        var sqlWhere = '';
        for (var i = 0; i < stringList.length; i++) {
          if (i > 0 && i < stringList.length) {
            sqlWhere += " OR art.DESCRIPCION_ES LIKE '%${stringList[i]}%'";
          } else {
            sqlWhere += "art.DESCRIPCION_ES LIKE '%${stringList[i]}%'";
          }
        }

        return sqlWhere;
    }
  }

  Future<DateTime> getLastSyncDate() async {
    try {
      final lastSyncDTO =
          await _localDb.select(_localDb.syncDateTimeTable).getSingle();
      return lastSyncDTO.articuloUltimaSync;
    } catch (e) {
      rethrow;
    }
  }
}
