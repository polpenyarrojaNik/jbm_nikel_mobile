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
    .family<List<ArticleImage>, String>((ref, articleId) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getArticleImagesListById(articleId: articleId);
});

final articleDocumentListProvider = FutureProvider.autoDispose
    .family<List<ArticleDocument>, String>((ref, articleId) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getArticleDocumentListById(articleId: articleId);
});

final articleDocumentFileProvider =
    FutureProvider.autoDispose.family<File?, String>((ref, path) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getDocumentFile(path: path);
});

final articleImageFileProvider =
    FutureProvider.autoDispose.family<Uint8List?, String>((ref, path) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return articleRepository.getImageFile(path: path);
});

class ArticleRepository {
  AppDatabase db;
  Dio dio;
  AuthRepository authRepository;

  ArticleRepository(this.db, this.dio, this.authRepository);

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
      {required String articleId}) async {
    final query = {'ARTICULO_ID': articleId};
    final articleImageDTOList = await _remoteGetArticleImages(
        requestUri: Uri.http(
          dotenv.get('URL_NIKEL', fallback: 'localhost:3001'),
          'api/v1/online/articulo/imagenes',
          query,
        ),
        jsonDataSelector: (json) => json['data'] as List<dynamic>);

    return articleImageDTOList.map((e) => e.toDomain()).toList();
  }

  Future<List<ArticleDocument>> getArticleDocumentListById(
      {required String articleId}) async {
    final query = {'ARTICULO_ID': articleId};
    final articleDocumentDTOList = await _remoteGetArticleDocuments(
        requestUri: Uri.http(
          dotenv.get('URL_NIKEL', fallback: 'localhost:3001'),
          'api/v1/online/articulo/documentos',
          query,
        ),
        jsonDataSelector: (json) => json['data'] as List<dynamic>);

    return articleDocumentDTOList.map((e) => e.toDomain()).toList();
  }

  Future<Uint8List?> getImageFile({required String path}) async {
    if (path != '') {
      final query = {'PATH': path};
      final dataImage = await _remoteGetAttachment(
        requestUri: Uri.http(
          dotenv.get('URL_NIKEL', fallback: 'localhost:3001'),
          'api/v1/online/adjunto',
          query,
        ),
      );

      return Uint8List.fromList((dataImage));
    }

    return null;
  }

  Future<File?> getDocumentFile({required String path}) async {
    if (path != '') {
      final query = {'PATH': path};
      final data = await _remoteGetAttachment(
        requestUri: Uri.http(
          dotenv.get('URL_NIKEL', fallback: 'localhost:3001'),
          'api/v1/online/adjunto',
          query,
        ),
      );

      final Directory cahceDirectories = await getTemporaryDirectory();

      final File file = File('${cahceDirectories.path}/$path');
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data);
      await raf.close();

      return file;
    }

    return null;
  }

  Future<List<ArticleImageDTO>> _remoteGetArticleImages({
    required Uri requestUri,
    required dynamic Function(dynamic json) jsonDataSelector,
  }) async {
    final user = await authRepository.getSignedInUser();
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${user!.provisionalToken}'},
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
  }) async {
    final user = await authRepository.getSignedInUser();
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${user!.provisionalToken}'},
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
  }) async {
    final user = await authRepository.getSignedInUser();
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${user!.provisionalToken}'},
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
