import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer_discount.dart';

import '../../../core/domain/family.dart';
import '../../../core/domain/subfamily.dart';
import '../../../core/infrastructure/family_dto.dart';
import '../../../core/infrastructure/subfamily_dto.dart';

part 'customer_discount_dto.freezed.dart';
part 'customer_discount_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerDiscountDTO
    with _$CustomerDiscountDTO
    implements Insertable<CustomerDiscountDTO> {
  const CustomerDiscountDTO._();
  const factory CustomerDiscountDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'ARTICULO_ID') required String articleId,
    @JsonKey(name: 'FAMILIA_ID') required String familyId,
    @JsonKey(name: 'SUBFAMILIA_ID') required String subfamilyId,
    @JsonKey(name: 'CANTIDAD_DESDE') required double quantityFrom,
    @JsonKey(name: 'DESCUENTO') required double discount,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CustomerDiscountDTO;

  factory CustomerDiscountDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerDiscountDTOFromJson(json);

  CustomerDiscount toDomain(
      {required Family family, required Subfamily subfamily}) {
    return CustomerDiscount(
      customerId: customerId,
      articleId: articleId,
      family: family,
      subfamily: subfamily,
      quantityFrom: quantityFrom,
      discount: discount,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CustomerDiscountTableCompanion(
      customerId: Value(customerId),
      articleId: Value(articleId),
      familyId: Value(familyId),
      subfamilyId: Value(subfamilyId),
      quantityFrom: Value(quantityFrom),
      discount: Value(discount),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CustomerDiscountDTO)
class CustomerDiscountTable extends Table {
  @override
  String get tableName => 'CLIENTES_DESCUENTOS';

  @override
  Set<Column> get primaryKey =>
      {customerId, articleId, familyId, subfamilyId, quantityFrom};

  TextColumn get customerId => text().named('CLIENTE_ID')();
  TextColumn get articleId => text().named('ARTICULO_ID')();
  TextColumn get familyId =>
      text().references(FamilyTable, #id).named('FAMILIA_ID')();
  TextColumn get subfamilyId =>
      text().references(SubfamilyTable, #id).named('SUBFAMILIA_ID')();
  RealColumn get quantityFrom => real().named('CANTIDAD_DESDE')();
  RealColumn get discount => real().named('DESCUENTO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
