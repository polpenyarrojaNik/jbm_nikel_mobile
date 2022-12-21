import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_dto.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_favorito_dto.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/tipo_catalogo_dto.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/tipo_catalogo_precio_dto.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/presentation/app.dart';
import '../../usuario/application/usuario_notifier.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/catalogo.dart';
import '../domain/tipo_catalogo.dart';
import '../domain/tipo_precio_catalogo.dart';

final catalogoRepositoryProvider = Provider.autoDispose<CatalogoRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    final dio = ref.watch(dioProvider);
    final usuario = ref.watch(usuarioNotifierProvider)!;

    return CatalogoRepository(dio, db, usuario);
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

class CatalogoRepository {
  final Dio _dio;
  final AppDatabase _db;
  final Usuario _usuario;

  CatalogoRepository(this._dio, this._db, this._usuario);

  Future<List<Catalogo>> getCatalogoList({
    TipoCatalogo? tipoCatalogo,
    TipoPrecioCatalogo? tipoPrecioCatalogo,
    String? idiomaId,
    String? searchText,
  }) async {
    try {
      final query = _setCatalogoQueryParams(
        tipoCatalogo: tipoCatalogo,
        tipoPrecioCatalogo: tipoPrecioCatalogo,
        idiomaId: idiomaId,
        searchText: searchText,
      );

      final favoriteLocalList = await _getLocalFavoriteList();

      final catalogosDTOList = await _remoteCatalogosList(
        requestUri: (_usuario.test)
            ? Uri.http(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
                'api/v1/online/catalogo',
                query,
              )
            : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/catalogo',
                query,
              ),
        jsonDataSelector: (json) => json['data'] as List<dynamic>,
        provisionalToken: _usuario.provisionalToken,
      );

      final catalogosList = catalogosDTOList
          .map((e) => e.toDomain(favoriteList: favoriteLocalList))
          .toList();

      return orderByCatalogos(catalogosList: catalogosList);
    } catch (error) {
      rethrow;
    }
  }

  Future<List<TipoCatalogo>> getTipoCatalogoList() async {
    try {
      final tipoCatalogoDTOList = await _remoteTipoCatalogosList(
        requestUri: (_usuario.test)
            ? Uri.http(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
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
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
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

  Future<List<CatalogoFavoritoDTO>> _getLocalFavoriteList() async {
    try {
      return await _db.select(_db.catalogoFavoritoTable).get();
    } catch (err) {
      rethrow;
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

  List<Catalogo> orderByCatalogos({required List<Catalogo> catalogosList}) {
    catalogosList.sort((c1, c2) {
      if (c1.isFavorite && c2.isFavorite) {
        return 0;
      } else if (c1.isFavorite && !c2.isFavorite) {
        return 1;
      } else if (!c1.isFavorite && c2.isFavorite) {
        return -1;
      }

      return c1.orden.compareTo(c2.orden);
    });
    return catalogosList;
  }

  Map<String, String> _setCatalogoQueryParams({
    TipoCatalogo? tipoCatalogo,
    TipoPrecioCatalogo? tipoPrecioCatalogo,
    String? idiomaId,
    String? searchText,
  }) {
    final Map<String, String> query = {};

    if (tipoCatalogo != null && tipoCatalogo.tipoCatalogoId != '00') {
      query.addAll({'tipoCatalogo': tipoCatalogo.tipoCatalogoId});
    }

    if (tipoPrecioCatalogo != null &&
        tipoPrecioCatalogo.tipoPrecioCatalogoId != '00') {
      query.addAll(
          {'tipoPrecioCatalogo': tipoPrecioCatalogo.tipoPrecioCatalogoId});
    }

    if (idiomaId != null) {
      query.addAll({'idiomaId': idiomaId});
    }

    if (searchText != null) {
      query.addAll({'busqueda': searchText});
    }

    return query;
  }
}
