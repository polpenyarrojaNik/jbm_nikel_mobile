import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/toasts.dart';
import 'package:jbm_nikel_mobile/src/features/articles/infrastructure/article_repository.dart';
import 'package:open_file/open_file.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/article_document.dart';

class ArticleDocumentContainer extends ConsumerWidget {
  const ArticleDocumentContainer({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleDocumentListProvider(articleId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articleDocumentList) => ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) => ArticleDocumentTile(
            articleDocument: articleDocumentList[i],
          ),
          itemCount: articleDocumentList.length,
        ),
      ),
    );
  }
}

class ArticleDocumentTile extends ConsumerWidget {
  const ArticleDocumentTile({Key? key, required this.articleDocument})
      : super(key: key);

  final ArticleDocument articleDocument;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(articleDocumentFileProvider(articleDocument.filePath ?? ''));
    return GestureDetector(
      onTap: state.when(
          data: (file) => (file != null) ? () => openFile(file: file) : null,
          error: (e, _) => () => showToast(e.toString(), context),
          loading: () => null),
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
          child: state.when(
            data: (file) => Row(
              children: [
                Icon(
                  getIconFromExtension(file!.path),
                  color: Theme.of(context).textTheme.caption!.color,
                ),
                const SizedBox(width: 8),
                Text(getFileName(file.path)),
              ],
            ),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget(),
          ),
        ),
      ),
    );
  }

  void openFile({required File file}) {
    OpenFile.open(file.path);
  }
}
