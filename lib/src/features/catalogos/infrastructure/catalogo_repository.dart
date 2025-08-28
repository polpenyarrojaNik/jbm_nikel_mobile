import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../../../core/application/log_service.dart';
import '../../../core/domain/adjunto_param.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/helpers/error_logger.dart';
import '../../../core/infrastructure/local_database.dart';
import '../../../core/presentation/app.dart';
import '../../usuario/application/usuario_notifier.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/catalogo.dart';
import '../domain/idioma_catalogo.dart';
import '../domain/tipo_catalogo.dart';
import '../domain/tipo_precio_catalogo.dart';
import 'catalogo_dto.dart';
import 'catalogo_orden_dto.dart';
import 'idioma_catalogo_dto.dart';
import 'tipo_catalogo_dto.dart';
import 'tipo_catalogo_precio_dto.dart';

typedef Json = Map<String, dynamic>;

final catalogoRepositoryProvider = Provider.autoDispose<CatalogoRepository>((
  ref,
) {
  final localDb = ref.watch(appLocalDatabaseProvider);
  final dio = ref.watch(dioProvider);
  final usuario = ref.watch(usuarioNotifierProvider)!;

  return CatalogoRepository(
    dio,
    localDb,
    usuario,
    ref.watch(errorLoggerProvider),
  );
});

final tipoCatalogoListProvider = FutureProvider.autoDispose<List<TipoCatalogo>>(
  (ref) async {
    final catalogoRepsitory = ref.watch(catalogoRepositoryProvider);

    return catalogoRepsitory.getTipoCatalogoList();
  },
);

final tipoPrecioCatalogoListProvider =
    FutureProvider.autoDispose<List<TipoPrecioCatalogo>>((ref) async {
      final catalogoRepsitory = ref.watch(catalogoRepositoryProvider);

      return catalogoRepsitory.getTipoPrecioCatalogoList();
    });

final idiomaCatalogoListProvider =
    FutureProvider.autoDispose<List<IdiomaCatalogo>>((ref) async {
      final catalogoRepsitory = ref.watch(catalogoRepositoryProvider);

      return catalogoRepsitory.getIdiomaCatalogoList();
    });

class CatalogoRepository {
  final Dio _dio;
  final LocalAppDatabase _localDb;
  final Usuario _usuario;
  final ErrorLogger errorLogger;

  CatalogoRepository(this._dio, this._localDb, this._usuario, this.errorLogger);

  Future<List<Catalogo>> getCatalogoList({
    TipoCatalogo? tipoCatalogo,
    TipoPrecioCatalogo? tipoPrecioCatalogo,
    IdiomaCatalogo? idiomaCatalogo,
    String? searchText,
  }) async {
    try {
      final query = _setCatalogoQueryParams(
        tipoCatalogo: tipoCatalogo,
        tipoPrecioCatalogo: tipoPrecioCatalogo,
        idiomaCatalogo: idiomaCatalogo,
        searchText: searchText,
      );

      final catalogosDTOList = await _remoteCatalogosList(
        requestUri:
            (_usuario.test)
                ? Uri.http(
                  dotenv.get('URL', fallback: 'localhost:3001'),
                  'api/v2/online/catalogo',
                  query,
                )
                : Uri.https(
                  dotenv.get('URL', fallback: 'localhost:3001'),
                  'api/v2/online/catalogo',
                  query,
                ),
        jsonDataSelector: (json) => json['data'] as List<dynamic>,
        provisionalToken: _usuario.provisionalToken,
      );

      final catalogosList =
          catalogosDTOList
              .map(
                (e) => e.toDomain(
                  test: _usuario.test,
                  tipoPrecioCatalogo: tipoPrecioCatalogo?.descripcion,
                ),
              )
              .toList();

      final favoriteLocalList = await _getLocalFavoriteList(
        // tipoCatalogo: tipoCatalogo,
        // tipoPrecioCatalogo: tipoPrecioCatalogo,
        // idiomaCatalogo: idiomaCatalogo,
        // searchText: searchText,
      );

      final catalogoOrdenAbiertoList = await _getCatalogoOrdenDTOList();

      catalogosList.sort(
        (a, b) => _orderByCatalogos(
          a,
          b,
          favoriteLocalList,
          catalogoOrdenAbiertoList,
        ),
      );

      return catalogosList;
    } on AppException catch (e, stackTrace) {
      return e.maybeWhen(
        orElse: () => Error.throwWithStackTrace(e, stackTrace),
        notConnection: () async {
          final favoriteLocalList = await _getLocalFavoriteList(
            // tipoCatalogo: tipoCatalogo,
            // tipoPrecioCatalogo: tipoPrecioCatalogo,
            // idiomaCatalogo: idiomaCatalogo,
            // searchText: searchText,
          );
          return favoriteLocalList
              .map(
                (e) => e.toDomain(
                  test: false,
                  tipoPrecioCatalogo: tipoPrecioCatalogo?.descripcion,
                ),
              )
              .toList();
        },
      );
    } catch (error) {
      rethrow;
    }
  }

  Future<List<TipoCatalogo>> getTipoCatalogoList() async {
    final tipoCatalogoDTOList = await _remoteTipoCatalogosList(
      requestUri:
          (_usuario.test)
              ? Uri.http(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/catalogo/tipo',
              )
              : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/catalogo/tipo',
              ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: _usuario.provisionalToken,
    );

    return tipoCatalogoDTOList.map((e) => e.toDomain()).toList();
  }

  Future<List<TipoPrecioCatalogo>> getTipoPrecioCatalogoList() async {
    final tipoPrecioCatalogoDTOList = await _remoteTipoPrecioCatalogosList(
      requestUri:
          (_usuario.test)
              ? Uri.http(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/catalogo/precio',
              )
              : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/catalogo/precio',
              ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: _usuario.provisionalToken,
    );
    return tipoPrecioCatalogoDTOList.map((e) => e.toDomain()).toList();
  }

  Future<List<IdiomaCatalogo>> getIdiomaCatalogoList() async {
    final idiomaCatalogoDTOList = await _remoteIdiomaCatalogosList(
      requestUri:
          (_usuario.test)
              ? Uri.http(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/catalogo/idioma',
              )
              : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/catalogo/idioma',
              ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: _usuario.provisionalToken,
    );

    return idiomaCatalogoDTOList.map((e) => e.toDomain()).toList();
  }

  Future<File?> getDocumentFile({
    required AdjuntoParam adjuntoParam,
    required String provisionalToken,
    required bool test,
  }) async {
    if (adjuntoParam.nombreArchivo != '') {
      final cahceDirectories = await getTemporaryDirectory();
      final documentDirectories = await getApplicationDocumentsDirectory();

      if (fileExistInLocal(adjuntoParam, documentDirectories)) {
        try {
          final filePath =
              '${documentDirectories.path}/catalogos/${adjuntoParam.id}/${adjuntoParam.nombreArchivo ?? ""}';

          final file = File(filePath);

          return file;
        } catch (e, stackTrace) {
          Error.throwWithStackTrace(
            AppException.createFileInCacheFailure(e.toString()),
            stackTrace,
          );
        }
      } else if (fileExistInLocal(adjuntoParam, cahceDirectories)) {
        try {
          final filePath =
              '${cahceDirectories.path}/catalogos/${adjuntoParam.id}/${adjuntoParam.nombreArchivo ?? ''}';

          final file = File(filePath);

          return file;
        } catch (e, stackTrace) {
          Error.throwWithStackTrace(
            AppException.createFileInCacheFailure(e.toString()),
            stackTrace,
          );
        }
      } else {
        final query = {'NOMBRE_ARCHIVO': adjuntoParam.nombreArchivo};
        final data = await _remoteGetAttachment(
          requestUri:
              (test)
                  ? Uri.http(
                    dotenv.get('URL', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/catalogo/${adjuntoParam.id}',
                    query,
                  )
                  : Uri.https(
                    dotenv.get('URL', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/catalogo/${adjuntoParam.id}',
                    query,
                  ),
          provisionalToken: provisionalToken,
        );

        return saveDocumentInLocal(data, adjuntoParam, cahceDirectories);
      }
    }

    return null;
  }

  bool fileExistInLocal(AdjuntoParam adjuntoParam, Directory directory) {
    final filePath =
        '${directory.path}/catalogos/${adjuntoParam.id}/${adjuntoParam.nombreArchivo ?? ''}';

    final file = File(filePath);

    return file.existsSync();
  }

  Future<void> setCatalogoToFavorite(Catalogo catalogo) async {
    await _localDb
        .into(_localDb.catalogoFavoritoTable)
        .insertOnConflictUpdate(CatalogoDTO.fromDomain(catalogo));

    final documentDirectory = await getApplicationDocumentsDirectory();

    final adjuntoParam = AdjuntoParam(
      id: catalogo.catalogoId.toString(),
      nombreArchivo: catalogo.nombreFicheroCatalogo,
      descarga: catalogo.descarga,
    );

    if (!fileExistInLocal(adjuntoParam, documentDirectory)) {
      final query = {'NOMBRE_ARCHIVO': adjuntoParam.nombreArchivo};
      final data = await _remoteGetAttachment(
        requestUri: Uri.http(
          dotenv.get('URL', fallback: 'localhost:3001'),
          'api/v1/online/adjunto/catalogo/${adjuntoParam.id}',
          query,
        ),
        provisionalToken: _usuario.provisionalToken,
      );
      await saveDocumentInLocal(data, adjuntoParam, documentDirectory);
    }
  }

  Future<void> removeCatalogoFavorito(AdjuntoParam adjuntoParam) async {
    try {
      await (_localDb.delete(_localDb.catalogoFavoritoTable)..where(
        (tbl) => tbl.catalogoId.equals(int.parse(adjuntoParam.id)),
      )).go();

      await remoteFavoriteFileFromLocal(adjuntoParam);
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.insertDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<bool> isCatalogoFavorite({required int catalogoId}) async {
    try {
      final query =
          await (_localDb.select(_localDb.catalogoFavoritoTable)
            ..where((tbl) => tbl.catalogoId.equals(catalogoId))).get();

      return query.isNotEmpty;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<CatalogoDTO>> _getLocalFavoriteList(
    // {
    // TipoCatalogo? tipoCatalogo,
    // TipoPrecioCatalogo? tipoPrecioCatalogo,
    // IdiomaCatalogo? idiomaCatalogo,
    // String? searchText,
    // }
  ) async {
    try {
      final query = _localDb.select(_localDb.catalogoFavoritoTable);

      // if (tipoCatalogo != null && tipoCatalogo.tipoCatalogoId != '00') {
      //   query.where((tbl) => tbl-)
      // }

      // if (tipoPrecioCatalogo != null &&
      //     tipoPrecioCatalogo.tipoPrecioCatalogoId != '00') {
      //   query.addAll(
      //       {'tipoPrecioCatalogo': tipoPrecioCatalogo.tipoPrecioCatalogoId});
      // }

      // if (idiomaCatalogo != null && idiomaCatalogo.idiomaId != '00') {
      //   query.addAll({'idiomaId': idiomaCatalogo.idiomaId});
      // }

      // if (searchText != null) {
      //   query.addAll({'busqueda': searchText});
      // }

      return await query.get();
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fetchLocalDataFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<CatalogoDTO>> _remoteCatalogosList({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
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
        final data = jsonDataSelector(response.data);
        return data.map((e) => CatalogoDTO.fromJson(e as Json)).toList();
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

  Future<List<TipoCatalogoDTO>> _remoteTipoCatalogosList({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
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
        final data = jsonDataSelector(response.data);
        return data.map((e) => TipoCatalogoDTO.fromJson(e as Json)).toList();
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

  Future<List<TipoPrecioCatalogoDTO>> _remoteTipoPrecioCatalogosList({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
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
        final data = jsonDataSelector(response.data);
        return data
            .map((e) => TipoPrecioCatalogoDTO.fromJson(e as Json))
            .toList();
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

  Future<List<IdiomaCatalogoDTO>> _remoteIdiomaCatalogosList({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
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
        final data = jsonDataSelector(response.data);
        return data.map((e) => IdiomaCatalogoDTO.fromJson(e as Json)).toList();
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

  int _orderByCatalogos(
    Catalogo a,
    Catalogo b,
    List<CatalogoDTO> favoriteLocalList,
    List<CatalogoOrdenDTO> catalogoOrdenList,
  ) {
    final priorityA = getPriority(
      a.catalogoId,
      favoriteLocalList,
      catalogoOrdenList,
    );
    final priorityB = getPriority(
      b.catalogoId,
      favoriteLocalList,
      catalogoOrdenList,
    );

    if (priorityA.compareTo(priorityB) == 0) {
      if (priorityA == 1 || priorityA == 3) {
        return _getFechaAbierto(
          b.catalogoId,
          catalogoOrdenList,
        ).compareTo(_getFechaAbierto(a.catalogoId, catalogoOrdenList));
      } else if (priorityA == 4 && priorityB == 4) {
        return a.orden.compareTo(b.orden);
      }
    }

    return priorityA.compareTo(priorityB);
  }

  Map<String, String> _setCatalogoQueryParams({
    TipoCatalogo? tipoCatalogo,
    TipoPrecioCatalogo? tipoPrecioCatalogo,
    IdiomaCatalogo? idiomaCatalogo,
    String? searchText,
  }) {
    log.d('Locale ${Intl.getCurrentLocale()}');
    final query = {
      'idiomaDispositivo': Intl.getCurrentLocale().toUpperCase(),
      'usuarioId': _usuario.id,
    };

    if (tipoCatalogo != null && tipoCatalogo.tipoCatalogoId != '00') {
      query['tipoCatalogo'] = tipoCatalogo.tipoCatalogoId;
    }

    if (tipoPrecioCatalogo != null &&
        tipoPrecioCatalogo.tipoPrecioCatalogoId != '00') {
      query['tipoPrecioCatalogo'] = tipoPrecioCatalogo.tipoPrecioCatalogoId;
    }

    if (idiomaCatalogo != null && idiomaCatalogo.idiomaId != '00') {
      query['idiomaId'] = idiomaCatalogo.idiomaId;
    } else {
      if (idiomaCatalogo?.idiomaId != '00') {
        query['idiomaId'] = _usuario.idiomaId;
      }
    }

    if (searchText != null) {
      query['busqueda'] = searchText.toUpperCase();
    }

    return query;
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

  Future<List<CatalogoOrdenDTO>> _getCatalogoOrdenDTOList() {
    return (_localDb.select(_localDb.catalogoOrdenTable)
      ..orderBy([(tbl) => OrderingTerm.asc(tbl.fechaAbierto)])).get();
  }

  Future<Either<AppException, Unit>> saveCatalogoAbierto(int catalogoId) async {
    try {
      await _localDb
          .into(_localDb.catalogoOrdenTable)
          .insertOnConflictUpdate(
            CatalogoOrdenDTO(
              catalogoId: catalogoId,
              fechaAbierto: DateTime.now(),
            ),
          );
      return right(unit);
    } catch (e) {
      if (e is AppException) {
        return left(e);
      }
      return left(AppException.unexpectedError());
    }
  }

  int getPriority(
    int catalogoId,
    List<CatalogoDTO> catalogoFavoritoDTOList,
    List<CatalogoOrdenDTO> catalogoOrdenList,
  ) {
    final isAbierto = _isCatalogoAbierto(catalogoId, catalogoOrdenList);
    final isFavorito = _isCatalogoFavorito(catalogoId, catalogoFavoritoDTOList);

    if (isAbierto && isFavorito) {
      return 1;
    } else if (isFavorito) {
      return 2;
    } else if (isAbierto) {
      return 3;
    }
    return 4;
  }

  bool _isCatalogoFavorito(
    int catalogoId,
    List<CatalogoDTO> catalogoFavoritoDTOList,
  ) {
    return catalogoFavoritoDTOList.any((f) => f.catalogoId == catalogoId);
  }

  bool _isCatalogoAbierto(
    int catalogoId,
    List<CatalogoOrdenDTO> catalogoOrdenAbiertoList,
  ) {
    return catalogoOrdenAbiertoList.any((f) => f.catalogoId == catalogoId);
  }

  DateTime _getFechaAbierto(
    int catalogoId,
    List<CatalogoOrdenDTO> catalogoOrdenAbiertoList,
  ) {
    return catalogoOrdenAbiertoList
        .firstWhere(
          (catalogoOrdenAbierto) =>
              catalogoOrdenAbierto.catalogoId == catalogoId,
        )
        .fechaAbierto;
  }

  Future<File> saveDocumentInLocal(
    List<int> data,
    AdjuntoParam adjuntoParam,
    Directory directory,
  ) async {
    try {
      final file = await File(
        '${directory.path}/catalogos/${adjuntoParam.id}/${adjuntoParam.nombreArchivo ?? ''}',
      ).create(recursive: true);

      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data);
      await raf.close();

      final document = PdfDocument(inputBytes: file.readAsBytesSync());

      for (var i = 0; i < document.pages.count; i++) {
        final pageSize = document.pages[i].size;
        document.pages[i].graphics.drawString(
          _usuario.id,
          PdfStandardFont(PdfFontFamily.helvetica, 9),
          brush: PdfSolidBrush(PdfColor(105, 105, 105)),
          bounds: Rect.fromLTWH(8, pageSize.height - 16, 50, 20),
        );
      }
      final savedFile = await document.save();

      await file.writeAsBytes(savedFile);
      document.dispose();

      return file;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.createFileInCacheFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<void> remoteFavoriteFileFromLocal(AdjuntoParam adjuntoParam) async {
    final documentDirectory = await getApplicationDocumentsDirectory();

    final file = File(
      '${documentDirectory.path}/catalogos/${adjuntoParam.id}/${adjuntoParam.nombreArchivo ?? ''}',
    );

    if (file.existsSync()) {
      file.deleteSync(recursive: true);
    }
  }
}
