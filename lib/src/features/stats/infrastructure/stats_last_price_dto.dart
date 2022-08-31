import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:jbm_nikel_mobile/src/features/stats/domain/stats_last_price.dart';

import '../../../core/infrastructure/database.dart';
import '../../articles/domain/article.dart';

part 'stats_last_price_dto.freezed.dart';
part 'stats_last_price_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class StatsLastPriceDTO
    with _$StatsLastPriceDTO
    implements Insertable<StatsLastPriceDTO> {
  const StatsLastPriceDTO._();
  const factory StatsLastPriceDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'FECHA') required DateTime date,
    @JsonKey(name: 'PRECIO_DIVISA') required double divisaPrice,
    @JsonKey(name: 'TIPO_PRECIO') required double priceType,
    @JsonKey(name: 'DESCUENTO1') required double discount1,
    @JsonKey(name: 'DESCUENTO2') required double discount2,
    @JsonKey(name: 'DESCUENTO3') required double discount3,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _StatsLastPriceDTO;

  factory StatsLastPriceDTO.fromJson(Map<String, dynamic> json) =>
      _$StatsLastPriceDTOFromJson(json);

  StatsLastPrice toDomain({required Article article}) {
    return StatsLastPrice(
      customerId: customerId,
      article: article,
      date: date,
      divisaPrice: divisaPrice,
      priceType: priceType,
      discount1: discount1,
      discount2: discount2,
      discount3: discount3,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return StatsLastPriceTableCompanion(
      customerId: Value(customerId),
      articleId: Value(articleId),
      date: Value(date),
      divisaPrice: Value(divisaPrice),
      priceType: Value(priceType),
      discount1: Value(discount1),
      discount2: Value(discount2),
      discount3: Value(discount3),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(StatsLastPriceDTO)
class StatsLastPriceTable extends Table {
  @override
  String get tableName => 'ULTIMOS_PRECIOS';

  @override
  Set<Column> get primaryKey => {
        customerId,
        articleId,
        date,
        divisaPrice,
        priceType,
        discount1,
        discount2,
        discount3
      };

  TextColumn get customerId => text().named('CLIENTE_ID')();
  TextColumn get articleId => text().named('ARTICULO_ID')();
  DateTimeColumn get date => dateTime().named('FECHA')();
  RealColumn get divisaPrice => real().named('PRECIO_DIVISA')();
  RealColumn get priceType => real().named('TIPO_PRECIO')();
  RealColumn get discount1 => real().named('DESCUENTO1')();
  RealColumn get discount2 => real().named('DESCUENTO1')();
  RealColumn get discount3 => real().named('DESCUENTO3')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
