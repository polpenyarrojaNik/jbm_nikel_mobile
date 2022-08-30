import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_image.dart';

part 'article_image_dto.freezed.dart';
part 'article_image_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticleImageDTO with _$ArticleImageDTO {
  const ArticleImageDTO._();
  const factory ArticleImageDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'NOMBRE_ARCHIVO') required String fileName,
    @JsonKey(name: 'PATH_ARCHIVO') String? filePath,
  }) = _ArticleImageDTO;

  factory ArticleImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticleImageDTOFromJson(json);

  ArticleImage toDomain() {
    return ArticleImage(
      articleId: articleId,
      fileName: fileName,
      filePath: filePath,
    );
  }
}
