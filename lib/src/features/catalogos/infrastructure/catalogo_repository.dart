import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/local_database.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_dto.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_favorito_dto.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/tipo_catalogo_dto.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/tipo_catalogo_precio_dto.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/domain/adjunto_param.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/presentation/app.dart';
import '../../usuario/application/usuario_notifier.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/catalogo.dart';
import '../domain/idioma_catalogo.dart';
import '../domain/tipo_catalogo.dart';
import '../domain/tipo_precio_catalogo.dart';
import 'idioma_catalogo_dto.dart';

final catalogoRepositoryProvider = Provider.autoDispose<CatalogoRepository>(
  (ref) {
    final localDb = ref.watch(appLocalDatabaseProvider);
    final dio = ref.watch(dioProvider);
    final usuario = ref.watch(usuarioNotifierProvider)!;

    return CatalogoRepository(dio, localDb, usuario);
  },
);

final tipoCatalogoListProvider =
    FutureProvider.autoDispose<List<TipoCatalogo>>((ref) async {
  final catalogoRepsitory = ref.watch(catalogoRepositoryProvider);

  return catalogoRepsitory.getTipoCatalogoList();
});

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

  CatalogoRepository(this._dio, this._localDb, this._usuario);

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

      final favoriteLocalList = await _getLocalFavoriteList(
        tipoCatalogo: tipoCatalogo,
        tipoPrecioCatalogo: tipoPrecioCatalogo,
        idiomaCatalogo: idiomaCatalogo,
        searchText: searchText,
      );

      final catalogosDTOList = await _remoteCatalogosList(
        requestUri: (_usuario.test)
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

      final catalogosList = catalogosDTOList
          .map((e) => e.toDomain(
              test: _usuario.test,
              tipoPrecioCatalogo: tipoPrecioCatalogo?.descripcion))
          .toList();

      return _orderByCatalogos(
          catalogosList: catalogosList, favoriteLocalList: favoriteLocalList);
    } catch (error) {
      rethrow;
    }
  }

  Future<List<TipoCatalogo>> getTipoCatalogoList() async {
    try {
      final tipoCatalogoDTOList = await _remoteTipoCatalogosList(
        requestUri: (_usuario.test)
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
    } catch (error) {
      rethrow;
    }
  }

  Future<List<TipoPrecioCatalogo>> getTipoPrecioCatalogoList() async {
    try {
      final tipoPrecioCatalogoDTOList = await _remoteTipoPrecioCatalogosList(
        requestUri: (_usuario.test)
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
    } catch (error) {
      rethrow;
    }
  }

  Future<List<IdiomaCatalogo>> getIdiomaCatalogoList() async {
    try {
      final idiomaCatalogoDTOList = await _remoteIdiomaCatalogosList(
        requestUri: (_usuario.test)
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
    } catch (error) {
      rethrow;
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
                    'api/v1/online/adjunto/catalogo/${adjuntoParam.id}',
                    query,
                  )
                : Uri.https(
                    dotenv.get('URL', fallback: 'localhost:3001'),
                    'api/v1/online/adjunto/catalogo/${adjuntoParam.id}',
                    query,
                  ),
            provisionalToken: provisionalToken);

        try {
          final cahceDirectories = await getTemporaryDirectory();

          final File file = await File(
                  '${cahceDirectories.path}/catalogos/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}')
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

  Future<void> setCatalogoToFavorite({required int catalogoId}) async {
    try {
      await _localDb
          .into(_localDb.catalogoFavoritoTable)
          .insertOnConflictUpdate(
            CatalogoFavoritoTableCompanion(
              catalogoId: Value(catalogoId),
            ),
          );
    } catch (e) {
      AppException.insertDataFailure(e.toString());
    }
  }

  Future<void> removeCatalogoFavorito({required int catalogoId}) async {
    try {
      await (_localDb.delete(_localDb.catalogoFavoritoTable)
            ..where(
              (tbl) => tbl.catalogoId.equals(catalogoId),
            ))
          .go();
    } catch (e) {
      AppException.insertDataFailure(e.toString());
    }
  }

  Future<bool> isCatalogoFavorite({required int catalogoId}) async {
    try {
      final query = await (_localDb.select(_localDb.catalogoFavoritoTable)
            ..where((tbl) => tbl.catalogoId.equals(catalogoId)))
          .get();

      return query.isNotEmpty;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<CatalogoFavoritoDTO>> _getLocalFavoriteList({
    TipoCatalogo? tipoCatalogo,
    TipoPrecioCatalogo? tipoPrecioCatalogo,
    IdiomaCatalogo? idiomaCatalogo,
    String? searchText,
  }) async {
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
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<CatalogoDTO>> _remoteCatalogosList(
      {required Uri requestUri,
      required List Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return data.map((e) => CatalogoDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<List<TipoCatalogoDTO>> _remoteTipoCatalogosList(
      {required Uri requestUri,
      required List Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return data.map((e) => TipoCatalogoDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<List<TipoPrecioCatalogoDTO>> _remoteTipoPrecioCatalogosList(
      {required Uri requestUri,
      required List Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return data.map((e) => TipoPrecioCatalogoDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<List<IdiomaCatalogoDTO>> _remoteIdiomaCatalogosList(
      {required Uri requestUri,
      required List Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return data.map((e) => IdiomaCatalogoDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  List<Catalogo> _orderByCatalogos(
      {required List<Catalogo> catalogosList,
      required List<CatalogoFavoritoDTO> favoriteLocalList}) {
    catalogosList.sort((a, b) => a.orden.compareTo(b.orden));

    for (var i = 0; i < favoriteLocalList.length; i++) {
      for (var j = 0; j < favoriteLocalList.length; j++) {
        if (catalogosList[i].catalogoId == favoriteLocalList[j].catalogoId) {
          final favoriteCatalogo = catalogosList[i];
          catalogosList.remove(favoriteCatalogo);
          catalogosList.insert(0, favoriteCatalogo);
        }
      }
    }
    return catalogosList;
  }

  Map<String, String> _setCatalogoQueryParams({
    TipoCatalogo? tipoCatalogo,
    TipoPrecioCatalogo? tipoPrecioCatalogo,
    IdiomaCatalogo? idiomaCatalogo,
    String? searchText,
  }) {
    print('Locale ${Intl.getCurrentLocale()}');
    final Map<String, String> query = {
      'idiomaDispositivo': Intl.getCurrentLocale().toUpperCase(),
      'usuarioId': _usuario.id,
    };

    if (tipoCatalogo != null && tipoCatalogo.tipoCatalogoId != '00') {
      query.addAll({'tipoCatalogo': tipoCatalogo.tipoCatalogoId});
    }

    if (tipoPrecioCatalogo != null &&
        tipoPrecioCatalogo.tipoPrecioCatalogoId != '00') {
      query.addAll(
          {'tipoPrecioCatalogo': tipoPrecioCatalogo.tipoPrecioCatalogoId});
    }

    if (idiomaCatalogo != null && idiomaCatalogo.idiomaId != '00') {
      query.addAll({'idiomaId': idiomaCatalogo.idiomaId});
    } else {
      if (idiomaCatalogo?.idiomaId != '00') {
        query.addAll({'idiomaId': _usuario.idiomaId});
      }
    }

    if (searchText != null) {
      query.addAll({'busqueda': searchText.toUpperCase()});
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
        return response.data;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }
}
