import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/sales_order_line.dart';

part 'sales_order_line_dto.freezed.dart';
part 'sales_order_line_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class SalesOrderLineDTO
    with _$SalesOrderLineDTO
    implements Insertable<SalesOrderLineDTO> {
  const SalesOrderLineDTO._();
  const factory SalesOrderLineDTO({
    @JsonKey(name: 'EMPRESA_ID') required String companyId,
    @JsonKey(name: 'PEDIDO_ID') required String salesOrderId,
    @JsonKey(name: 'PEDIDO_LINEA_ID') required String id,
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'ARTICULO_DESCRIPCION') String? articleDescription,
    @JsonKey(name: 'CANTIDAD') required double quantity,
    @JsonKey(name: 'PRECIO_DIVISA') required double divisaPrice,
    @JsonKey(name: 'TIPO_PRECIO') double? priceType,
    @JsonKey(name: 'DESCUENTO1') required double discount1,
    @JsonKey(name: 'DESCUENTO2') required double discount2,
    @JsonKey(name: 'DESCUENTO3') required double discount3,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _SalesOrderLineDTO;

  factory SalesOrderLineDTO.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderLineDTOFromJson(json);

  SalesOrderLine toDomain() {
    return SalesOrderLine(
        companyId: companyId,
        salesOrderId: salesOrderId,
        id: id,
        articleId: articleId,
        articleDescription: articleDescription,
        quantity: quantity,
        divisaPrice: divisaPrice.parseMoney(divisaPrice, divisaId),
        priceType: priceType,
        discount1: discount1,
        discount2: discount2,
        discount3: discount3,
        lastUpdated: lastUpdated,
        deleted: (deleted == 'S') ? true : false);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return SalesOrderLineTableCompanion(
      companyId: Value(companyId),
      salesOrderId: Value(salesOrderId),
      id: Value(id),
      articleId: Value(articleId),
      articleDescription: Value(articleDescription),
      quantity: Value(quantity),
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

@UseRowClass(SalesOrderLineDTO)
class SalesOrderLineTable extends Table {
  TextColumn get companyId => text().named('EMPRESA_ID')();
  TextColumn get salesOrderId => text().named('PEDIDO_ID')();
  TextColumn get id => text().named('PEDIDO_LINEA_ID')();
  TextColumn get articleId => text().named('ARTICULO_ID')();
  TextColumn get articleDescription =>
      text().nullable().named('ARTICULO_DESCRIPCION')();
  RealColumn get quantity => real().named('CANTIDAD')();
  RealColumn get divisaPrice => real().named('PRECIO_DIVISA')();
  RealColumn get priceType => real().nullable().named('TIPO_PRECIO')();
  RealColumn get discount1 => real().named('DESCUENTO1')();
  RealColumn get discount2 => real().named('DESCUENTO2')();
  RealColumn get discount3 => real().named('DESCUENTO3')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey => {salesOrderId, companyId, id};

  @override
  String get tableName => 'PEDIDOS_LINEAS';
}
