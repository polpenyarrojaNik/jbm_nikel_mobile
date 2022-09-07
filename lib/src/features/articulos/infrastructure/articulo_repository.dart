import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_recambio.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_tarifa_precio.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_documento_dto.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../auth/infrastructure/auth_repository.dart';
import '../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../pedido_venta/domain/pedido_venta_linea.dart';
import '../domain/articulo.dart';
import '../domain/articulo_componente.dart';
import '../domain/articulo_documento.dart';
import '../domain/articulo_grupo_neto.dart';
import '../domain/articulo_imagen.dart';
import '../domain/articulo_sustitutivo.dart';
import 'articulo_imagen_dto.dart';

final articuloRepositoryProvider = Provider.autoDispose<ArticuloRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final articuloListaStreamProvider =
    StreamProvider.autoDispose<List<Articulo>>((ref) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.watchArticuloLista();
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

final articuloTarifaPrecioListProvider = FutureProvider.autoDispose
    .family<List<ArticuloTarifaPrecio>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloTarifaPrecioListaById(
      articuloId: articuloId);
});

final articuloGrupoNetoPriceListProvider = FutureProvider.autoDispose
    .family<List<ArticuloGrupoNeto>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloGrupoNetoListaById(
      articuloId: articuloId);
});

final articuloSustitutivoListProvider = FutureProvider.autoDispose
    .family<List<ArticuloSustitutivo>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloSustitutivoListaById(
      articuloId: articuloId);
});

final articuloSpareListProvider = FutureProvider.autoDispose
    .family<List<ArticuloRecambio>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloRecambioListaById(
      articuloId: articuloId);
});

final articuloImageListProvider = FutureProvider.autoDispose
    .family<List<ArticuloImagen>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final usuario = await authRepository.getSignedInUsuario();
  return articuloRepository.getArticuloImagenesListaById(
      articuloId: articuloId, provisionalToken: usuario!.provisionalToken);
});

final articuloDocumentListProvider = FutureProvider.autoDispose
    .family<List<ArticuloDocumento>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final usuario = await authRepository.getSignedInUsuario();
  return articuloRepository.getArticuloDocumentoListById(
      articuloId: articuloId, provisionalToken: usuario!.provisionalToken);
});

final articuloDocumentFileProvider =
    FutureProvider.autoDispose.family<File?, String>((ref, path) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final usuario = await authRepository.getSignedInUsuario();
  return articuloRepository.getDocumentFile(
      path: path, provisionalToken: usuario!.provisionalToken);
});

final articuloImageFileProvider =
    FutureProvider.autoDispose.family<Uint8List?, String>((ref, path) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final usuario = await authRepository.getSignedInUsuario();
  return articuloRepository.getImageFile(
      path: path, provisionalToken: usuario!.provisionalToken);
});

final articuloPedidoVentaLineaListProvider = FutureProvider.autoDispose
    .family<List<PedidoVentaLinea>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final usuario = await authRepository.getSignedInUsuario();
  return articuloRepository.getArticuloPedidoVentaById(
      articuloId: articuloId, usuarioId: usuario!.id);
});

final articuloUltimosPreciosListProvider = FutureProvider.autoDispose
    .family<List<EstadisticasUltimosPrecios>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final usuario = await authRepository.getSignedInUsuario();
  return articuloRepository.getArticuloUltimosPreciosById(
      articuloId: articuloId, usuarioId: usuario!.id);
});

final articuloUltimaSyncProvider = FutureProvider.autoDispose<DateTime>((ref) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getFechaUltimaSyncArticulo();
});

final articuloPedidoVentaUltimaSyncProvider =
    FutureProvider.autoDispose<DateTime>((ref) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getFechaUltimaSyncArticuloPedidoVenta();
});

final articuloUltimosPreciossUltimaSyncProvider =
    FutureProvider.autoDispose<DateTime>((ref) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getFechaUltimaSyncArticuloUltimosPrecios();
});

class ArticuloRepository {
  AppDatabase db;
  Dio dio;

  ArticuloRepository(this.db, this.dio);

  Stream<List<Articulo>> watchArticuloLista() {
    final query = (db.select(db.articuloTable)
      ..where(
        (t) => t.deleted.equals('N'),
      )
      ..orderBy([(t) => OrderingTerm(expression: t.id)]));

    return query.asyncMap((row) async {
      final familiaDTO = await (db.select(db.familiaTable)
            ..where((t) => t.id.equals(row.familiaId ?? '')))
          .getSingleOrNull();
      final subfamiliaDTO = await (db.select(db.subfamiliaTable)
            ..where((t) => t.id.equals(row.subfamiliaId ?? '')))
          .getSingleOrNull();
      return row.toDomain(
        familia: familiaDTO?.toDomain(),
        subfamilia: subfamiliaDTO?.toDomain(),
      );
    }).watch();
  }

  Future<Articulo> getArticuloById({required String articuloId}) async {
    final query =
        (db.select(db.articuloTable)..where((t) => t.id.equals(articuloId)));

    return query.asyncMap((row) async {
      final familiaDTO = await (db.select(db.familiaTable)
            ..where((t) => t.id.equals(row.familiaId ?? '')))
          .getSingleOrNull();
      final subfamiliaDTO = await (db.select(db.subfamiliaTable)
            ..where((t) => t.id.equals(row.subfamiliaId ?? '')))
          .getSingleOrNull();
      return row.toDomain(
        familia: familiaDTO?.toDomain(),
        subfamilia: subfamiliaDTO?.toDomain(),
      );
    }).getSingle();
  }

  Future<List<ArticuloComponente>> getArticuloComponenteListaById(
      {required String articuloId}) async {
    final query = (db.select(db.articuloComponenteTable)
      ..where((t) => t.articuloId.equals(articuloId)));

    return query.asyncMap((row) async {
      final articulo = await getArticuloById(articuloId: row.articuloId);
      final articuloComponente =
          await getArticuloById(articuloId: row.articuloComponenteId);
      return row.toDomain(
          articulo: articulo, articuloComponente: articuloComponente);
    }).get();
  }

  Future<List<ArticuloTarifaPrecio>> getArticuloTarifaPrecioListaById(
      {required String articuloId}) async {
    final query = (db.select(db.articuloTarifaPrecioTable)
      ..where((t) => t.articuloId.equals(articuloId)));

    return query.map((row) {
      return row.toDomain();
    }).get();
  }

  Future<List<ArticuloGrupoNeto>> getArticuloGrupoNetoListaById(
      {required String articuloId}) async {
    final query = (db.select(db.articuloGrupoNetoTable)
      ..where((t) => t.articuloId.equals(articuloId)));

    return query.map((row) {
      return row.toDomain();
    }).get();
  }

  Future<List<ArticuloRecambio>> getArticuloRecambioListaById(
      {required String articuloId}) async {
    final query = (db.select(db.articuloRecambioTable)
      ..where((t) => t.articuloId.equals(articuloId)));

    return query.map((row) {
      return row.toDomain();
    }).get();
  }

  Future<List<ArticuloSustitutivo>> getArticuloSustitutivoListaById(
      {required String articuloId}) async {
    final query = (db.select(db.articuloSustitutivoTable)
      ..where((t) => t.articuloId.equals(articuloId)));

    return query.asyncMap((row) async {
      final articuloSustitutivo =
          await getArticuloById(articuloId: row.articuloSustitutivoId);
      return row.toDomain(articuloSustitutivo: articuloSustitutivo);
    }).get();
  }

  Future<List<ArticuloImagen>> getArticuloImagenesListaById(
      {required String articuloId, required String provisionalToken}) async {
    final query = {'ARTICULO_ID': articuloId};
    final articuloImageDTOList = await _remoteGetArticuloImagen(
      requestUri: Uri.http(
        dotenv.get('URL', fallback: 'localhost:3001'),
        'api/v1/online/articulo/imagenes',
        query,
      ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: provisionalToken,
    );

    return articuloImageDTOList.map((e) => e.toDomain()).toList();
  }

  Future<List<ArticuloDocumento>> getArticuloDocumentoListById(
      {required String articuloId, required String provisionalToken}) async {
    final query = {'ARTICULO_ID': articuloId};
    final articuloDocumentoDTOList = await _remoteGetArticuloDocumentos(
      requestUri: Uri.http(
        dotenv.get('URL', fallback: 'localhost:3001'),
        'api/v1/online/articulo/documentos',
        query,
      ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: provisionalToken,
    );

    return articuloDocumentoDTOList.map((e) => e.toDomain()).toList();
  }

  Future<Uint8List?> getImageFile(
      {required String path, required String provisionalToken}) async {
    if (path != '') {
      final query = {'PATH': path};
      final dataImage = await _remoteGetAttachment(
          requestUri: Uri.http(
            dotenv.get('URL', fallback: 'localhost:3001'),
            'api/v1/online/adjunto',
            query,
          ),
          provisionalToken: provisionalToken);

      return Uint8List.fromList((dataImage));
    }

    return null;
  }

  Future<File?> getDocumentFile(
      {required String path, required String provisionalToken}) async {
    if (path != '') {
      final query = {'PATH': path};
      final data = await _remoteGetAttachment(
          requestUri: Uri.http(
            dotenv.get('URL', fallback: 'localhost:3001'),
            'api/v1/online/adjunto',
            query,
          ),
          provisionalToken: provisionalToken);

      final Directory cahceDirectories = await getTemporaryDirectory();

      final File file = File('${cahceDirectories.path}/$path');
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data);
      await raf.close();

      return file;
    }

    return null;
  }

  Future<List<PedidoVentaLinea>> getArticuloPedidoVentaById(
      {required String articuloId, required String usuarioId}) async {
    final query = db.select(db.pedidoVentaLineaTable).join([
      innerJoin(
          db.pedidoVentaTable,
          db.pedidoVentaTable.pedidoVentaId
              .equalsExp(db.pedidoVentaLineaTable.pedidoVentaId)),
      innerJoin(
          db.clienteUsuarioTable,
          db.clienteUsuarioTable.clienteId
              .equalsExp(db.pedidoVentaTable.clienteId))
    ]);

    query.where((db.pedidoVentaLineaTable.articuloId.equals(articuloId) &
        db.clienteUsuarioTable.usuarioId.equals(usuarioId)));

    return query.asyncMap((row) async {
      final pedidoVentaLineaDTO = row.readTable(db.pedidoVentaLineaTable);
      return pedidoVentaLineaDTO.toDomain();
    }).get();
  }

  Future<List<EstadisticasUltimosPrecios>> getArticuloUltimosPreciosById(
      {required String articuloId, required String usuarioId}) async {
    final query = db.select(db.estadisticasUltimosPreciosTable).join([
      innerJoin(
          db.clienteUsuarioTable,
          db.clienteUsuarioTable.clienteId
              .equalsExp(db.estadisticasUltimosPreciosTable.clienteId))
    ]);
    query.where(
        db.estadisticasUltimosPreciosTable.articuloId.equals(articuloId) &
            db.clienteUsuarioTable.usuarioId.equals(usuarioId));
    query.orderBy(
      [OrderingTerm.desc(db.estadisticasUltimosPreciosTable.fecha)],
    );

    return query.asyncMap((row) async {
      final lastPriceArticuloDTO =
          row.readTable(db.estadisticasUltimosPreciosTable);
      final articulo =
          await getArticuloById(articuloId: lastPriceArticuloDTO.articuloId);
      return lastPriceArticuloDTO.toDomain(articulo: articulo);
    }).get();
  }

  Future<DateTime> getFechaUltimaSyncArticulo() async {
    final date =
        (await (db.select(db.fechaUltimaSyncTable)..limit(1)).getSingle())
            .ultimaSyncArticulo;
    return DateTime.parse(date!);
  }

  Future<DateTime> getFechaUltimaSyncArticuloPedidoVenta() async {
    final date =
        (await (db.select(db.fechaUltimaSyncTable)..limit(1)).getSingle())
            .ultimaSyncPedidoVentaLinea;
    return DateTime.parse(date!);
  }

  Future<DateTime> getFechaUltimaSyncArticuloUltimosPrecios() async {
    final date =
        (await (db.select(db.fechaUltimaSyncTable)..limit(1)).getSingle())
            .ultimaSyncEstadisticasUltimosPrecios;
    return DateTime.parse(date!);
  }

  Future<List<ArticuloImagenDTO>> _remoteGetArticuloImagen({
    required Uri requestUri,
    required dynamic Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
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

  Future<List<ArticuloDocumentoDTO>> _remoteGetArticuloDocumentos({
    required Uri requestUri,
    required dynamic Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
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

  Future<List<int>> _remoteGetAttachment({
    required Uri requestUri,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
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
}
