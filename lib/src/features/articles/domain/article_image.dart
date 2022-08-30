import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_image.freezed.dart';

@freezed
class ArticleImage with _$ArticleImage {
  const ArticleImage._();
  const factory ArticleImage({
    required String articleId,
    required String fileName,
    String? filePath,
  }) = _ArticleImage;
}
