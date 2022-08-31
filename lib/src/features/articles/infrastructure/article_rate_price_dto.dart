import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/article_rate_price.dart';

part 'article_rate_price_dto.freezed.dart';
part 'article_rate_price_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticleRatePriceDTO
    with _$ArticleRatePriceDTO
    implements Insertable<ArticleRatePriceDTO> {
  const ArticleRatePriceDTO._();
  const factory ArticleRatePriceDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'TARIFA_ID') required String rateId,
    @JsonKey(name: 'TARIFA_DESCRIPCION') String? rateDescription,
    @JsonKey(name: 'CANTIDAD_DESDE') required double quantityFrom,
    @JsonKey(name: 'PRECIO') required double price,
    @JsonKey(name: 'TIPO_PRECIO') double? priceType,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticleRatePriceDTO;

  factory ArticleRatePriceDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticleRatePriceDTOFromJson(json);

  ArticleRatePrice toDomain() {
    return ArticleRatePrice(
      articleId: articleId,
      rateId: rateId,
      rateDescription: rateDescription,
      quantityFrom: quantityFrom,
      price: price,
      priceType: priceType,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticleRatePriceTableCompanion(
      articleId: Value(articleId),
      rateId: Value(rateId),
      rateDescription: Value(rateDescription),
      quantityFrom: Value(quantityFrom),
      price: Value(price),
      priceType: Value(priceType),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticleRatePriceDTO)
class ArticleRatePriceTable extends Table {
  @override
  String get tableName => 'ARTICULOS_TARIFA_PRECIO';

  @override
  Set<Column> get primaryKey => {articleId, rateId, quantityFrom};

  TextColumn get articleId => text().named('ARTICULO_ID')();
  TextColumn get rateId => text().named('TARIFA_ID')();
  TextColumn get rateDescription =>
      text().nullable().named('TARIFA_DESCRIPCION')();
  RealColumn get quantityFrom => real().named('CANTIDAD_DESDE')();
  RealColumn get price => real().named('PRECIO')();
  RealColumn get priceType => real().nullable().named('TIPO_PRECIO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
