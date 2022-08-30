import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/article_document.dart';

part 'article_document_dto.freezed.dart';
part 'article_document_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticleDocumentDTO with _$ArticleDocumentDTO {
  const ArticleDocumentDTO._();
  const factory ArticleDocumentDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'NOMBRE_ARCHIVO') String? fileName,
    @JsonKey(name: 'PATH_ARCHIVO') String? filePath,
    @JsonKey(name: 'IDIOMA_ID') required String languageId,
    @JsonKey(name: 'OBSERVACIONES') String? remarks,
  }) = _ArticleDocumentDTO;

  factory ArticleDocumentDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticleDocumentDTOFromJson(json);

  ArticleDocument toDomain() {
    return ArticleDocument(
      articleId: articleId,
      fileName: fileName,
      filePath: filePath,
      languageId: languageId,
      remarks: remarks,
    );
  }
}
