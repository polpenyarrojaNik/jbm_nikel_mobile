import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_company_vat.dart';

import '../../../core/infrastructure/database.dart';

part 'article_company_vat_dto.freezed.dart';
part 'article_company_vat_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticleCompanyVATDTO
    with _$ArticleCompanyVATDTO
    implements Insertable<ArticleCompanyVATDTO> {
  const ArticleCompanyVATDTO._();
  const factory ArticleCompanyVATDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'EMPRESA_ID') required String companyId,
    @JsonKey(name: 'IVA') required double vat,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticleCompanyVATDTO;

  factory ArticleCompanyVATDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticleCompanyVATDTOFromJson(json);

  ArticleCompanyVAT toDomain() {
    return ArticleCompanyVAT(
      articleId: articleId,
      companyId: companyId,
      vat: vat,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticleCompanyVatTableCompanion(
      articleId: Value(articleId),
      companyId: Value(companyId),
      vat: Value(vat),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticleCompanyVATDTO)
class ArticleCompanyVatTable extends Table {
  @override
  String get tableName => 'ARTICULOS_EMPRESAS_IVA';

  @override
  Set<Column> get primaryKey => {articleId, companyId};

  TextColumn get articleId => text().named('ARTICULO_ID')();
  TextColumn get companyId => text().named('EMPRESA_ID')();
  RealColumn get vat => real().named('IVA')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
