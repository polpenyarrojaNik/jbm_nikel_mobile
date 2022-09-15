import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_recambio.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_precio_tarifa.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_documento_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_pedido_venta_linea_dto.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/domain/default_list_params.dart';
import '../../../core/exceptions/app_exception.dart';
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
import 'articulo_imagen_dto.dart';

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
  // cacheTime: const Duration(seconds: 60),
);

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
    .family<List<ArticuloPrecioTarifa>, String>((ref, articuloId) {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  return articuloRepository.getArticuloPrecioTarifaListaById(
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
      articuloId: articuloId, provisionalToken: usuario!.provisionalToken);
});

final articuloDocumentListProvider = FutureProvider.autoDispose
    .family<List<ArticuloDocumento>, String>((ref, articuloId) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getArticuloDocumentoListById(
      articuloId: articuloId, provisionalToken: usuario!.provisionalToken);
});

final articuloDocumentFileProvider =
    FutureProvider.autoDispose.family<File?, String>((ref, path) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getDocumentFile(
      path: path, provisionalToken: usuario!.provisionalToken);
});

final articuloImageFileProvider =
    FutureProvider.autoDispose.family<Uint8List?, String>((ref, path) async {
  final articuloRepository = ref.watch(articuloRepositoryProvider);

  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return articuloRepository.getImageFile(
      path: path, provisionalToken: usuario!.provisionalToken);
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
    await Future.delayed(const Duration(milliseconds: 500));
    final usuario =
        await ref.watch(usuarioServiceProvider).getSignedInUsuario();

    final articuloRepository = ref.watch(articuloRepositoryProvider);
    return articuloRepository.getArticuloUltimosPreciosById(
        articuloId: defaultListParams.entityId!,
        usuarioId: usuario!.id,
        page: defaultListParams.page,
        searchText: defaultListParams.searchText);
  },
  // cacheTime: const Duration(seconds: 60),
);

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
      final query = _db.select(_db.articuloTable);

      query.where((t) =>
          t.id.like('%$searchText%') | descripcionSegunLocale(t, searchText));
      query.limit(pageSize, offset: (page == 1) ? 0 : (page * pageSize));
      query.orderBy([(t) => OrderingTerm(expression: t.id)]);

      final articlesList = await query.asyncMap((row) async {
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
      }).get();

      articulos.addAll(articlesList);

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
        final articuloComponente =
            await getArticuloById(articuloId: row.articuloComponenteId);
        return row.toDomain(
            articuloComponenteDescripcion:
                getDescriptionInLocalLanguage(articulo: articuloComponente));
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloPrecioTarifa>> getArticuloPrecioTarifaListaById(
      {required String articuloId}) async {
    try {
      final query = (_db.select(_db.articuloPrecioTarifaTable)
        ..where((t) => t.articuloId.equals(articuloId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloGrupoNeto>> getArticuloGrupoNetoListaById(
      {required String articuloId}) async {
    try {
      final query = (_db.select(_db.articuloGrupoNetoTable)
        ..where((t) => t.articuloId.equals(articuloId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
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
                getDescriptionInLocalLanguage(articulo: articuloSustitutivo));
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloImagen>> getArticuloImagenesListaById(
      {required String articuloId, required String provisionalToken}) async {
    try {
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
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ArticuloDocumento>> getArticuloDocumentoListById(
      {required String articuloId, required String provisionalToken}) async {
    try {
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
    } catch (e) {
      rethrow;
    }
  }

  Future<Uint8List?> getImageFile(
      {required String path, required String provisionalToken}) async {
    try {
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
                .equalsExp(_db.pedidoVentaTable.clienteId))
      ]);

      query.where((_db.pedidoVentaLineaTable.articuloId.equals(articuloId) &
          _db.clienteUsuarioTable.usuarioId.equals(usuarioId)));

      return query.asyncMap((row) async {
        final pedidoVentaLineaDTO = row.readTable(_db.pedidoVentaLineaTable);
        final pedidoVentaDTO = row.readTable(_db.pedidoVentaTable);

        return ArticuloPedidoVentaLineaDTO.fromDB(
                pedidoVentaLineaDto: pedidoVentaLineaDTO,
                clienteId: pedidoVentaDTO.clienteId,
                nombreCliente: pedidoVentaDTO.nombreCliente)
            .toDomain();
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
            nombreCliente: clienteDTO?.nombreCliente);
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
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

  Expression<bool> descripcionSegunLocale(
      $ArticuloTableTable t, String searchText) {
    final currentLocale = Intl.getCurrentLocale();

    if (currentLocale == 'es') {
      return t.descripcionES.like('%${searchText.toUpperCase()}%') |
          t.descripcionES.like('%$searchText%');
    } else if (currentLocale == 'en') {
      return t.descripcionEN.like('%${searchText.toUpperCase()}%') |
          t.descripcionEN.like('%$searchText%');
    } else if (currentLocale == 'fr') {
      return t.descripcionFR.like('%${searchText.toUpperCase()}%') |
          t.descripcionFR.like('%$searchText%');
    } else if (currentLocale == 'de') {
      return t.descripcionDE.like('%${searchText.toUpperCase()}%') |
          t.descripcionDE.like('%$searchText%');
    } else if (currentLocale == 'ca') {
      return t.descripcionCA.like('%${searchText.toUpperCase()}%') |
          t.descripcionCA.like('%$searchText%');
    } else if (currentLocale == 'gb') {
      return t.descripcionGB.like('%${searchText.toUpperCase()}%') |
          t.descripcionGB.like('%$searchText%');
    } else if (currentLocale == 'hu') {
      return t.descripcionHU.like('%${searchText.toUpperCase()}%') |
          t.descripcionHU.like('%$searchText%');
    } else if (currentLocale == 'it') {
      return t.descripcionIT.like('%${searchText.toUpperCase()}%') |
          t.descripcionIT.like('%$searchText%');
    } else if (currentLocale == 'nl') {
      return t.descripcionNL.like('%${searchText.toUpperCase()}%') |
          t.descripcionNL.like('%$searchText%');
    } else if (currentLocale == 'pl') {
      return t.descripcionPL.like('%${searchText.toUpperCase()}%') |
          t.descripcionPL.like('%$searchText%');
    } else if (currentLocale == 'pt') {
      return t.descripcionPT.like('%${searchText.toUpperCase()}%') |
          t.descripcionPT.like('%$searchText%');
    } else if (currentLocale == 'ro') {
      return t.descripcionRO.like('%${searchText.toUpperCase()}%') |
          t.descripcionRO.like('%$searchText%');
    } else if (currentLocale == 'ru') {
      return t.descripcionRU.like('%${searchText.toUpperCase()}%') |
          t.descripcionRU.like('%$searchText%');
    } else if (currentLocale == 'cn') {
      return t.descripcionCN.like('%${searchText.toUpperCase()}%') |
          t.descripcionCN.like('%$searchText%');
    } else if (currentLocale == 'el') {
      return t.descripcionEL.like('%${searchText.toUpperCase()}%') |
          t.descripcionEL.like('%$searchText%');
    } else {
      return t.descripcionES.like('%${searchText.toUpperCase()}%') |
          t.descripcionES.like('%$searchText%');
    }
  }
}
