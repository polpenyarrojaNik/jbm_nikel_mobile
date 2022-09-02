import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_router.dart';
import '../../domain/article.dart';

class ArticleListTile extends StatelessWidget {
  const ArticleListTile(
      {Key? key,
      required this.article,
      required this.appRoute,
      required this.customerId})
      : super(key: key);

  final Article article;
  final AppRoute appRoute;
  final String? customerId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () =>
            navigateToArticleDetalPage(context, article.id, customerId),
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
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  article.description,
                ),
                Text(
                  (article.subfamily != null)
                      ? '${article.family?.description}/${article.subfamily?.description}'
                      : '${article.family?.description}',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ));
  }

  void navigateToArticleDetalPage(
      BuildContext context, String id, String? customerId) {
    final params = {'articleId': article.id};

    if (customerId != null) {
      params.addAll({'customerId': customerId});
    }
    context.goNamed(appRoute.name, params: params);
  }
}
