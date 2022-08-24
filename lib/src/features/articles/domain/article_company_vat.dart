import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_company_vat.freezed.dart';

@freezed
class ArticleCompanyVAT with _$ArticleCompanyVAT {
  const ArticleCompanyVAT._();
  const factory ArticleCompanyVAT(
      {required String articleId,
      required String companyId,
      required double vat,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticleCompanyVAT;
}
