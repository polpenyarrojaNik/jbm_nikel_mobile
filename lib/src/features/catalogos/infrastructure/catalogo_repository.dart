import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_dto.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_favorito_dto.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/presentation/app.dart';
import '../../usuario/infrastructure/usuario_service.dart';
import '../domain/catalogo.dart';

final catalogoRepositoryProvider = Provider.autoDispose<CatalogoRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    final dio = ref.watch(dioProvider);
    return CatalogoRepository(dio, db);
  },
);

final catalogoListProvider =
    FutureProvider.autoDispose<List<Catalogo>>((ref) async {
  final catalogoRepsitory = ref.watch(catalogoRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();

  return catalogoRepsitory.getCatalogoList(
    provisionalTkn: usuario!.provisionalToken,
    test: usuario.test,
  );
});

class CatalogoRepository {
  final Dio _dio;
  final AppDatabase _db;

  CatalogoRepository(this._dio, this._db);

  Future<List<Catalogo>> getCatalogoList(
      {required String provisionalTkn, required bool test}) async {
    try {
      final Map<String, String> query = {};
      final favoriteLocalList = await _getLocalFavoriteList();

      final catalogosDTOList = await _remoteCatalogosList(
        requestUri: (test)
            ? Uri.http(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
                'api/v1/online/catalogos',
                query,
              )
            : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/catalogos',
                query,
              ),
        jsonDataSelector: (json) => json['data'] as List<dynamic>,
        provisionalToken: provisionalTkn,
      );

      final catalogosList = catalogosDTOList
          .map((e) => e.toDomain(favoriteList: favoriteLocalList))
          .toList();

      return orderByCatalogos(catalogosList: catalogosList);
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
}
