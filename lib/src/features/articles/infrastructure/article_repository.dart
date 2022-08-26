import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/article.dart';

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
}
