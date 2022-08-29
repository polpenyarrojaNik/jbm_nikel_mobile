import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../../features/customer/domain/top_article.dart';

final topArticleRepositoryProvider = Provider.autoDispose<TopArticleRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final topArticleProvider = FutureProvider.autoDispose<List<TopArticle>>((ref) {
  final topArticleRepository = ref.watch(topArticleRepositoryProvider);
  return topArticleRepository.getTopArticleList();
});

class TopArticleRepository {
  AppDatabase db;

  TopArticleRepository(this.db);

  Future<List<TopArticle>> getTopArticleList() => db.getTopArticleList();
}
