import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/stats/domain/stats_customer_user_sales.dart';

part 'stats_customer_user_sales_dto.freezed.dart';
part 'stats_customer_user_sales_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class StatsCustomerUserSalesDTO
    with _$StatsCustomerUserSalesDTO
    implements Insertable<StatsCustomerUserSalesDTO> {
  const StatsCustomerUserSalesDTO._();
  const factory StatsCustomerUserSalesDTO({
    @JsonKey(name: 'ANYO') required double year,
    @JsonKey(name: 'MES') required double month,
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'UNIDADES') double? units,
    @JsonKey(name: 'IMPORTE') double? amount,
    @JsonKey(name: 'COSTE') double? cost,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _StatsCustomerUserSalesDTO;

  factory StatsCustomerUserSalesDTO.fromJson(Map<String, dynamic> json) =>
      _$StatsCustomerUserSalesDTOFromJson(json);

  StatsCustomerUserSales toDomain() {
    return StatsCustomerUserSales(
      year: year,
      month: month,
      customerId: customerId,
      articleId: articleId,
      units: units,
      amount: amount,
      cost: cost,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return StatsCustomerUserSalesTableCompanion(
      year: Value(year),
      month: Value(month),
      customerId: Value(customerId),
      articleId: Value(articleId),
      units: Value(units),
      amount: Value(amount),
      cost: Value(cost),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(StatsCustomerUserSalesDTO)
class StatsCustomerUserSalesTable extends Table {
  @override
  String get tableName => 'ESTADISTICAS_VENTA';

  @override
  Set<Column> get primaryKey => {year, month, customerId, articleId};

  RealColumn get year => real().named('ANYO')();
  RealColumn get month => real().named('MES')();
  TextColumn get customerId => text().named('CLIENTE_ID')();
  TextColumn get articleId => text().named('ARTICULO_ID')();
  RealColumn get units => real().nullable().named('UNIDADES')();
  RealColumn get amount => real().nullable().named('IMPORTE')();
  RealColumn get cost => real().nullable().named('COSTE')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
