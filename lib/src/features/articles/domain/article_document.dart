import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_document.freezed.dart';

@freezed
class ArticleDocument with _$ArticleDocument {
  const ArticleDocument._();
  const factory ArticleDocument({
    required String articleId,
    String? fileName,
    String? filePath,
    required String languageId,
    String? remarks,
  }) = _ArticleDocument;
}
