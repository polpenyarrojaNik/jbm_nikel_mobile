import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_component.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_document.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_rate_price.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_spare.dart';
import 'package:jbm_nikel_mobile/src/features/articles/infrastructure/article_image_dto.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order_line.dart';
import 'package:jbm_nikel_mobile/src/features/stats/domain/stats_last_price.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../auth/infrastructure/auth_repository.dart';
import '../domain/article.dart';
import '../domain/article_image.dart';
import '../domain/article_net_group_price.dart';
import '../domain/article_substitute.dart';
import 'article_document_dto.dart';

final articleRepositoryProvider = Provider.autoDispose<ArticleRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final articleListStreamProvider =
    StreamProvider.autoDispose<List<Article>>((ref) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.watchArticleList();
});

final articleProvider =
    FutureProvider.autoDispose.family<Article, String>((ref, articleId) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getArticleById(articleId: articleId);
});

final articleComponentListProvider = FutureProvider.autoDispose
    .family<List<ArticleComponent>, String>((ref, articleId) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getArticleComponentListById(articleId: articleId);
});

final articleComponentIncludedListProvider = FutureProvider.autoDispose
    .family<List<ArticleComponent>, String>((ref, articleId) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getArticleComponentIncludedListById(
      articleId: articleId);
});

final articleRatePriceListProvider = FutureProvider.autoDispose
    .family<List<ArticleRatePrice>, String>((ref, articleId) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getArticleRatePriceListById(articleId: articleId);
});

final articleNetGroupPriceListProvider = FutureProvider.autoDispose
    .family<List<ArticleNetGroupPrice>, String>((ref, articleId) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getArticleNetGroupPriceListById(
      articleId: articleId);
});

final articleSubstituteListProvider = FutureProvider.autoDispose
    .family<List<ArticleSubstitute>, String>((ref, articleId) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getArticleSubstituteListById(articleId: articleId);
});

final articleSpareListProvider = FutureProvider.autoDispose
    .family<List<ArticleSpare>, String>((ref, articleId) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getArticleSpareListById(articleId: articleId);
});

final articleImageListProvider = FutureProvider.autoDispose
    .family<List<ArticleImage>, String>((ref, articleId) async {
  final articleRepository = ref.watch(articleRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final user = await authRepository.getSignedInUser();
  return articleRepository.getArticleImagesListById(
      articleId: articleId, provisionalToken: user!.provisionalToken);
});

final articleDocumentListProvider = FutureProvider.autoDispose
    .family<List<ArticleDocument>, String>((ref, articleId) async {
  final articleRepository = ref.watch(articleRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final user = await authRepository.getSignedInUser();
  return articleRepository.getArticleDocumentListById(
      articleId: articleId, provisionalToken: user!.provisionalToken);
});

final articleDocumentFileProvider =
    FutureProvider.autoDispose.family<File?, String>((ref, path) async {
  final articleRepository = ref.watch(articleRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final user = await authRepository.getSignedInUser();
  return articleRepository.getDocumentFile(
      path: path, provisionalToken: user!.provisionalToken);
});

final articleImageFileProvider =
    FutureProvider.autoDispose.family<Uint8List?, String>((ref, path) async {
  final articleRepository = ref.watch(articleRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final user = await authRepository.getSignedInUser();
  return articleRepository.getImageFile(
      path: path, provisionalToken: user!.provisionalToken);
});

final articleSalesOrderLineListProvider = FutureProvider.autoDispose
    .family<List<SalesOrderLine>, String>((ref, articleId) async {
  final articleRepository = ref.watch(articleRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final user = await authRepository.getSignedInUser();
  return articleRepository.getArticleSalesOrderById(
      articleId: articleId, userId: user!.id);
});

final articleLastPriceListProvider = FutureProvider.autoDispose
    .family<List<StatsLastPrice>, String>((ref, articleId) async {
  final articleRepository = ref.watch(articleRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final user = await authRepository.getSignedInUser();
  return articleRepository.getArticleLastPriceById(
      articleId: articleId, userId: user!.id);
});

final articleLastSyncProvider = FutureProvider.autoDispose<DateTime>((ref) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getLastSyncArticle();
});

final articleSalesOrderLastSyncProvider =
    FutureProvider.autoDispose<DateTime>((ref) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getLastSyncArticleSalesOrder();
});

final articleLastPricesLastSyncProvider =
    FutureProvider.autoDispose<DateTime>((ref) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getLastSyncArticleLastPrices();
});

class ArticleRepository {
  AppDatabase db;
  Dio dio;

  ArticleRepository(this.db, this.dio);

  Stream<List<Article>> watchArticleList() {
    return db.getArticleList();
  }

  Future<Article> getArticleById({required String articleId}) async {
    return await db.getArticleById(articleId: articleId);
  }

  Future<List<ArticleComponent>> getArticleComponentListById(
      {required String articleId}) async {
    return await db.getArticleComponentById(articleId: articleId);
  }

  Future<List<ArticleComponent>> getArticleComponentIncludedListById(
      {required String articleId}) async {
    return await db.getArticleComponentIncludedById(articleId: articleId);
  }

  Future<List<ArticleRatePrice>> getArticleRatePriceListById(
      {required String articleId}) async {
    return await db.getArticleRatePriceById(articleId: articleId);
  }

  Future<List<ArticleNetGroupPrice>> getArticleNetGroupPriceListById(
      {required String articleId}) async {
    return await db.getArticleNetGroupPriceById(articleId: articleId);
  }

  Future<List<ArticleSpare>> getArticleSpareListById(
      {required String articleId}) async {
    return await db.getArticleSpareById(articleId: articleId);
  }

  Future<List<ArticleSubstitute>> getArticleSubstituteListById(
      {required String articleId}) async {
    return await db.getArticleSubstituteById(articleId: articleId);
  }

  Future<List<ArticleImage>> getArticleImagesListById(
      {required String articleId, required String provisionalToken}) async {
    final query = {'ARTICULO_ID': articleId};
    final articleImageDTOList = await _remoteGetArticleImages(
      requestUri: Uri.http(
        dotenv.get('URL_HOME', fallback: 'localhost:3001'),
        'api/v1/online/articulo/imagenes',
        query,
      ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: provisionalToken,
    );

    return articleImageDTOList.map((e) => e.toDomain()).toList();
  }

  Future<List<ArticleDocument>> getArticleDocumentListById(
      {required String articleId, required String provisionalToken}) async {
    final query = {'ARTICULO_ID': articleId};
    final articleDocumentDTOList = await _remoteGetArticleDocuments(
      requestUri: Uri.http(
        dotenv.get('URL_HOME', fallback: 'localhost:3001'),
        'api/v1/online/articulo/documentos',
        query,
      ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: provisionalToken,
    );

    return articleDocumentDTOList.map((e) => e.toDomain()).toList();
  }

  Future<Uint8List?> getImageFile(
      {required String path, required String provisionalToken}) async {
    if (path != '') {
      final query = {'PATH': path};
      final dataImage = await _remoteGetAttachment(
          requestUri: Uri.http(
            dotenv.get('URL_HOME', fallback: 'localhost:3001'),
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
            dotenv.get('URL_HOME', fallback: 'localhost:3001'),
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

  Future<List<SalesOrderLine>> getArticleSalesOrderById(
      {required String articleId, required String userId}) async {
    return await db.getArticleSalesOrderById(
        articleId: articleId, userId: userId);
  }

  Future<List<StatsLastPrice>> getArticleLastPriceById(
      {required String articleId, required String userId}) async {
    final lastPricesList =
        await db.getArticleLastPriceById(articleId: articleId, userId: userId);

    print(lastPricesList[0]);

    return lastPricesList;
  }

  Future<DateTime> getLastSyncArticle() async {
    final date = await db.getLastSyncArticleDate();
    return DateTime.parse(date!);
  }

  Future<DateTime> getLastSyncArticleSalesOrder() async {
    final date = await db.getLastSyncSalesOrderLineDate();
    return DateTime.parse(date!);
  }

  Future<DateTime> getLastSyncArticleLastPrices() async {
    final date = await db.getLastSyncStatsLastPriceDate();
    return DateTime.parse(date!);
  }

  Future<List<ArticleImageDTO>> _remoteGetArticleImages({
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
        return data.map((e) => ArticleImageDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioError catch (e) {
      String? errorDetail;
      final responseErrorJson =
          e.response?.data['detail'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetail = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetail ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ArticleDocumentDTO>> _remoteGetArticleDocuments({
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
        return data.map((e) => ArticleDocumentDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioError catch (e) {
      String? errorDetail;
      final responseErrorJson =
          e.response?.data['detail'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetail = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetail ?? '');
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
      String? errorDetail;
      final responseErrorJson =
          e.response?.data['detail'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetail = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetail ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }
}
