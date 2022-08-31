import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_image.dart';
import 'package:jbm_nikel_mobile/src/features/articles/infrastructure/article_repository.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class ArticleImagesContainer extends ConsumerWidget {
  const ArticleImagesContainer({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleImageListProvider(articleId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articleImageList) => ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticleImageTile(
            articleImage: articleImageList[i],
          ),
          itemCount: articleImageList.length,
        ),
      ),
    );
  }
}

class ArticleImageTile extends ConsumerWidget {
  const ArticleImageTile({Key? key, required this.articleImage})
      : super(key: key);

  final ArticleImage articleImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(articleImageFileProvider(articleImage.filePath ?? ''));
    return Card(
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            state.when(
              data: (_) => (_ != null)
                  ? Image.memory(_, fit: BoxFit.fitHeight, height: 105)
                  : Image.asset('assets/image-placeholder.png'),
              error: (e, _) => SizedBox(
                  height: 150,
                  width: 200,
                  child: ErrorMessageWidget(e.toString())),
              loading: () => Image.asset('assets/image-placeholder.png'),
            ),
            Text(articleImage.fileName),
          ],
        ),
      ),
    );
  }
}
