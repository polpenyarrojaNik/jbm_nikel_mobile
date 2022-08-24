import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer_pending_payment.dart';
import 'package:jbm_nikel_mobile/src/features/customer/infrastructure/collection_method_dto.dart';

import '../domain/collection_method.dart';

part 'customer_pending_payment_dto.freezed.dart';
part 'customer_pending_payment_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerPendingPaymentDTO
    with _$CustomerPendingPaymentDTO
    implements Insertable<CustomerPendingPaymentDTO> {
  const CustomerPendingPaymentDTO._();
  const factory CustomerPendingPaymentDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'EFECTO_ID') required String effectId,
    @JsonKey(name: 'FACTURA_ID') String? invoiceId,
    @JsonKey(name: 'FECHA_FACUTRA') DateTime? invoiceDate,
    @JsonKey(name: 'FECHA_VENCIMIENTO') DateTime? expirationDate,
    @JsonKey(name: 'METODO_COBRO_ID') String? collectionMethodId,
    @JsonKey(name: 'ESTADO_COBRO_ID') String? collectionStatusId,
    @JsonKey(name: 'IMPORTE') double? amount,
    @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL') DateTime? initialExpirationDate,
    @JsonKey(name: 'VENCIDO_JBM') String? expirationJBM,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CustomerPendingPaymentDTO;

  factory CustomerPendingPaymentDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerPendingPaymentDTOFromJson(json);

  CustomerPendingPayment toDomain(
      {required CollectionMethod collectionMethod}) {
    return CustomerPendingPayment(
      customerId: customerId,
      effectId: effectId,
      invoiceId: invoiceId,
      invoiceDate: invoiceDate,
      expirationDate: expirationDate,
      collectionMethod: collectionMethod,
      collectionStatusId: collectionStatusId,
      amount: amount,
      initialExpirationDate: initialExpirationDate,
      expirationJBM: (expirationJBM != null) ? (expirationJBM != 'N') : null,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CustomerPendingPaymentTableCompanion(
      customerId: Value(customerId),
      effectId: Value(effectId),
      invoiceId: Value(invoiceId),
      invoiceDate: Value(invoiceDate),
      expirationDate: Value(expirationDate),
      collectionMethodId: Value(collectionMethodId),
      collectionStatusId: Value(collectionStatusId),
      amount: Value(amount),
      initialExpirationDate: Value(initialExpirationDate),
      expirationJBM: Value(expirationJBM),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CustomerPendingPaymentDTO)
class CustomerPendingPaymentTable extends Table {
  @override
  String get tableName => 'CLIENTES_PAGOS_PENDIENTES';

  @override
  Set<Column> get primaryKey => {customerId, effectId};

  TextColumn get customerId => text().named('CLIENTE_ID')();
  TextColumn get effectId => text().named('EFECTO_ID')();
  TextColumn get invoiceId => text().nullable().named('FACTURA_ID')();
  DateTimeColumn get invoiceDate =>
      dateTime().nullable().named('FECHA_FACTURA')();
  DateTimeColumn get expirationDate =>
      dateTime().nullable().named('FECHA_VENCIMIENTO')();
  TextColumn get collectionMethodId => text()
      .nullable()
      .references(CollectionMethodTable, #id)
      .named('METODO_COBRO_ID')();
  TextColumn get collectionStatusId =>
      text().nullable().named('ESTADO_COBRO_ID')();
  RealColumn get amount => real().nullable().named('IMPORTE')();
  DateTimeColumn get initialExpirationDate =>
      dateTime().nullable().named('FECHA_VENCIMIENTO_INICIAL')();
  TextColumn get expirationJBM => text().nullable().named('VENCIDO_JBM')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
