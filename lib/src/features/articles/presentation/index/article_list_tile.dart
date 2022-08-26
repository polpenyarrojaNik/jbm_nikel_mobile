import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_router.dart';
import '../../domain/article.dart';

class ArticleListTile extends StatelessWidget {
  const ArticleListTile({Key? key, required this.article}) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context
          .goNamed(AppRoute.articleshow.name, params: {'id': article.id}),
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.id,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
