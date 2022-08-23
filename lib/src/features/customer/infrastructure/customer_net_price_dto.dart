import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/customer_net_price.dart';

part 'customer_net_price_dto.freezed.dart';
part 'customer_net_price_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerNetPriceDTO
    with _$CustomerNetPriceDTO
    implements Insertable<CustomerNetPriceDTO> {
  const CustomerNetPriceDTO._();
  const factory CustomerNetPriceDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'CANTIDAD_DESDE') required double quantityFrom,
    @JsonKey(name: 'PRECIO') required double price,
    @JsonKey(name: 'TIPO_PRECIO') double? priceType,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CustomerNetPriceDTO;

  factory CustomerNetPriceDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerNetPriceDTOFromJson(json);

  CustomerNetPrice toDomain() {
    return CustomerNetPrice(
      customerId: customerId,
      articleId: articleId,
      quantityFrom: quantityFrom,
      price: price,
      priceType: priceType,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CustomerNetPriceTableCompanion(
      customerId: Value(customerId),
      articleId: Value(articleId),
      quantityFrom: Value(quantityFrom),
      price: Value(price),
      priceType: Value(priceType),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CustomerNetPriceDTO)
class CustomerNetPriceTable extends Table {
  @override
  String get tableName => 'CLIENTES_PRECIOS_NETOS';

  @override
  Set<Column> get primaryKey => {customerId, articleId, quantityFrom};

  TextColumn get customerId => text().named('CLIENTE_ID')();
  TextColumn get articleId => text().named('ARTICULO_ID')();
  RealColumn get quantityFrom => real().named('CANTIDAD_DESDE')();
  RealColumn get price => real().named('PRECIO')();
  RealColumn get priceType => real().nullable().named('TIPO_PRECIO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
