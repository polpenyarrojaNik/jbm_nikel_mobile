import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article.dart';

import '../../infrastructure/article_repository.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article detail'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final articleValue = ref.watch(articleProvider(articleId));
          return AsyncValueWidget<Article>(
            value: articleValue,
            data: (article) => Text(
              article.id,
            ),
          );
        },
      ),
    );
  }
}
