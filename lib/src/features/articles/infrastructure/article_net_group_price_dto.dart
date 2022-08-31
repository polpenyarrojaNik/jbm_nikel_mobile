import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/article_net_group_price.dart';

part 'article_net_group_price_dto.freezed.dart';
part 'article_net_group_price_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticleNetGroupPriceDTO
    with _$ArticleNetGroupPriceDTO
    implements Insertable<ArticleNetGroupPriceDTO> {
  const ArticleNetGroupPriceDTO._();
  const factory ArticleNetGroupPriceDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'GRUPO_NETO_ID') required String netGroupId,
    @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String? netGroupDescription,
    @JsonKey(name: 'CANTIDAD_DESDE') required double quantityFrom,
    @JsonKey(name: 'PRECIO') required double price,
    @JsonKey(name: 'TIPO_PRECIO') double? priceType,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticleNetGroupPriceDTO;

  factory ArticleNetGroupPriceDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticleNetGroupPriceDTOFromJson(json);

  ArticleNetGroupPrice toDomain() {
    return ArticleNetGroupPrice(
      articleId: articleId,
      netGroupId: netGroupId,
      netGroupDescription: netGroupDescription,
      quantityFrom: quantityFrom,
      price: price,
      priceType: priceType,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticleNetGroupPriceTableCompanion(
      articleId: Value(articleId),
      netGroupId: Value(netGroupId),
      netGroupDescription: Value(netGroupDescription),
      quantityFrom: Value(quantityFrom),
      price: Value(price),
      priceType: Value(priceType),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticleNetGroupPriceDTO)
class ArticleNetGroupPriceTable extends Table {
  @override
  String get tableName => 'ARTICULOS_GRUPOS_NETOS_PRECIO';

  @override
  Set<Column> get primaryKey => {articleId, netGroupId, quantityFrom};

  TextColumn get articleId => text().named('ARTICULO_ID')();
  TextColumn get netGroupId => text().named('GRUPO_NETO_ID')();
  TextColumn get netGroupDescription =>
      text().nullable().named('GRUPO_NETO_DESCRIPCION')();
  RealColumn get quantityFrom => real().named('CANTIDAD_DESDE')();
  RealColumn get price => real().named('PRECIO')();
  RealColumn get priceType => real().nullable().named('TIPO_PRECIO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
