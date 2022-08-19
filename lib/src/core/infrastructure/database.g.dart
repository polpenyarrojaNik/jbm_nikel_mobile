// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class SalesOrderTableCompanion extends UpdateCompanion<SalesOrderDTO> {
  final Value<String> companyId;
  final Value<String> salesOrderId;
  final Value<DateTime> salesOrderDate;
  final Value<String> salesType;
  final Value<String> customerId;
  final Value<String?> customerName;
  final Value<String?> shippingAddress1;
  final Value<String?> shippingAddress2;
  final Value<String?> zipCode;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> countryId;
  final Value<String> divisaId;
  final Value<double> taxBase;
  final Value<double> ivaAmount;
  final Value<double> total;
  final Value<int> salesOrderStatusId;
  final Value<String> isOffer;
  final Value<double> promptPaymentDiscount;
  final Value<double> iva;
  final Value<DateTime?> lastUpdated;
  final Value<String> deleted;
  final Value<DateTime?> lastSync;
  const SalesOrderTableCompanion({
    this.companyId = const Value.absent(),
    this.salesOrderId = const Value.absent(),
    this.salesOrderDate = const Value.absent(),
    this.salesType = const Value.absent(),
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.shippingAddress1 = const Value.absent(),
    this.shippingAddress2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.taxBase = const Value.absent(),
    this.ivaAmount = const Value.absent(),
    this.total = const Value.absent(),
    this.salesOrderStatusId = const Value.absent(),
    this.isOffer = const Value.absent(),
    this.promptPaymentDiscount = const Value.absent(),
    this.iva = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
    this.lastSync = const Value.absent(),
  });
  SalesOrderTableCompanion.insert({
    required String companyId,
    required String salesOrderId,
    required DateTime salesOrderDate,
    required String salesType,
    required String customerId,
    this.customerName = const Value.absent(),
    this.shippingAddress1 = const Value.absent(),
    this.shippingAddress2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    required String divisaId,
    this.taxBase = const Value.absent(),
    this.ivaAmount = const Value.absent(),
    this.total = const Value.absent(),
    this.salesOrderStatusId = const Value.absent(),
    this.isOffer = const Value.absent(),
    this.promptPaymentDiscount = const Value.absent(),
    this.iva = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
    this.lastSync = const Value.absent(),
  })  : companyId = Value(companyId),
        salesOrderId = Value(salesOrderId),
        salesOrderDate = Value(salesOrderDate),
        salesType = Value(salesType),
        customerId = Value(customerId),
        divisaId = Value(divisaId);
  static Insertable<SalesOrderDTO> custom({
    Expression<String>? companyId,
    Expression<String>? salesOrderId,
    Expression<DateTime>? salesOrderDate,
    Expression<String>? salesType,
    Expression<String>? customerId,
    Expression<String?>? customerName,
    Expression<String?>? shippingAddress1,
    Expression<String?>? shippingAddress2,
    Expression<String?>? zipCode,
    Expression<String?>? city,
    Expression<String?>? state,
    Expression<String?>? countryId,
    Expression<String>? divisaId,
    Expression<double>? taxBase,
    Expression<double>? ivaAmount,
    Expression<double>? total,
    Expression<int>? salesOrderStatusId,
    Expression<String>? isOffer,
    Expression<double>? promptPaymentDiscount,
    Expression<double>? iva,
    Expression<DateTime?>? lastUpdated,
    Expression<String>? deleted,
    Expression<DateTime?>? lastSync,
  }) {
    return RawValuesInsertable({
      if (companyId != null) 'EMPRESA_ID': companyId,
      if (salesOrderId != null) 'PEDIDO_ID': salesOrderId,
      if (salesOrderDate != null) 'FECHA_PEDIDO': salesOrderDate,
      if (salesType != null) 'TIPO_VENTA': salesType,
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (customerName != null) 'NOMBRE_CLIENTE': customerName,
      if (shippingAddress1 != null) 'DIRECCION_ENVIO1': shippingAddress1,
      if (shippingAddress2 != null) 'DIRECCION_ENVIO2': shippingAddress2,
      if (zipCode != null) 'CODIGO_POSTAL': zipCode,
      if (city != null) 'POBLACION': city,
      if (state != null) 'PROVINCIA': state,
      if (countryId != null) 'PAIS_ID': countryId,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (taxBase != null) 'BASE_IMPONIBLE': taxBase,
      if (ivaAmount != null) 'IMPORTE_IVA': ivaAmount,
      if (total != null) 'TOTAL': total,
      if (salesOrderStatusId != null) 'ESTADO_PEDIDO_ID': salesOrderStatusId,
      if (isOffer != null) 'OFERTA_SN': isOffer,
      if (promptPaymentDiscount != null)
        'DESCUENTO_PRONTO_PAGO': promptPaymentDiscount,
      if (iva != null) 'IVA': iva,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
      if (lastSync != null) 'LAST_SYNC': lastSync,
    });
  }

  SalesOrderTableCompanion copyWith(
      {Value<String>? companyId,
      Value<String>? salesOrderId,
      Value<DateTime>? salesOrderDate,
      Value<String>? salesType,
      Value<String>? customerId,
      Value<String?>? customerName,
      Value<String?>? shippingAddress1,
      Value<String?>? shippingAddress2,
      Value<String?>? zipCode,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? countryId,
      Value<String>? divisaId,
      Value<double>? taxBase,
      Value<double>? ivaAmount,
      Value<double>? total,
      Value<int>? salesOrderStatusId,
      Value<String>? isOffer,
      Value<double>? promptPaymentDiscount,
      Value<double>? iva,
      Value<DateTime?>? lastUpdated,
      Value<String>? deleted,
      Value<DateTime?>? lastSync}) {
    return SalesOrderTableCompanion(
      companyId: companyId ?? this.companyId,
      salesOrderId: salesOrderId ?? this.salesOrderId,
      salesOrderDate: salesOrderDate ?? this.salesOrderDate,
      salesType: salesType ?? this.salesType,
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      shippingAddress1: shippingAddress1 ?? this.shippingAddress1,
      shippingAddress2: shippingAddress2 ?? this.shippingAddress2,
      zipCode: zipCode ?? this.zipCode,
      city: city ?? this.city,
      state: state ?? this.state,
      countryId: countryId ?? this.countryId,
      divisaId: divisaId ?? this.divisaId,
      taxBase: taxBase ?? this.taxBase,
      ivaAmount: ivaAmount ?? this.ivaAmount,
      total: total ?? this.total,
      salesOrderStatusId: salesOrderStatusId ?? this.salesOrderStatusId,
      isOffer: isOffer ?? this.isOffer,
      promptPaymentDiscount:
          promptPaymentDiscount ?? this.promptPaymentDiscount,
      iva: iva ?? this.iva,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
      lastSync: lastSync ?? this.lastSync,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (companyId.present) {
      map['EMPRESA_ID'] = Variable<String>(companyId.value);
    }
    if (salesOrderId.present) {
      map['PEDIDO_ID'] = Variable<String>(salesOrderId.value);
    }
    if (salesOrderDate.present) {
      map['FECHA_PEDIDO'] = Variable<DateTime>(salesOrderDate.value);
    }
    if (salesType.present) {
      map['TIPO_VENTA'] = Variable<String>(salesType.value);
    }
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (customerName.present) {
      map['NOMBRE_CLIENTE'] = Variable<String?>(customerName.value);
    }
    if (shippingAddress1.present) {
      map['DIRECCION_ENVIO1'] = Variable<String?>(shippingAddress1.value);
    }
    if (shippingAddress2.present) {
      map['DIRECCION_ENVIO2'] = Variable<String?>(shippingAddress2.value);
    }
    if (zipCode.present) {
      map['CODIGO_POSTAL'] = Variable<String?>(zipCode.value);
    }
    if (city.present) {
      map['POBLACION'] = Variable<String?>(city.value);
    }
    if (state.present) {
      map['PROVINCIA'] = Variable<String?>(state.value);
    }
    if (countryId.present) {
      map['PAIS_ID'] = Variable<String?>(countryId.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (taxBase.present) {
      map['BASE_IMPONIBLE'] = Variable<double>(taxBase.value);
    }
    if (ivaAmount.present) {
      map['IMPORTE_IVA'] = Variable<double>(ivaAmount.value);
    }
    if (total.present) {
      map['TOTAL'] = Variable<double>(total.value);
    }
    if (salesOrderStatusId.present) {
      map['ESTADO_PEDIDO_ID'] = Variable<int>(salesOrderStatusId.value);
    }
    if (isOffer.present) {
      map['OFERTA_SN'] = Variable<String>(isOffer.value);
    }
    if (promptPaymentDiscount.present) {
      map['DESCUENTO_PRONTO_PAGO'] =
          Variable<double>(promptPaymentDiscount.value);
    }
    if (iva.present) {
      map['IVA'] = Variable<double>(iva.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime?>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    if (lastSync.present) {
      map['LAST_SYNC'] = Variable<DateTime?>(lastSync.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesOrderTableCompanion(')
          ..write('companyId: $companyId, ')
          ..write('salesOrderId: $salesOrderId, ')
          ..write('salesOrderDate: $salesOrderDate, ')
          ..write('salesType: $salesType, ')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('shippingAddress1: $shippingAddress1, ')
          ..write('shippingAddress2: $shippingAddress2, ')
          ..write('zipCode: $zipCode, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('countryId: $countryId, ')
          ..write('divisaId: $divisaId, ')
          ..write('taxBase: $taxBase, ')
          ..write('ivaAmount: $ivaAmount, ')
          ..write('total: $total, ')
          ..write('salesOrderStatusId: $salesOrderStatusId, ')
          ..write('isOffer: $isOffer, ')
          ..write('promptPaymentDiscount: $promptPaymentDiscount, ')
          ..write('iva: $iva, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted, ')
          ..write('lastSync: $lastSync')
          ..write(')'))
        .toString();
  }
}

class $SalesOrderTableTable extends SalesOrderTable
    with TableInfo<$SalesOrderTableTable, SalesOrderDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesOrderTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String?> companyId = GeneratedColumn<String?>(
      'EMPRESA_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _salesOrderIdMeta =
      const VerificationMeta('salesOrderId');
  @override
  late final GeneratedColumn<String?> salesOrderId = GeneratedColumn<String?>(
      'PEDIDO_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _salesOrderDateMeta =
      const VerificationMeta('salesOrderDate');
  @override
  late final GeneratedColumn<DateTime?> salesOrderDate =
      GeneratedColumn<DateTime?>('FECHA_PEDIDO', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _salesTypeMeta = const VerificationMeta('salesType');
  @override
  late final GeneratedColumn<String?> salesType = GeneratedColumn<String?>(
      'TIPO_VENTA', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 6),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String?> customerName = GeneratedColumn<String?>(
      'NOMBRE_CLIENTE', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _shippingAddress1Meta =
      const VerificationMeta('shippingAddress1');
  @override
  late final GeneratedColumn<String?> shippingAddress1 =
      GeneratedColumn<String?>('DIRECCION_ENVIO1', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
          type: const StringType(),
          requiredDuringInsert: false);
  final VerificationMeta _shippingAddress2Meta =
      const VerificationMeta('shippingAddress2');
  @override
  late final GeneratedColumn<String?> shippingAddress2 =
      GeneratedColumn<String?>('DIRECCION_ENVIO2', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
          type: const StringType(),
          requiredDuringInsert: false);
  final VerificationMeta _zipCodeMeta = const VerificationMeta('zipCode');
  @override
  late final GeneratedColumn<String?> zipCode = GeneratedColumn<String?>(
      'CODIGO_POSTAL', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'POBLACION', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 60),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String?> state = GeneratedColumn<String?>(
      'PROVINCIA', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _countryIdMeta = const VerificationMeta('countryId');
  @override
  late final GeneratedColumn<String?> countryId = GeneratedColumn<String?>(
      'PAIS_ID', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 3),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String?> divisaId = GeneratedColumn<String?>(
      'DIVISA_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _taxBaseMeta = const VerificationMeta('taxBase');
  @override
  late final GeneratedColumn<double?> taxBase = GeneratedColumn<double?>(
      'BASE_IMPONIBLE', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _ivaAmountMeta = const VerificationMeta('ivaAmount');
  @override
  late final GeneratedColumn<double?> ivaAmount = GeneratedColumn<double?>(
      'IMPORTE_IVA', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double?> total = GeneratedColumn<double?>(
      'TOTAL', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _salesOrderStatusIdMeta =
      const VerificationMeta('salesOrderStatusId');
  @override
  late final GeneratedColumn<int?> salesOrderStatusId = GeneratedColumn<int?>(
      'ESTADO_PEDIDO_ID', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _isOfferMeta = const VerificationMeta('isOffer');
  @override
  late final GeneratedColumn<String?> isOffer = GeneratedColumn<String?>(
      'OFERTA_SN', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  final VerificationMeta _promptPaymentDiscountMeta =
      const VerificationMeta('promptPaymentDiscount');
  @override
  late final GeneratedColumn<double?> promptPaymentDiscount =
      GeneratedColumn<double?>('DESCUENTO_PRONTO_PAGO', aliasedName, false,
          type: const RealType(),
          requiredDuringInsert: false,
          defaultValue: const Constant(0.0));
  final VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double?> iva = GeneratedColumn<double?>(
      'IVA', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  final VerificationMeta _lastSyncMeta = const VerificationMeta('lastSync');
  @override
  late final GeneratedColumn<DateTime?> lastSync = GeneratedColumn<DateTime?>(
      'LAST_SYNC', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        companyId,
        salesOrderId,
        salesOrderDate,
        salesType,
        customerId,
        customerName,
        shippingAddress1,
        shippingAddress2,
        zipCode,
        city,
        state,
        countryId,
        divisaId,
        taxBase,
        ivaAmount,
        total,
        salesOrderStatusId,
        isOffer,
        promptPaymentDiscount,
        iva,
        lastUpdated,
        deleted,
        lastSync
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS';
  @override
  String get actualTableName => 'PEDIDOS';
  @override
  VerificationContext validateIntegrity(Insertable<SalesOrderDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(
          _salesOrderIdMeta,
          salesOrderId.isAcceptableOrUnknown(
              data['PEDIDO_ID']!, _salesOrderIdMeta));
    } else if (isInserting) {
      context.missing(_salesOrderIdMeta);
    }
    if (data.containsKey('FECHA_PEDIDO')) {
      context.handle(
          _salesOrderDateMeta,
          salesOrderDate.isAcceptableOrUnknown(
              data['FECHA_PEDIDO']!, _salesOrderDateMeta));
    } else if (isInserting) {
      context.missing(_salesOrderDateMeta);
    }
    if (data.containsKey('TIPO_VENTA')) {
      context.handle(_salesTypeMeta,
          salesType.isAcceptableOrUnknown(data['TIPO_VENTA']!, _salesTypeMeta));
    } else if (isInserting) {
      context.missing(_salesTypeMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('NOMBRE_CLIENTE')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['NOMBRE_CLIENTE']!, _customerNameMeta));
    }
    if (data.containsKey('DIRECCION_ENVIO1')) {
      context.handle(
          _shippingAddress1Meta,
          shippingAddress1.isAcceptableOrUnknown(
              data['DIRECCION_ENVIO1']!, _shippingAddress1Meta));
    }
    if (data.containsKey('DIRECCION_ENVIO2')) {
      context.handle(
          _shippingAddress2Meta,
          shippingAddress2.isAcceptableOrUnknown(
              data['DIRECCION_ENVIO2']!, _shippingAddress2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL')) {
      context.handle(_zipCodeMeta,
          zipCode.isAcceptableOrUnknown(data['CODIGO_POSTAL']!, _zipCodeMeta));
    }
    if (data.containsKey('POBLACION')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['POBLACION']!, _cityMeta));
    }
    if (data.containsKey('PROVINCIA')) {
      context.handle(_stateMeta,
          state.isAcceptableOrUnknown(data['PROVINCIA']!, _stateMeta));
    }
    if (data.containsKey('PAIS_ID')) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableOrUnknown(data['PAIS_ID']!, _countryIdMeta));
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    } else if (isInserting) {
      context.missing(_divisaIdMeta);
    }
    if (data.containsKey('BASE_IMPONIBLE')) {
      context.handle(_taxBaseMeta,
          taxBase.isAcceptableOrUnknown(data['BASE_IMPONIBLE']!, _taxBaseMeta));
    }
    if (data.containsKey('IMPORTE_IVA')) {
      context.handle(
          _ivaAmountMeta,
          ivaAmount.isAcceptableOrUnknown(
              data['IMPORTE_IVA']!, _ivaAmountMeta));
    }
    if (data.containsKey('TOTAL')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['TOTAL']!, _totalMeta));
    }
    if (data.containsKey('ESTADO_PEDIDO_ID')) {
      context.handle(
          _salesOrderStatusIdMeta,
          salesOrderStatusId.isAcceptableOrUnknown(
              data['ESTADO_PEDIDO_ID']!, _salesOrderStatusIdMeta));
    }
    if (data.containsKey('OFERTA_SN')) {
      context.handle(_isOfferMeta,
          isOffer.isAcceptableOrUnknown(data['OFERTA_SN']!, _isOfferMeta));
    }
    if (data.containsKey('DESCUENTO_PRONTO_PAGO')) {
      context.handle(
          _promptPaymentDiscountMeta,
          promptPaymentDiscount.isAcceptableOrUnknown(
              data['DESCUENTO_PRONTO_PAGO']!, _promptPaymentDiscountMeta));
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _ivaMeta, iva.isAcceptableOrUnknown(data['IVA']!, _ivaMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    if (data.containsKey('LAST_SYNC')) {
      context.handle(_lastSyncMeta,
          lastSync.isAcceptableOrUnknown(data['LAST_SYNC']!, _lastSyncMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {salesOrderId, companyId};
  @override
  SalesOrderDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesOrderDTO(
      companyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}EMPRESA_ID'])!,
      salesOrderId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PEDIDO_ID'])!,
      salesOrderDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FECHA_PEDIDO'])!,
      salesType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}TIPO_VENTA'])!,
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      customerName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}NOMBRE_CLIENTE']),
      shippingAddress1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION_ENVIO1']),
      shippingAddress2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION_ENVIO2']),
      zipCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CODIGO_POSTAL']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}POBLACION']),
      state: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PROVINCIA']),
      countryId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PAIS_ID']),
      divisaId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIVISA_ID'])!,
      taxBase: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}BASE_IMPONIBLE'])!,
      ivaAmount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}IMPORTE_IVA'])!,
      total: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}TOTAL'])!,
      salesOrderStatusId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ESTADO_PEDIDO_ID'])!,
      isOffer: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}OFERTA_SN'])!,
      promptPaymentDiscount: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}DESCUENTO_PRONTO_PAGO'])!,
      iva: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}IVA'])!,
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED']),
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SalesOrderTableTable createAlias(String alias) {
    return $SalesOrderTableTable(attachedDatabase, alias);
  }
}

class LastSyncDateTableData extends DataClass
    implements Insertable<LastSyncDateTableData> {
  final String id;
  final String? lastSyncSalesOrder;
  final String? lastSyncCustomer;
  LastSyncDateTableData(
      {required this.id, this.lastSyncSalesOrder, this.lastSyncCustomer});
  factory LastSyncDateTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LastSyncDateTableData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ID'])!,
      lastSyncSalesOrder: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_SALES_ORDER']),
      lastSyncCustomer: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_CUSTOMER']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<String>(id);
    if (!nullToAbsent || lastSyncSalesOrder != null) {
      map['LAST_SYNC_SALES_ORDER'] = Variable<String?>(lastSyncSalesOrder);
    }
    if (!nullToAbsent || lastSyncCustomer != null) {
      map['LAST_SYNC_CUSTOMER'] = Variable<String?>(lastSyncCustomer);
    }
    return map;
  }

  LastSyncDateTableCompanion toCompanion(bool nullToAbsent) {
    return LastSyncDateTableCompanion(
      id: Value(id),
      lastSyncSalesOrder: lastSyncSalesOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncSalesOrder),
      lastSyncCustomer: lastSyncCustomer == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomer),
    );
  }

  factory LastSyncDateTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LastSyncDateTableData(
      id: serializer.fromJson<String>(json['id']),
      lastSyncSalesOrder:
          serializer.fromJson<String?>(json['lastSyncSalesOrder']),
      lastSyncCustomer: serializer.fromJson<String?>(json['lastSyncCustomer']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastSyncSalesOrder': serializer.toJson<String?>(lastSyncSalesOrder),
      'lastSyncCustomer': serializer.toJson<String?>(lastSyncCustomer),
    };
  }

  LastSyncDateTableData copyWith(
          {String? id, String? lastSyncSalesOrder, String? lastSyncCustomer}) =>
      LastSyncDateTableData(
        id: id ?? this.id,
        lastSyncSalesOrder: lastSyncSalesOrder ?? this.lastSyncSalesOrder,
        lastSyncCustomer: lastSyncCustomer ?? this.lastSyncCustomer,
      );
  @override
  String toString() {
    return (StringBuffer('LastSyncDateTableData(')
          ..write('id: $id, ')
          ..write('lastSyncSalesOrder: $lastSyncSalesOrder, ')
          ..write('lastSyncCustomer: $lastSyncCustomer')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastSyncSalesOrder, lastSyncCustomer);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LastSyncDateTableData &&
          other.id == this.id &&
          other.lastSyncSalesOrder == this.lastSyncSalesOrder &&
          other.lastSyncCustomer == this.lastSyncCustomer);
}

class LastSyncDateTableCompanion
    extends UpdateCompanion<LastSyncDateTableData> {
  final Value<String> id;
  final Value<String?> lastSyncSalesOrder;
  final Value<String?> lastSyncCustomer;
  const LastSyncDateTableCompanion({
    this.id = const Value.absent(),
    this.lastSyncSalesOrder = const Value.absent(),
    this.lastSyncCustomer = const Value.absent(),
  });
  LastSyncDateTableCompanion.insert({
    required String id,
    this.lastSyncSalesOrder = const Value.absent(),
    this.lastSyncCustomer = const Value.absent(),
  }) : id = Value(id);
  static Insertable<LastSyncDateTableData> custom({
    Expression<String>? id,
    Expression<String?>? lastSyncSalesOrder,
    Expression<String?>? lastSyncCustomer,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (lastSyncSalesOrder != null)
        'LAST_SYNC_SALES_ORDER': lastSyncSalesOrder,
      if (lastSyncCustomer != null) 'LAST_SYNC_CUSTOMER': lastSyncCustomer,
    });
  }

  LastSyncDateTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? lastSyncSalesOrder,
      Value<String?>? lastSyncCustomer}) {
    return LastSyncDateTableCompanion(
      id: id ?? this.id,
      lastSyncSalesOrder: lastSyncSalesOrder ?? this.lastSyncSalesOrder,
      lastSyncCustomer: lastSyncCustomer ?? this.lastSyncCustomer,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<String>(id.value);
    }
    if (lastSyncSalesOrder.present) {
      map['LAST_SYNC_SALES_ORDER'] =
          Variable<String?>(lastSyncSalesOrder.value);
    }
    if (lastSyncCustomer.present) {
      map['LAST_SYNC_CUSTOMER'] = Variable<String?>(lastSyncCustomer.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LastSyncDateTableCompanion(')
          ..write('id: $id, ')
          ..write('lastSyncSalesOrder: $lastSyncSalesOrder, ')
          ..write('lastSyncCustomer: $lastSyncCustomer')
          ..write(')'))
        .toString();
  }
}

class $LastSyncDateTableTable extends LastSyncDateTable
    with TableInfo<$LastSyncDateTableTable, LastSyncDateTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LastSyncDateTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lastSyncSalesOrderMeta =
      const VerificationMeta('lastSyncSalesOrder');
  @override
  late final GeneratedColumn<String?> lastSyncSalesOrder =
      GeneratedColumn<String?>('LAST_SYNC_SALES_ORDER', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerMeta =
      const VerificationMeta('lastSyncCustomer');
  @override
  late final GeneratedColumn<String?> lastSyncCustomer =
      GeneratedColumn<String?>('LAST_SYNC_CUSTOMER', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, lastSyncSalesOrder, lastSyncCustomer];
  @override
  String get aliasedName => _alias ?? 'LAST_SYNC_DATE';
  @override
  String get actualTableName => 'LAST_SYNC_DATE';
  @override
  VerificationContext validateIntegrity(
      Insertable<LastSyncDateTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('LAST_SYNC_SALES_ORDER')) {
      context.handle(
          _lastSyncSalesOrderMeta,
          lastSyncSalesOrder.isAcceptableOrUnknown(
              data['LAST_SYNC_SALES_ORDER']!, _lastSyncSalesOrderMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER')) {
      context.handle(
          _lastSyncCustomerMeta,
          lastSyncCustomer.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER']!, _lastSyncCustomerMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LastSyncDateTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LastSyncDateTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LastSyncDateTableTable createAlias(String alias) {
    return $LastSyncDateTableTable(attachedDatabase, alias);
  }
}

class CollectionMethodTableCompanion
    extends UpdateCompanion<CollectionMethodDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CollectionMethodTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CollectionMethodTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<CollectionMethodDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (descriptionES != null) 'description_e_s': descriptionES,
      if (descriptionEN != null) 'description_e_n': descriptionEN,
      if (descriptionFR != null) 'description_f_r': descriptionFR,
      if (descriptionDE != null) 'description_d_e': descriptionDE,
      if (descriptionCA != null) 'description_c_a': descriptionCA,
      if (descriptionGB != null) 'description_g_b': descriptionGB,
      if (descriptionHU != null) 'description_h_u': descriptionHU,
      if (descriptionIT != null) 'description_i_t': descriptionIT,
      if (descriptionNL != null) 'description_n_l': descriptionNL,
      if (descriptionPL != null) 'description_p_l': descriptionPL,
      if (descriptionPT != null) 'description_p_t': descriptionPT,
      if (descriptionRO != null) 'description_r_o': descriptionRO,
      if (descriptionRU != null) 'description_r_u': descriptionRU,
      if (descriptionCN != null) 'description_c_n': descriptionCN,
      if (descriptionEL != null) 'description_e_l': descriptionEL,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (deleted != null) 'deleted': deleted,
    });
  }

  CollectionMethodTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CollectionMethodTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['description_e_s'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['description_e_n'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['description_f_r'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['description_d_e'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['description_c_a'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['description_g_b'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['description_h_u'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['description_i_t'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['description_n_l'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['description_p_l'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['description_p_t'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['description_r_o'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['description_r_u'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['description_c_n'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['description_e_l'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionMethodTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CollectionMethodTableTable extends CollectionMethodTable
    with TableInfo<$CollectionMethodTableTable, CollectionMethodDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionMethodTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'description_e_s', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'description_e_n', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'description_f_r', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'description_d_e', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'description_c_a', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'description_g_b', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'description_h_u', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'description_i_t', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'description_n_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'description_p_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'description_p_t', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'description_r_o', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'description_r_u', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'description_c_n', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'description_e_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('last_updated', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'deleted', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'METODOS_COBRO';
  @override
  String get actualTableName => 'METODOS_COBRO';
  @override
  VerificationContext validateIntegrity(
      Insertable<CollectionMethodDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('description_e_s')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['description_e_s']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('description_e_n')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['description_e_n']!, _descriptionENMeta));
    }
    if (data.containsKey('description_f_r')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['description_f_r']!, _descriptionFRMeta));
    }
    if (data.containsKey('description_d_e')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['description_d_e']!, _descriptionDEMeta));
    }
    if (data.containsKey('description_c_a')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['description_c_a']!, _descriptionCAMeta));
    }
    if (data.containsKey('description_g_b')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['description_g_b']!, _descriptionGBMeta));
    }
    if (data.containsKey('description_h_u')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['description_h_u']!, _descriptionHUMeta));
    }
    if (data.containsKey('description_i_t')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['description_i_t']!, _descriptionITMeta));
    }
    if (data.containsKey('description_n_l')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['description_n_l']!, _descriptionNLMeta));
    }
    if (data.containsKey('description_p_l')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['description_p_l']!, _descriptionPLMeta));
    }
    if (data.containsKey('description_p_t')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['description_p_t']!, _descriptionPTMeta));
    }
    if (data.containsKey('description_r_o')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['description_r_o']!, _descriptionROMeta));
    }
    if (data.containsKey('description_r_u')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['description_r_u']!, _descriptionRUMeta));
    }
    if (data.containsKey('description_c_n')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['description_c_n']!, _descriptionCNMeta));
    }
    if (data.containsKey('description_e_l')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['description_e_l']!, _descriptionELMeta));
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionMethodDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionMethodDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_s'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_n']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_f_r']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_d_e']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_c_a']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_g_b']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_h_u']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_i_t']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_n_l']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_p_l']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_p_t']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_r_o']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_r_u']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_c_n']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_l']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
    );
  }

  @override
  $CollectionMethodTableTable createAlias(String alias) {
    return $CollectionMethodTableTable(attachedDatabase, alias);
  }
}

class CollectionTermTableCompanion extends UpdateCompanion<CollectionTermDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CollectionTermTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CollectionTermTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<CollectionTermDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (descriptionES != null) 'description_e_s': descriptionES,
      if (descriptionEN != null) 'description_e_n': descriptionEN,
      if (descriptionFR != null) 'description_f_r': descriptionFR,
      if (descriptionDE != null) 'description_d_e': descriptionDE,
      if (descriptionCA != null) 'description_c_a': descriptionCA,
      if (descriptionGB != null) 'description_g_b': descriptionGB,
      if (descriptionHU != null) 'description_h_u': descriptionHU,
      if (descriptionIT != null) 'description_i_t': descriptionIT,
      if (descriptionNL != null) 'description_n_l': descriptionNL,
      if (descriptionPL != null) 'description_p_l': descriptionPL,
      if (descriptionPT != null) 'description_p_t': descriptionPT,
      if (descriptionRO != null) 'description_r_o': descriptionRO,
      if (descriptionRU != null) 'description_r_u': descriptionRU,
      if (descriptionCN != null) 'description_c_n': descriptionCN,
      if (descriptionEL != null) 'description_e_l': descriptionEL,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (deleted != null) 'deleted': deleted,
    });
  }

  CollectionTermTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CollectionTermTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['description_e_s'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['description_e_n'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['description_f_r'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['description_d_e'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['description_c_a'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['description_g_b'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['description_h_u'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['description_i_t'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['description_n_l'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['description_p_l'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['description_p_t'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['description_r_o'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['description_r_u'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['description_c_n'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['description_e_l'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionTermTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CollectionTermTableTable extends CollectionTermTable
    with TableInfo<$CollectionTermTableTable, CollectionTermDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionTermTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'description_e_s', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'description_e_n', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'description_f_r', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'description_d_e', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'description_c_a', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'description_g_b', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'description_h_u', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'description_i_t', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'description_n_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'description_p_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'description_p_t', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'description_r_o', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'description_r_u', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'description_c_n', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'description_e_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('last_updated', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'deleted', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PLAZOS_COBRO';
  @override
  String get actualTableName => 'PLAZOS_COBRO';
  @override
  VerificationContext validateIntegrity(Insertable<CollectionTermDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('description_e_s')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['description_e_s']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('description_e_n')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['description_e_n']!, _descriptionENMeta));
    }
    if (data.containsKey('description_f_r')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['description_f_r']!, _descriptionFRMeta));
    }
    if (data.containsKey('description_d_e')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['description_d_e']!, _descriptionDEMeta));
    }
    if (data.containsKey('description_c_a')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['description_c_a']!, _descriptionCAMeta));
    }
    if (data.containsKey('description_g_b')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['description_g_b']!, _descriptionGBMeta));
    }
    if (data.containsKey('description_h_u')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['description_h_u']!, _descriptionHUMeta));
    }
    if (data.containsKey('description_i_t')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['description_i_t']!, _descriptionITMeta));
    }
    if (data.containsKey('description_n_l')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['description_n_l']!, _descriptionNLMeta));
    }
    if (data.containsKey('description_p_l')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['description_p_l']!, _descriptionPLMeta));
    }
    if (data.containsKey('description_p_t')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['description_p_t']!, _descriptionPTMeta));
    }
    if (data.containsKey('description_r_o')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['description_r_o']!, _descriptionROMeta));
    }
    if (data.containsKey('description_r_u')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['description_r_u']!, _descriptionRUMeta));
    }
    if (data.containsKey('description_c_n')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['description_c_n']!, _descriptionCNMeta));
    }
    if (data.containsKey('description_e_l')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['description_e_l']!, _descriptionELMeta));
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionTermDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionTermDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_s'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_n']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_f_r']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_d_e']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_c_a']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_g_b']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_h_u']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_i_t']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_n_l']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_p_l']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_p_t']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_r_o']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_r_u']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_c_n']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_l']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
    );
  }

  @override
  $CollectionTermTableTable createAlias(String alias) {
    return $CollectionTermTableTable(attachedDatabase, alias);
  }
}

class CountryTableCompanion extends UpdateCompanion<CountryDTO> {
  final Value<String> id;
  final Value<String?> isoCode;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CountryTableCompanion({
    this.id = const Value.absent(),
    this.isoCode = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CountryTableCompanion.insert({
    required String id,
    this.isoCode = const Value.absent(),
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<CountryDTO> custom({
    Expression<String>? id,
    Expression<String?>? isoCode,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isoCode != null) 'iso_code': isoCode,
      if (descriptionES != null) 'description_e_s': descriptionES,
      if (descriptionEN != null) 'description_e_n': descriptionEN,
      if (descriptionFR != null) 'description_f_r': descriptionFR,
      if (descriptionDE != null) 'description_d_e': descriptionDE,
      if (descriptionCA != null) 'description_c_a': descriptionCA,
      if (descriptionGB != null) 'description_g_b': descriptionGB,
      if (descriptionHU != null) 'description_h_u': descriptionHU,
      if (descriptionIT != null) 'description_i_t': descriptionIT,
      if (descriptionNL != null) 'description_n_l': descriptionNL,
      if (descriptionPL != null) 'description_p_l': descriptionPL,
      if (descriptionPT != null) 'description_p_t': descriptionPT,
      if (descriptionRO != null) 'description_r_o': descriptionRO,
      if (descriptionRU != null) 'description_r_u': descriptionRU,
      if (descriptionCN != null) 'description_c_n': descriptionCN,
      if (descriptionEL != null) 'description_e_l': descriptionEL,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (deleted != null) 'deleted': deleted,
    });
  }

  CountryTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? isoCode,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CountryTableCompanion(
      id: id ?? this.id,
      isoCode: isoCode ?? this.isoCode,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (isoCode.present) {
      map['iso_code'] = Variable<String?>(isoCode.value);
    }
    if (descriptionES.present) {
      map['description_e_s'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['description_e_n'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['description_f_r'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['description_d_e'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['description_c_a'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['description_g_b'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['description_h_u'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['description_i_t'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['description_n_l'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['description_p_l'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['description_p_t'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['description_r_o'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['description_r_u'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['description_c_n'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['description_e_l'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CountryTableCompanion(')
          ..write('id: $id, ')
          ..write('isoCode: $isoCode, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CountryTableTable extends CountryTable
    with TableInfo<$CountryTableTable, CountryDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CountryTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isoCodeMeta = const VerificationMeta('isoCode');
  @override
  late final GeneratedColumn<String?> isoCode = GeneratedColumn<String?>(
      'iso_code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'description_e_s', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'description_e_n', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'description_f_r', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'description_d_e', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'description_c_a', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'description_g_b', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'description_h_u', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'description_i_t', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'description_n_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'description_p_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'description_p_t', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'description_r_o', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'description_r_u', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'description_c_n', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'description_e_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('last_updated', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'deleted', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        isoCode,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PAISES';
  @override
  String get actualTableName => 'PAISES';
  @override
  VerificationContext validateIntegrity(Insertable<CountryDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('iso_code')) {
      context.handle(_isoCodeMeta,
          isoCode.isAcceptableOrUnknown(data['iso_code']!, _isoCodeMeta));
    }
    if (data.containsKey('description_e_s')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['description_e_s']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('description_e_n')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['description_e_n']!, _descriptionENMeta));
    }
    if (data.containsKey('description_f_r')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['description_f_r']!, _descriptionFRMeta));
    }
    if (data.containsKey('description_d_e')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['description_d_e']!, _descriptionDEMeta));
    }
    if (data.containsKey('description_c_a')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['description_c_a']!, _descriptionCAMeta));
    }
    if (data.containsKey('description_g_b')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['description_g_b']!, _descriptionGBMeta));
    }
    if (data.containsKey('description_h_u')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['description_h_u']!, _descriptionHUMeta));
    }
    if (data.containsKey('description_i_t')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['description_i_t']!, _descriptionITMeta));
    }
    if (data.containsKey('description_n_l')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['description_n_l']!, _descriptionNLMeta));
    }
    if (data.containsKey('description_p_l')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['description_p_l']!, _descriptionPLMeta));
    }
    if (data.containsKey('description_p_t')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['description_p_t']!, _descriptionPTMeta));
    }
    if (data.containsKey('description_r_o')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['description_r_o']!, _descriptionROMeta));
    }
    if (data.containsKey('description_r_u')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['description_r_u']!, _descriptionRUMeta));
    }
    if (data.containsKey('description_c_n')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['description_c_n']!, _descriptionCNMeta));
    }
    if (data.containsKey('description_e_l')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['description_e_l']!, _descriptionELMeta));
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CountryDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CountryDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      isoCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}iso_code']),
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_s'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_n']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_f_r']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_d_e']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_c_a']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_g_b']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_h_u']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_i_t']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_n_l']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_p_l']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_p_t']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_r_o']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_r_u']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_c_n']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_l']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
    );
  }

  @override
  $CountryTableTable createAlias(String alias) {
    return $CountryTableTable(attachedDatabase, alias);
  }
}

class DivisaTableCompanion extends UpdateCompanion<DivisaDTO> {
  final Value<String> id;
  final Value<String> abv;
  final Value<String?> symbol;
  final Value<double?> rounded;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const DivisaTableCompanion({
    this.id = const Value.absent(),
    this.abv = const Value.absent(),
    this.symbol = const Value.absent(),
    this.rounded = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  DivisaTableCompanion.insert({
    required String id,
    required String abv,
    this.symbol = const Value.absent(),
    this.rounded = const Value.absent(),
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        abv = Value(abv),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<DivisaDTO> custom({
    Expression<String>? id,
    Expression<String>? abv,
    Expression<String?>? symbol,
    Expression<double?>? rounded,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (abv != null) 'abv': abv,
      if (symbol != null) 'symbol': symbol,
      if (rounded != null) 'rounded': rounded,
      if (descriptionES != null) 'description_e_s': descriptionES,
      if (descriptionEN != null) 'description_e_n': descriptionEN,
      if (descriptionFR != null) 'description_f_r': descriptionFR,
      if (descriptionDE != null) 'description_d_e': descriptionDE,
      if (descriptionCA != null) 'description_c_a': descriptionCA,
      if (descriptionGB != null) 'description_g_b': descriptionGB,
      if (descriptionHU != null) 'description_h_u': descriptionHU,
      if (descriptionIT != null) 'description_i_t': descriptionIT,
      if (descriptionNL != null) 'description_n_l': descriptionNL,
      if (descriptionPL != null) 'description_p_l': descriptionPL,
      if (descriptionPT != null) 'description_p_t': descriptionPT,
      if (descriptionRO != null) 'description_r_o': descriptionRO,
      if (descriptionRU != null) 'description_r_u': descriptionRU,
      if (descriptionCN != null) 'description_c_n': descriptionCN,
      if (descriptionEL != null) 'description_e_l': descriptionEL,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (deleted != null) 'deleted': deleted,
    });
  }

  DivisaTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? abv,
      Value<String?>? symbol,
      Value<double?>? rounded,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return DivisaTableCompanion(
      id: id ?? this.id,
      abv: abv ?? this.abv,
      symbol: symbol ?? this.symbol,
      rounded: rounded ?? this.rounded,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (abv.present) {
      map['abv'] = Variable<String>(abv.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String?>(symbol.value);
    }
    if (rounded.present) {
      map['rounded'] = Variable<double?>(rounded.value);
    }
    if (descriptionES.present) {
      map['description_e_s'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['description_e_n'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['description_f_r'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['description_d_e'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['description_c_a'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['description_g_b'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['description_h_u'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['description_i_t'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['description_n_l'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['description_p_l'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['description_p_t'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['description_r_o'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['description_r_u'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['description_c_n'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['description_e_l'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DivisaTableCompanion(')
          ..write('id: $id, ')
          ..write('abv: $abv, ')
          ..write('symbol: $symbol, ')
          ..write('rounded: $rounded, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $DivisaTableTable extends DivisaTable
    with TableInfo<$DivisaTableTable, DivisaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DivisaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _abvMeta = const VerificationMeta('abv');
  @override
  late final GeneratedColumn<String?> abv = GeneratedColumn<String?>(
      'abv', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _roundedMeta = const VerificationMeta('rounded');
  @override
  late final GeneratedColumn<double?> rounded = GeneratedColumn<double?>(
      'rounded', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'description_e_s', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'description_e_n', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'description_f_r', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'description_d_e', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'description_c_a', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'description_g_b', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'description_h_u', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'description_i_t', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'description_n_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'description_p_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'description_p_t', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'description_r_o', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'description_r_u', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'description_c_n', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'description_e_l', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('last_updated', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'deleted', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        abv,
        symbol,
        rounded,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'DIVISAS';
  @override
  String get actualTableName => 'DIVISAS';
  @override
  VerificationContext validateIntegrity(Insertable<DivisaDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('abv')) {
      context.handle(
          _abvMeta, abv.isAcceptableOrUnknown(data['abv']!, _abvMeta));
    } else if (isInserting) {
      context.missing(_abvMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    }
    if (data.containsKey('rounded')) {
      context.handle(_roundedMeta,
          rounded.isAcceptableOrUnknown(data['rounded']!, _roundedMeta));
    }
    if (data.containsKey('description_e_s')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['description_e_s']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('description_e_n')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['description_e_n']!, _descriptionENMeta));
    }
    if (data.containsKey('description_f_r')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['description_f_r']!, _descriptionFRMeta));
    }
    if (data.containsKey('description_d_e')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['description_d_e']!, _descriptionDEMeta));
    }
    if (data.containsKey('description_c_a')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['description_c_a']!, _descriptionCAMeta));
    }
    if (data.containsKey('description_g_b')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['description_g_b']!, _descriptionGBMeta));
    }
    if (data.containsKey('description_h_u')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['description_h_u']!, _descriptionHUMeta));
    }
    if (data.containsKey('description_i_t')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['description_i_t']!, _descriptionITMeta));
    }
    if (data.containsKey('description_n_l')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['description_n_l']!, _descriptionNLMeta));
    }
    if (data.containsKey('description_p_l')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['description_p_l']!, _descriptionPLMeta));
    }
    if (data.containsKey('description_p_t')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['description_p_t']!, _descriptionPTMeta));
    }
    if (data.containsKey('description_r_o')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['description_r_o']!, _descriptionROMeta));
    }
    if (data.containsKey('description_r_u')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['description_r_u']!, _descriptionRUMeta));
    }
    if (data.containsKey('description_c_n')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['description_c_n']!, _descriptionCNMeta));
    }
    if (data.containsKey('description_e_l')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['description_e_l']!, _descriptionELMeta));
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DivisaDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DivisaDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      abv: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}abv'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol']),
      rounded: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rounded']),
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_s'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_n']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_f_r']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_d_e']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_c_a']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_g_b']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_h_u']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_i_t']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_n_l']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_p_l']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_p_t']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_r_o']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_r_u']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_c_n']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description_e_l']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
    );
  }

  @override
  $DivisaTableTable createAlias(String alias) {
    return $DivisaTableTable(attachedDatabase, alias);
  }
}

class CustomerTableCompanion extends UpdateCompanion<CustomerDTO> {
  final Value<String> id;
  final Value<String?> customerName;
  final Value<String?> nif;
  final Value<String?> fiscalName;
  final Value<String?> fiscalAddress1;
  final Value<String?> fiscalAddress2;
  final Value<String?> fiscalZipCode;
  final Value<String?> fiscalCity;
  final Value<String?> fiscalState;
  final Value<String?> fiscalCountryId;
  final Value<double?> fiscalLatitude;
  final Value<double?> fiscalLongitude;
  final Value<String> companyId;
  final Value<double?> especialVAT;
  final Value<String?> exemptVat;
  final Value<double?> currentYearSales;
  final Value<double?> previousYearSales;
  final Value<double?> salesTwoYearsAgo;
  final Value<double?> currentYearMargin;
  final Value<double?> previousYearMargin;
  final Value<double?> marginTwoYearsAgo;
  final Value<double?> paymentPercent;
  final Value<double?> warrantyPercent;
  final Value<String?> shoppingCenterName;
  final Value<String?> urlWebsite;
  final Value<String?> divisaId;
  final Value<String?> rateId;
  final Value<String?> rateDescription;
  final Value<String?> generalDiscount;
  final Value<String?> generalDiscountDescription;
  final Value<String> priceCalculationType;
  final Value<String?> collectionTermId;
  final Value<String?> collectionMethodId;
  final Value<double> promptPaymentDiscount;
  final Value<double> internalGrantedRisk;
  final Value<DateTime?> internalGrantedRiskDate;
  final Value<double> cofaceGrantedRisk;
  final Value<DateTime?> cofaceGrantedRiskDate;
  final Value<double?> riskGranted;
  final Value<double?> riskPendingCollectionDue;
  final Value<double?> riskPendingColleectionNotDue;
  final Value<double?> riskPendingToServe;
  final Value<double?> riskPendingBilling;
  final Value<String?> internalRemarks;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerTableCompanion({
    this.id = const Value.absent(),
    this.customerName = const Value.absent(),
    this.nif = const Value.absent(),
    this.fiscalName = const Value.absent(),
    this.fiscalAddress1 = const Value.absent(),
    this.fiscalAddress2 = const Value.absent(),
    this.fiscalZipCode = const Value.absent(),
    this.fiscalCity = const Value.absent(),
    this.fiscalState = const Value.absent(),
    this.fiscalCountryId = const Value.absent(),
    this.fiscalLatitude = const Value.absent(),
    this.fiscalLongitude = const Value.absent(),
    this.companyId = const Value.absent(),
    this.especialVAT = const Value.absent(),
    this.exemptVat = const Value.absent(),
    this.currentYearSales = const Value.absent(),
    this.previousYearSales = const Value.absent(),
    this.salesTwoYearsAgo = const Value.absent(),
    this.currentYearMargin = const Value.absent(),
    this.previousYearMargin = const Value.absent(),
    this.marginTwoYearsAgo = const Value.absent(),
    this.paymentPercent = const Value.absent(),
    this.warrantyPercent = const Value.absent(),
    this.shoppingCenterName = const Value.absent(),
    this.urlWebsite = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.rateId = const Value.absent(),
    this.rateDescription = const Value.absent(),
    this.generalDiscount = const Value.absent(),
    this.generalDiscountDescription = const Value.absent(),
    this.priceCalculationType = const Value.absent(),
    this.collectionTermId = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    this.promptPaymentDiscount = const Value.absent(),
    this.internalGrantedRisk = const Value.absent(),
    this.internalGrantedRiskDate = const Value.absent(),
    this.cofaceGrantedRisk = const Value.absent(),
    this.cofaceGrantedRiskDate = const Value.absent(),
    this.riskGranted = const Value.absent(),
    this.riskPendingCollectionDue = const Value.absent(),
    this.riskPendingColleectionNotDue = const Value.absent(),
    this.riskPendingToServe = const Value.absent(),
    this.riskPendingBilling = const Value.absent(),
    this.internalRemarks = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerTableCompanion.insert({
    required String id,
    this.customerName = const Value.absent(),
    this.nif = const Value.absent(),
    this.fiscalName = const Value.absent(),
    this.fiscalAddress1 = const Value.absent(),
    this.fiscalAddress2 = const Value.absent(),
    this.fiscalZipCode = const Value.absent(),
    this.fiscalCity = const Value.absent(),
    this.fiscalState = const Value.absent(),
    this.fiscalCountryId = const Value.absent(),
    this.fiscalLatitude = const Value.absent(),
    this.fiscalLongitude = const Value.absent(),
    required String companyId,
    this.especialVAT = const Value.absent(),
    this.exemptVat = const Value.absent(),
    this.currentYearSales = const Value.absent(),
    this.previousYearSales = const Value.absent(),
    this.salesTwoYearsAgo = const Value.absent(),
    this.currentYearMargin = const Value.absent(),
    this.previousYearMargin = const Value.absent(),
    this.marginTwoYearsAgo = const Value.absent(),
    this.paymentPercent = const Value.absent(),
    this.warrantyPercent = const Value.absent(),
    this.shoppingCenterName = const Value.absent(),
    this.urlWebsite = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.rateId = const Value.absent(),
    this.rateDescription = const Value.absent(),
    this.generalDiscount = const Value.absent(),
    this.generalDiscountDescription = const Value.absent(),
    required String priceCalculationType,
    this.collectionTermId = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    required double promptPaymentDiscount,
    required double internalGrantedRisk,
    this.internalGrantedRiskDate = const Value.absent(),
    required double cofaceGrantedRisk,
    this.cofaceGrantedRiskDate = const Value.absent(),
    this.riskGranted = const Value.absent(),
    this.riskPendingCollectionDue = const Value.absent(),
    this.riskPendingColleectionNotDue = const Value.absent(),
    this.riskPendingToServe = const Value.absent(),
    this.riskPendingBilling = const Value.absent(),
    this.internalRemarks = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        companyId = Value(companyId),
        priceCalculationType = Value(priceCalculationType),
        promptPaymentDiscount = Value(promptPaymentDiscount),
        internalGrantedRisk = Value(internalGrantedRisk),
        cofaceGrantedRisk = Value(cofaceGrantedRisk),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerDTO> custom({
    Expression<String>? id,
    Expression<String?>? customerName,
    Expression<String?>? nif,
    Expression<String?>? fiscalName,
    Expression<String?>? fiscalAddress1,
    Expression<String?>? fiscalAddress2,
    Expression<String?>? fiscalZipCode,
    Expression<String?>? fiscalCity,
    Expression<String?>? fiscalState,
    Expression<String?>? fiscalCountryId,
    Expression<double?>? fiscalLatitude,
    Expression<double?>? fiscalLongitude,
    Expression<String>? companyId,
    Expression<double?>? especialVAT,
    Expression<String?>? exemptVat,
    Expression<double?>? currentYearSales,
    Expression<double?>? previousYearSales,
    Expression<double?>? salesTwoYearsAgo,
    Expression<double?>? currentYearMargin,
    Expression<double?>? previousYearMargin,
    Expression<double?>? marginTwoYearsAgo,
    Expression<double?>? paymentPercent,
    Expression<double?>? warrantyPercent,
    Expression<String?>? shoppingCenterName,
    Expression<String?>? urlWebsite,
    Expression<String?>? divisaId,
    Expression<String?>? rateId,
    Expression<String?>? rateDescription,
    Expression<String?>? generalDiscount,
    Expression<String?>? generalDiscountDescription,
    Expression<String>? priceCalculationType,
    Expression<String?>? collectionTermId,
    Expression<String?>? collectionMethodId,
    Expression<double>? promptPaymentDiscount,
    Expression<double>? internalGrantedRisk,
    Expression<DateTime?>? internalGrantedRiskDate,
    Expression<double>? cofaceGrantedRisk,
    Expression<DateTime?>? cofaceGrantedRiskDate,
    Expression<double?>? riskGranted,
    Expression<double?>? riskPendingCollectionDue,
    Expression<double?>? riskPendingColleectionNotDue,
    Expression<double?>? riskPendingToServe,
    Expression<double?>? riskPendingBilling,
    Expression<String?>? internalRemarks,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (customerName != null) 'customer_name': customerName,
      if (nif != null) 'nif': nif,
      if (fiscalName != null) 'fiscal_name': fiscalName,
      if (fiscalAddress1 != null) 'fiscal_address1': fiscalAddress1,
      if (fiscalAddress2 != null) 'fiscal_address2': fiscalAddress2,
      if (fiscalZipCode != null) 'fiscal_zip_code': fiscalZipCode,
      if (fiscalCity != null) 'fiscal_city': fiscalCity,
      if (fiscalState != null) 'fiscal_state': fiscalState,
      if (fiscalCountryId != null) 'fiscal_country_id': fiscalCountryId,
      if (fiscalLatitude != null) 'fiscal_latitude': fiscalLatitude,
      if (fiscalLongitude != null) 'fiscal_longitude': fiscalLongitude,
      if (companyId != null) 'company_id': companyId,
      if (especialVAT != null) 'especial_v_a_t': especialVAT,
      if (exemptVat != null) 'exempt_vat': exemptVat,
      if (currentYearSales != null) 'current_year_sales': currentYearSales,
      if (previousYearSales != null) 'previous_year_sales': previousYearSales,
      if (salesTwoYearsAgo != null) 'sales_two_years_ago': salesTwoYearsAgo,
      if (currentYearMargin != null) 'current_year_margin': currentYearMargin,
      if (previousYearMargin != null)
        'previous_year_margin': previousYearMargin,
      if (marginTwoYearsAgo != null) 'margin_two_years_ago': marginTwoYearsAgo,
      if (paymentPercent != null) 'payment_percent': paymentPercent,
      if (warrantyPercent != null) 'warranty_percent': warrantyPercent,
      if (shoppingCenterName != null)
        'shopping_center_name': shoppingCenterName,
      if (urlWebsite != null) 'url_website': urlWebsite,
      if (divisaId != null) 'divisa_id': divisaId,
      if (rateId != null) 'rate_id': rateId,
      if (rateDescription != null) 'rate_description': rateDescription,
      if (generalDiscount != null) 'general_discount': generalDiscount,
      if (generalDiscountDescription != null)
        'general_discount_description': generalDiscountDescription,
      if (priceCalculationType != null)
        'price_calculation_type': priceCalculationType,
      if (collectionTermId != null) 'collection_term_id': collectionTermId,
      if (collectionMethodId != null)
        'collection_method_id': collectionMethodId,
      if (promptPaymentDiscount != null)
        'prompt_payment_discount': promptPaymentDiscount,
      if (internalGrantedRisk != null)
        'internal_granted_risk': internalGrantedRisk,
      if (internalGrantedRiskDate != null)
        'internal_granted_risk_date': internalGrantedRiskDate,
      if (cofaceGrantedRisk != null) 'coface_granted_risk': cofaceGrantedRisk,
      if (cofaceGrantedRiskDate != null)
        'coface_granted_risk_date': cofaceGrantedRiskDate,
      if (riskGranted != null) 'risk_granted': riskGranted,
      if (riskPendingCollectionDue != null)
        'risk_pending_collection_due': riskPendingCollectionDue,
      if (riskPendingColleectionNotDue != null)
        'risk_pending_colleection_not_due': riskPendingColleectionNotDue,
      if (riskPendingToServe != null)
        'risk_pending_to_serve': riskPendingToServe,
      if (riskPendingBilling != null)
        'risk_pending_billing': riskPendingBilling,
      if (internalRemarks != null) 'internal_remarks': internalRemarks,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (deleted != null) 'deleted': deleted,
    });
  }

  CustomerTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? customerName,
      Value<String?>? nif,
      Value<String?>? fiscalName,
      Value<String?>? fiscalAddress1,
      Value<String?>? fiscalAddress2,
      Value<String?>? fiscalZipCode,
      Value<String?>? fiscalCity,
      Value<String?>? fiscalState,
      Value<String?>? fiscalCountryId,
      Value<double?>? fiscalLatitude,
      Value<double?>? fiscalLongitude,
      Value<String>? companyId,
      Value<double?>? especialVAT,
      Value<String?>? exemptVat,
      Value<double?>? currentYearSales,
      Value<double?>? previousYearSales,
      Value<double?>? salesTwoYearsAgo,
      Value<double?>? currentYearMargin,
      Value<double?>? previousYearMargin,
      Value<double?>? marginTwoYearsAgo,
      Value<double?>? paymentPercent,
      Value<double?>? warrantyPercent,
      Value<String?>? shoppingCenterName,
      Value<String?>? urlWebsite,
      Value<String?>? divisaId,
      Value<String?>? rateId,
      Value<String?>? rateDescription,
      Value<String?>? generalDiscount,
      Value<String?>? generalDiscountDescription,
      Value<String>? priceCalculationType,
      Value<String?>? collectionTermId,
      Value<String?>? collectionMethodId,
      Value<double>? promptPaymentDiscount,
      Value<double>? internalGrantedRisk,
      Value<DateTime?>? internalGrantedRiskDate,
      Value<double>? cofaceGrantedRisk,
      Value<DateTime?>? cofaceGrantedRiskDate,
      Value<double?>? riskGranted,
      Value<double?>? riskPendingCollectionDue,
      Value<double?>? riskPendingColleectionNotDue,
      Value<double?>? riskPendingToServe,
      Value<double?>? riskPendingBilling,
      Value<String?>? internalRemarks,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerTableCompanion(
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      nif: nif ?? this.nif,
      fiscalName: fiscalName ?? this.fiscalName,
      fiscalAddress1: fiscalAddress1 ?? this.fiscalAddress1,
      fiscalAddress2: fiscalAddress2 ?? this.fiscalAddress2,
      fiscalZipCode: fiscalZipCode ?? this.fiscalZipCode,
      fiscalCity: fiscalCity ?? this.fiscalCity,
      fiscalState: fiscalState ?? this.fiscalState,
      fiscalCountryId: fiscalCountryId ?? this.fiscalCountryId,
      fiscalLatitude: fiscalLatitude ?? this.fiscalLatitude,
      fiscalLongitude: fiscalLongitude ?? this.fiscalLongitude,
      companyId: companyId ?? this.companyId,
      especialVAT: especialVAT ?? this.especialVAT,
      exemptVat: exemptVat ?? this.exemptVat,
      currentYearSales: currentYearSales ?? this.currentYearSales,
      previousYearSales: previousYearSales ?? this.previousYearSales,
      salesTwoYearsAgo: salesTwoYearsAgo ?? this.salesTwoYearsAgo,
      currentYearMargin: currentYearMargin ?? this.currentYearMargin,
      previousYearMargin: previousYearMargin ?? this.previousYearMargin,
      marginTwoYearsAgo: marginTwoYearsAgo ?? this.marginTwoYearsAgo,
      paymentPercent: paymentPercent ?? this.paymentPercent,
      warrantyPercent: warrantyPercent ?? this.warrantyPercent,
      shoppingCenterName: shoppingCenterName ?? this.shoppingCenterName,
      urlWebsite: urlWebsite ?? this.urlWebsite,
      divisaId: divisaId ?? this.divisaId,
      rateId: rateId ?? this.rateId,
      rateDescription: rateDescription ?? this.rateDescription,
      generalDiscount: generalDiscount ?? this.generalDiscount,
      generalDiscountDescription:
          generalDiscountDescription ?? this.generalDiscountDescription,
      priceCalculationType: priceCalculationType ?? this.priceCalculationType,
      collectionTermId: collectionTermId ?? this.collectionTermId,
      collectionMethodId: collectionMethodId ?? this.collectionMethodId,
      promptPaymentDiscount:
          promptPaymentDiscount ?? this.promptPaymentDiscount,
      internalGrantedRisk: internalGrantedRisk ?? this.internalGrantedRisk,
      internalGrantedRiskDate:
          internalGrantedRiskDate ?? this.internalGrantedRiskDate,
      cofaceGrantedRisk: cofaceGrantedRisk ?? this.cofaceGrantedRisk,
      cofaceGrantedRiskDate:
          cofaceGrantedRiskDate ?? this.cofaceGrantedRiskDate,
      riskGranted: riskGranted ?? this.riskGranted,
      riskPendingCollectionDue:
          riskPendingCollectionDue ?? this.riskPendingCollectionDue,
      riskPendingColleectionNotDue:
          riskPendingColleectionNotDue ?? this.riskPendingColleectionNotDue,
      riskPendingToServe: riskPendingToServe ?? this.riskPendingToServe,
      riskPendingBilling: riskPendingBilling ?? this.riskPendingBilling,
      internalRemarks: internalRemarks ?? this.internalRemarks,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (customerName.present) {
      map['customer_name'] = Variable<String?>(customerName.value);
    }
    if (nif.present) {
      map['nif'] = Variable<String?>(nif.value);
    }
    if (fiscalName.present) {
      map['fiscal_name'] = Variable<String?>(fiscalName.value);
    }
    if (fiscalAddress1.present) {
      map['fiscal_address1'] = Variable<String?>(fiscalAddress1.value);
    }
    if (fiscalAddress2.present) {
      map['fiscal_address2'] = Variable<String?>(fiscalAddress2.value);
    }
    if (fiscalZipCode.present) {
      map['fiscal_zip_code'] = Variable<String?>(fiscalZipCode.value);
    }
    if (fiscalCity.present) {
      map['fiscal_city'] = Variable<String?>(fiscalCity.value);
    }
    if (fiscalState.present) {
      map['fiscal_state'] = Variable<String?>(fiscalState.value);
    }
    if (fiscalCountryId.present) {
      map['fiscal_country_id'] = Variable<String?>(fiscalCountryId.value);
    }
    if (fiscalLatitude.present) {
      map['fiscal_latitude'] = Variable<double?>(fiscalLatitude.value);
    }
    if (fiscalLongitude.present) {
      map['fiscal_longitude'] = Variable<double?>(fiscalLongitude.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (especialVAT.present) {
      map['especial_v_a_t'] = Variable<double?>(especialVAT.value);
    }
    if (exemptVat.present) {
      map['exempt_vat'] = Variable<String?>(exemptVat.value);
    }
    if (currentYearSales.present) {
      map['current_year_sales'] = Variable<double?>(currentYearSales.value);
    }
    if (previousYearSales.present) {
      map['previous_year_sales'] = Variable<double?>(previousYearSales.value);
    }
    if (salesTwoYearsAgo.present) {
      map['sales_two_years_ago'] = Variable<double?>(salesTwoYearsAgo.value);
    }
    if (currentYearMargin.present) {
      map['current_year_margin'] = Variable<double?>(currentYearMargin.value);
    }
    if (previousYearMargin.present) {
      map['previous_year_margin'] = Variable<double?>(previousYearMargin.value);
    }
    if (marginTwoYearsAgo.present) {
      map['margin_two_years_ago'] = Variable<double?>(marginTwoYearsAgo.value);
    }
    if (paymentPercent.present) {
      map['payment_percent'] = Variable<double?>(paymentPercent.value);
    }
    if (warrantyPercent.present) {
      map['warranty_percent'] = Variable<double?>(warrantyPercent.value);
    }
    if (shoppingCenterName.present) {
      map['shopping_center_name'] = Variable<String?>(shoppingCenterName.value);
    }
    if (urlWebsite.present) {
      map['url_website'] = Variable<String?>(urlWebsite.value);
    }
    if (divisaId.present) {
      map['divisa_id'] = Variable<String?>(divisaId.value);
    }
    if (rateId.present) {
      map['rate_id'] = Variable<String?>(rateId.value);
    }
    if (rateDescription.present) {
      map['rate_description'] = Variable<String?>(rateDescription.value);
    }
    if (generalDiscount.present) {
      map['general_discount'] = Variable<String?>(generalDiscount.value);
    }
    if (generalDiscountDescription.present) {
      map['general_discount_description'] =
          Variable<String?>(generalDiscountDescription.value);
    }
    if (priceCalculationType.present) {
      map['price_calculation_type'] =
          Variable<String>(priceCalculationType.value);
    }
    if (collectionTermId.present) {
      map['collection_term_id'] = Variable<String?>(collectionTermId.value);
    }
    if (collectionMethodId.present) {
      map['collection_method_id'] = Variable<String?>(collectionMethodId.value);
    }
    if (promptPaymentDiscount.present) {
      map['prompt_payment_discount'] =
          Variable<double>(promptPaymentDiscount.value);
    }
    if (internalGrantedRisk.present) {
      map['internal_granted_risk'] =
          Variable<double>(internalGrantedRisk.value);
    }
    if (internalGrantedRiskDate.present) {
      map['internal_granted_risk_date'] =
          Variable<DateTime?>(internalGrantedRiskDate.value);
    }
    if (cofaceGrantedRisk.present) {
      map['coface_granted_risk'] = Variable<double>(cofaceGrantedRisk.value);
    }
    if (cofaceGrantedRiskDate.present) {
      map['coface_granted_risk_date'] =
          Variable<DateTime?>(cofaceGrantedRiskDate.value);
    }
    if (riskGranted.present) {
      map['risk_granted'] = Variable<double?>(riskGranted.value);
    }
    if (riskPendingCollectionDue.present) {
      map['risk_pending_collection_due'] =
          Variable<double?>(riskPendingCollectionDue.value);
    }
    if (riskPendingColleectionNotDue.present) {
      map['risk_pending_colleection_not_due'] =
          Variable<double?>(riskPendingColleectionNotDue.value);
    }
    if (riskPendingToServe.present) {
      map['risk_pending_to_serve'] =
          Variable<double?>(riskPendingToServe.value);
    }
    if (riskPendingBilling.present) {
      map['risk_pending_billing'] = Variable<double?>(riskPendingBilling.value);
    }
    if (internalRemarks.present) {
      map['internal_remarks'] = Variable<String?>(internalRemarks.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerTableCompanion(')
          ..write('id: $id, ')
          ..write('customerName: $customerName, ')
          ..write('nif: $nif, ')
          ..write('fiscalName: $fiscalName, ')
          ..write('fiscalAddress1: $fiscalAddress1, ')
          ..write('fiscalAddress2: $fiscalAddress2, ')
          ..write('fiscalZipCode: $fiscalZipCode, ')
          ..write('fiscalCity: $fiscalCity, ')
          ..write('fiscalState: $fiscalState, ')
          ..write('fiscalCountryId: $fiscalCountryId, ')
          ..write('fiscalLatitude: $fiscalLatitude, ')
          ..write('fiscalLongitude: $fiscalLongitude, ')
          ..write('companyId: $companyId, ')
          ..write('especialVAT: $especialVAT, ')
          ..write('exemptVat: $exemptVat, ')
          ..write('currentYearSales: $currentYearSales, ')
          ..write('previousYearSales: $previousYearSales, ')
          ..write('salesTwoYearsAgo: $salesTwoYearsAgo, ')
          ..write('currentYearMargin: $currentYearMargin, ')
          ..write('previousYearMargin: $previousYearMargin, ')
          ..write('marginTwoYearsAgo: $marginTwoYearsAgo, ')
          ..write('paymentPercent: $paymentPercent, ')
          ..write('warrantyPercent: $warrantyPercent, ')
          ..write('shoppingCenterName: $shoppingCenterName, ')
          ..write('urlWebsite: $urlWebsite, ')
          ..write('divisaId: $divisaId, ')
          ..write('rateId: $rateId, ')
          ..write('rateDescription: $rateDescription, ')
          ..write('generalDiscount: $generalDiscount, ')
          ..write('generalDiscountDescription: $generalDiscountDescription, ')
          ..write('priceCalculationType: $priceCalculationType, ')
          ..write('collectionTermId: $collectionTermId, ')
          ..write('collectionMethodId: $collectionMethodId, ')
          ..write('promptPaymentDiscount: $promptPaymentDiscount, ')
          ..write('internalGrantedRisk: $internalGrantedRisk, ')
          ..write('internalGrantedRiskDate: $internalGrantedRiskDate, ')
          ..write('cofaceGrantedRisk: $cofaceGrantedRisk, ')
          ..write('cofaceGrantedRiskDate: $cofaceGrantedRiskDate, ')
          ..write('riskGranted: $riskGranted, ')
          ..write('riskPendingCollectionDue: $riskPendingCollectionDue, ')
          ..write(
              'riskPendingColleectionNotDue: $riskPendingColleectionNotDue, ')
          ..write('riskPendingToServe: $riskPendingToServe, ')
          ..write('riskPendingBilling: $riskPendingBilling, ')
          ..write('internalRemarks: $internalRemarks, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerTableTable extends CustomerTable
    with TableInfo<$CustomerTableTable, CustomerDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String?> customerName = GeneratedColumn<String?>(
      'customer_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nifMeta = const VerificationMeta('nif');
  @override
  late final GeneratedColumn<String?> nif = GeneratedColumn<String?>(
      'nif', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalNameMeta = const VerificationMeta('fiscalName');
  @override
  late final GeneratedColumn<String?> fiscalName = GeneratedColumn<String?>(
      'fiscal_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalAddress1Meta =
      const VerificationMeta('fiscalAddress1');
  @override
  late final GeneratedColumn<String?> fiscalAddress1 = GeneratedColumn<String?>(
      'fiscal_address1', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalAddress2Meta =
      const VerificationMeta('fiscalAddress2');
  @override
  late final GeneratedColumn<String?> fiscalAddress2 = GeneratedColumn<String?>(
      'fiscal_address2', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalZipCodeMeta =
      const VerificationMeta('fiscalZipCode');
  @override
  late final GeneratedColumn<String?> fiscalZipCode = GeneratedColumn<String?>(
      'fiscal_zip_code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalCityMeta = const VerificationMeta('fiscalCity');
  @override
  late final GeneratedColumn<String?> fiscalCity = GeneratedColumn<String?>(
      'fiscal_city', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalStateMeta =
      const VerificationMeta('fiscalState');
  @override
  late final GeneratedColumn<String?> fiscalState = GeneratedColumn<String?>(
      'fiscal_state', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalCountryIdMeta =
      const VerificationMeta('fiscalCountryId');
  @override
  late final GeneratedColumn<String?> fiscalCountryId =
      GeneratedColumn<String?>('fiscal_country_id', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES PAISES (id)');
  final VerificationMeta _fiscalLatitudeMeta =
      const VerificationMeta('fiscalLatitude');
  @override
  late final GeneratedColumn<double?> fiscalLatitude = GeneratedColumn<double?>(
      'fiscal_latitude', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalLongitudeMeta =
      const VerificationMeta('fiscalLongitude');
  @override
  late final GeneratedColumn<double?> fiscalLongitude =
      GeneratedColumn<double?>('fiscal_longitude', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String?> companyId = GeneratedColumn<String?>(
      'company_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _especialVATMeta =
      const VerificationMeta('especialVAT');
  @override
  late final GeneratedColumn<double?> especialVAT = GeneratedColumn<double?>(
      'especial_v_a_t', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _exemptVatMeta = const VerificationMeta('exemptVat');
  @override
  late final GeneratedColumn<String?> exemptVat = GeneratedColumn<String?>(
      'exempt_vat', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _currentYearSalesMeta =
      const VerificationMeta('currentYearSales');
  @override
  late final GeneratedColumn<double?> currentYearSales =
      GeneratedColumn<double?>('current_year_sales', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _previousYearSalesMeta =
      const VerificationMeta('previousYearSales');
  @override
  late final GeneratedColumn<double?> previousYearSales =
      GeneratedColumn<double?>('previous_year_sales', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _salesTwoYearsAgoMeta =
      const VerificationMeta('salesTwoYearsAgo');
  @override
  late final GeneratedColumn<double?> salesTwoYearsAgo =
      GeneratedColumn<double?>('sales_two_years_ago', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _currentYearMarginMeta =
      const VerificationMeta('currentYearMargin');
  @override
  late final GeneratedColumn<double?> currentYearMargin =
      GeneratedColumn<double?>('current_year_margin', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _previousYearMarginMeta =
      const VerificationMeta('previousYearMargin');
  @override
  late final GeneratedColumn<double?> previousYearMargin =
      GeneratedColumn<double?>('previous_year_margin', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _marginTwoYearsAgoMeta =
      const VerificationMeta('marginTwoYearsAgo');
  @override
  late final GeneratedColumn<double?> marginTwoYearsAgo =
      GeneratedColumn<double?>('margin_two_years_ago', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _paymentPercentMeta =
      const VerificationMeta('paymentPercent');
  @override
  late final GeneratedColumn<double?> paymentPercent = GeneratedColumn<double?>(
      'payment_percent', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _warrantyPercentMeta =
      const VerificationMeta('warrantyPercent');
  @override
  late final GeneratedColumn<double?> warrantyPercent =
      GeneratedColumn<double?>('warranty_percent', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _shoppingCenterNameMeta =
      const VerificationMeta('shoppingCenterName');
  @override
  late final GeneratedColumn<String?> shoppingCenterName =
      GeneratedColumn<String?>('shopping_center_name', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _urlWebsiteMeta = const VerificationMeta('urlWebsite');
  @override
  late final GeneratedColumn<String?> urlWebsite = GeneratedColumn<String?>(
      'url_website', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String?> divisaId = GeneratedColumn<String?>(
      'divisa_id', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES DIVISAS (id)');
  final VerificationMeta _rateIdMeta = const VerificationMeta('rateId');
  @override
  late final GeneratedColumn<String?> rateId = GeneratedColumn<String?>(
      'rate_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _rateDescriptionMeta =
      const VerificationMeta('rateDescription');
  @override
  late final GeneratedColumn<String?> rateDescription =
      GeneratedColumn<String?>('rate_description', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _generalDiscountMeta =
      const VerificationMeta('generalDiscount');
  @override
  late final GeneratedColumn<String?> generalDiscount =
      GeneratedColumn<String?>('general_discount', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _generalDiscountDescriptionMeta =
      const VerificationMeta('generalDiscountDescription');
  @override
  late final GeneratedColumn<String?> generalDiscountDescription =
      GeneratedColumn<String?>(
          'general_discount_description', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _priceCalculationTypeMeta =
      const VerificationMeta('priceCalculationType');
  @override
  late final GeneratedColumn<String?> priceCalculationType =
      GeneratedColumn<String?>('price_calculation_type', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _collectionTermIdMeta =
      const VerificationMeta('collectionTermId');
  @override
  late final GeneratedColumn<String?> collectionTermId =
      GeneratedColumn<String?>('collection_term_id', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES PLAZOS_COBRO (id)');
  final VerificationMeta _collectionMethodIdMeta =
      const VerificationMeta('collectionMethodId');
  @override
  late final GeneratedColumn<String?> collectionMethodId =
      GeneratedColumn<String?>('collection_method_id', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES METODOS_COBRO (id)');
  final VerificationMeta _promptPaymentDiscountMeta =
      const VerificationMeta('promptPaymentDiscount');
  @override
  late final GeneratedColumn<double?> promptPaymentDiscount =
      GeneratedColumn<double?>('prompt_payment_discount', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _internalGrantedRiskMeta =
      const VerificationMeta('internalGrantedRisk');
  @override
  late final GeneratedColumn<double?> internalGrantedRisk =
      GeneratedColumn<double?>('internal_granted_risk', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _internalGrantedRiskDateMeta =
      const VerificationMeta('internalGrantedRiskDate');
  @override
  late final GeneratedColumn<DateTime?> internalGrantedRiskDate =
      GeneratedColumn<DateTime?>(
          'internal_granted_risk_date', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _cofaceGrantedRiskMeta =
      const VerificationMeta('cofaceGrantedRisk');
  @override
  late final GeneratedColumn<double?> cofaceGrantedRisk =
      GeneratedColumn<double?>('coface_granted_risk', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _cofaceGrantedRiskDateMeta =
      const VerificationMeta('cofaceGrantedRiskDate');
  @override
  late final GeneratedColumn<DateTime?> cofaceGrantedRiskDate =
      GeneratedColumn<DateTime?>('coface_granted_risk_date', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _riskGrantedMeta =
      const VerificationMeta('riskGranted');
  @override
  late final GeneratedColumn<double?> riskGranted = GeneratedColumn<double?>(
      'risk_granted', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _riskPendingCollectionDueMeta =
      const VerificationMeta('riskPendingCollectionDue');
  @override
  late final GeneratedColumn<double?> riskPendingCollectionDue =
      GeneratedColumn<double?>('risk_pending_collection_due', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _riskPendingColleectionNotDueMeta =
      const VerificationMeta('riskPendingColleectionNotDue');
  @override
  late final GeneratedColumn<double?> riskPendingColleectionNotDue =
      GeneratedColumn<double?>(
          'risk_pending_colleection_not_due', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _riskPendingToServeMeta =
      const VerificationMeta('riskPendingToServe');
  @override
  late final GeneratedColumn<double?> riskPendingToServe =
      GeneratedColumn<double?>('risk_pending_to_serve', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _riskPendingBillingMeta =
      const VerificationMeta('riskPendingBilling');
  @override
  late final GeneratedColumn<double?> riskPendingBilling =
      GeneratedColumn<double?>('risk_pending_billing', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _internalRemarksMeta =
      const VerificationMeta('internalRemarks');
  @override
  late final GeneratedColumn<String?> internalRemarks =
      GeneratedColumn<String?>('internal_remarks', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('last_updated', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'deleted', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        customerName,
        nif,
        fiscalName,
        fiscalAddress1,
        fiscalAddress2,
        fiscalZipCode,
        fiscalCity,
        fiscalState,
        fiscalCountryId,
        fiscalLatitude,
        fiscalLongitude,
        companyId,
        especialVAT,
        exemptVat,
        currentYearSales,
        previousYearSales,
        salesTwoYearsAgo,
        currentYearMargin,
        previousYearMargin,
        marginTwoYearsAgo,
        paymentPercent,
        warrantyPercent,
        shoppingCenterName,
        urlWebsite,
        divisaId,
        rateId,
        rateDescription,
        generalDiscount,
        generalDiscountDescription,
        priceCalculationType,
        collectionTermId,
        collectionMethodId,
        promptPaymentDiscount,
        internalGrantedRisk,
        internalGrantedRiskDate,
        cofaceGrantedRisk,
        cofaceGrantedRiskDate,
        riskGranted,
        riskPendingCollectionDue,
        riskPendingColleectionNotDue,
        riskPendingToServe,
        riskPendingBilling,
        internalRemarks,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES';
  @override
  String get actualTableName => 'CLIENTES';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('customer_name')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['customer_name']!, _customerNameMeta));
    }
    if (data.containsKey('nif')) {
      context.handle(
          _nifMeta, nif.isAcceptableOrUnknown(data['nif']!, _nifMeta));
    }
    if (data.containsKey('fiscal_name')) {
      context.handle(
          _fiscalNameMeta,
          fiscalName.isAcceptableOrUnknown(
              data['fiscal_name']!, _fiscalNameMeta));
    }
    if (data.containsKey('fiscal_address1')) {
      context.handle(
          _fiscalAddress1Meta,
          fiscalAddress1.isAcceptableOrUnknown(
              data['fiscal_address1']!, _fiscalAddress1Meta));
    }
    if (data.containsKey('fiscal_address2')) {
      context.handle(
          _fiscalAddress2Meta,
          fiscalAddress2.isAcceptableOrUnknown(
              data['fiscal_address2']!, _fiscalAddress2Meta));
    }
    if (data.containsKey('fiscal_zip_code')) {
      context.handle(
          _fiscalZipCodeMeta,
          fiscalZipCode.isAcceptableOrUnknown(
              data['fiscal_zip_code']!, _fiscalZipCodeMeta));
    }
    if (data.containsKey('fiscal_city')) {
      context.handle(
          _fiscalCityMeta,
          fiscalCity.isAcceptableOrUnknown(
              data['fiscal_city']!, _fiscalCityMeta));
    }
    if (data.containsKey('fiscal_state')) {
      context.handle(
          _fiscalStateMeta,
          fiscalState.isAcceptableOrUnknown(
              data['fiscal_state']!, _fiscalStateMeta));
    }
    if (data.containsKey('fiscal_country_id')) {
      context.handle(
          _fiscalCountryIdMeta,
          fiscalCountryId.isAcceptableOrUnknown(
              data['fiscal_country_id']!, _fiscalCountryIdMeta));
    }
    if (data.containsKey('fiscal_latitude')) {
      context.handle(
          _fiscalLatitudeMeta,
          fiscalLatitude.isAcceptableOrUnknown(
              data['fiscal_latitude']!, _fiscalLatitudeMeta));
    }
    if (data.containsKey('fiscal_longitude')) {
      context.handle(
          _fiscalLongitudeMeta,
          fiscalLongitude.isAcceptableOrUnknown(
              data['fiscal_longitude']!, _fiscalLongitudeMeta));
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('especial_v_a_t')) {
      context.handle(
          _especialVATMeta,
          especialVAT.isAcceptableOrUnknown(
              data['especial_v_a_t']!, _especialVATMeta));
    }
    if (data.containsKey('exempt_vat')) {
      context.handle(_exemptVatMeta,
          exemptVat.isAcceptableOrUnknown(data['exempt_vat']!, _exemptVatMeta));
    }
    if (data.containsKey('current_year_sales')) {
      context.handle(
          _currentYearSalesMeta,
          currentYearSales.isAcceptableOrUnknown(
              data['current_year_sales']!, _currentYearSalesMeta));
    }
    if (data.containsKey('previous_year_sales')) {
      context.handle(
          _previousYearSalesMeta,
          previousYearSales.isAcceptableOrUnknown(
              data['previous_year_sales']!, _previousYearSalesMeta));
    }
    if (data.containsKey('sales_two_years_ago')) {
      context.handle(
          _salesTwoYearsAgoMeta,
          salesTwoYearsAgo.isAcceptableOrUnknown(
              data['sales_two_years_ago']!, _salesTwoYearsAgoMeta));
    }
    if (data.containsKey('current_year_margin')) {
      context.handle(
          _currentYearMarginMeta,
          currentYearMargin.isAcceptableOrUnknown(
              data['current_year_margin']!, _currentYearMarginMeta));
    }
    if (data.containsKey('previous_year_margin')) {
      context.handle(
          _previousYearMarginMeta,
          previousYearMargin.isAcceptableOrUnknown(
              data['previous_year_margin']!, _previousYearMarginMeta));
    }
    if (data.containsKey('margin_two_years_ago')) {
      context.handle(
          _marginTwoYearsAgoMeta,
          marginTwoYearsAgo.isAcceptableOrUnknown(
              data['margin_two_years_ago']!, _marginTwoYearsAgoMeta));
    }
    if (data.containsKey('payment_percent')) {
      context.handle(
          _paymentPercentMeta,
          paymentPercent.isAcceptableOrUnknown(
              data['payment_percent']!, _paymentPercentMeta));
    }
    if (data.containsKey('warranty_percent')) {
      context.handle(
          _warrantyPercentMeta,
          warrantyPercent.isAcceptableOrUnknown(
              data['warranty_percent']!, _warrantyPercentMeta));
    }
    if (data.containsKey('shopping_center_name')) {
      context.handle(
          _shoppingCenterNameMeta,
          shoppingCenterName.isAcceptableOrUnknown(
              data['shopping_center_name']!, _shoppingCenterNameMeta));
    }
    if (data.containsKey('url_website')) {
      context.handle(
          _urlWebsiteMeta,
          urlWebsite.isAcceptableOrUnknown(
              data['url_website']!, _urlWebsiteMeta));
    }
    if (data.containsKey('divisa_id')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['divisa_id']!, _divisaIdMeta));
    }
    if (data.containsKey('rate_id')) {
      context.handle(_rateIdMeta,
          rateId.isAcceptableOrUnknown(data['rate_id']!, _rateIdMeta));
    }
    if (data.containsKey('rate_description')) {
      context.handle(
          _rateDescriptionMeta,
          rateDescription.isAcceptableOrUnknown(
              data['rate_description']!, _rateDescriptionMeta));
    }
    if (data.containsKey('general_discount')) {
      context.handle(
          _generalDiscountMeta,
          generalDiscount.isAcceptableOrUnknown(
              data['general_discount']!, _generalDiscountMeta));
    }
    if (data.containsKey('general_discount_description')) {
      context.handle(
          _generalDiscountDescriptionMeta,
          generalDiscountDescription.isAcceptableOrUnknown(
              data['general_discount_description']!,
              _generalDiscountDescriptionMeta));
    }
    if (data.containsKey('price_calculation_type')) {
      context.handle(
          _priceCalculationTypeMeta,
          priceCalculationType.isAcceptableOrUnknown(
              data['price_calculation_type']!, _priceCalculationTypeMeta));
    } else if (isInserting) {
      context.missing(_priceCalculationTypeMeta);
    }
    if (data.containsKey('collection_term_id')) {
      context.handle(
          _collectionTermIdMeta,
          collectionTermId.isAcceptableOrUnknown(
              data['collection_term_id']!, _collectionTermIdMeta));
    }
    if (data.containsKey('collection_method_id')) {
      context.handle(
          _collectionMethodIdMeta,
          collectionMethodId.isAcceptableOrUnknown(
              data['collection_method_id']!, _collectionMethodIdMeta));
    }
    if (data.containsKey('prompt_payment_discount')) {
      context.handle(
          _promptPaymentDiscountMeta,
          promptPaymentDiscount.isAcceptableOrUnknown(
              data['prompt_payment_discount']!, _promptPaymentDiscountMeta));
    } else if (isInserting) {
      context.missing(_promptPaymentDiscountMeta);
    }
    if (data.containsKey('internal_granted_risk')) {
      context.handle(
          _internalGrantedRiskMeta,
          internalGrantedRisk.isAcceptableOrUnknown(
              data['internal_granted_risk']!, _internalGrantedRiskMeta));
    } else if (isInserting) {
      context.missing(_internalGrantedRiskMeta);
    }
    if (data.containsKey('internal_granted_risk_date')) {
      context.handle(
          _internalGrantedRiskDateMeta,
          internalGrantedRiskDate.isAcceptableOrUnknown(
              data['internal_granted_risk_date']!,
              _internalGrantedRiskDateMeta));
    }
    if (data.containsKey('coface_granted_risk')) {
      context.handle(
          _cofaceGrantedRiskMeta,
          cofaceGrantedRisk.isAcceptableOrUnknown(
              data['coface_granted_risk']!, _cofaceGrantedRiskMeta));
    } else if (isInserting) {
      context.missing(_cofaceGrantedRiskMeta);
    }
    if (data.containsKey('coface_granted_risk_date')) {
      context.handle(
          _cofaceGrantedRiskDateMeta,
          cofaceGrantedRiskDate.isAcceptableOrUnknown(
              data['coface_granted_risk_date']!, _cofaceGrantedRiskDateMeta));
    }
    if (data.containsKey('risk_granted')) {
      context.handle(
          _riskGrantedMeta,
          riskGranted.isAcceptableOrUnknown(
              data['risk_granted']!, _riskGrantedMeta));
    }
    if (data.containsKey('risk_pending_collection_due')) {
      context.handle(
          _riskPendingCollectionDueMeta,
          riskPendingCollectionDue.isAcceptableOrUnknown(
              data['risk_pending_collection_due']!,
              _riskPendingCollectionDueMeta));
    }
    if (data.containsKey('risk_pending_colleection_not_due')) {
      context.handle(
          _riskPendingColleectionNotDueMeta,
          riskPendingColleectionNotDue.isAcceptableOrUnknown(
              data['risk_pending_colleection_not_due']!,
              _riskPendingColleectionNotDueMeta));
    }
    if (data.containsKey('risk_pending_to_serve')) {
      context.handle(
          _riskPendingToServeMeta,
          riskPendingToServe.isAcceptableOrUnknown(
              data['risk_pending_to_serve']!, _riskPendingToServeMeta));
    }
    if (data.containsKey('risk_pending_billing')) {
      context.handle(
          _riskPendingBillingMeta,
          riskPendingBilling.isAcceptableOrUnknown(
              data['risk_pending_billing']!, _riskPendingBillingMeta));
    }
    if (data.containsKey('internal_remarks')) {
      context.handle(
          _internalRemarksMeta,
          internalRemarks.isAcceptableOrUnknown(
              data['internal_remarks']!, _internalRemarksMeta));
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomerDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      customerName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}customer_name']),
      nif: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nif']),
      fiscalName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiscal_name']),
      fiscalAddress1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiscal_address1']),
      fiscalAddress2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiscal_address2']),
      fiscalZipCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiscal_zip_code']),
      fiscalCity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiscal_city']),
      fiscalCountryId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiscal_country_id']),
      fiscalState: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiscal_state']),
      fiscalLatitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiscal_latitude']),
      fiscalLongitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiscal_longitude']),
      companyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}company_id'])!,
      especialVAT: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}especial_v_a_t']),
      exemptVat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}exempt_vat']),
      currentYearSales: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}current_year_sales']),
      previousYearSales: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}previous_year_sales']),
      salesTwoYearsAgo: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}sales_two_years_ago']),
      currentYearMargin: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}current_year_margin']),
      previousYearMargin: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}previous_year_margin']),
      marginTwoYearsAgo: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}margin_two_years_ago']),
      paymentPercent: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}payment_percent']),
      warrantyPercent: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}warranty_percent']),
      shoppingCenterName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}shopping_center_name']),
      urlWebsite: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}url_website']),
      divisaId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}divisa_id']),
      rateId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rate_id']),
      rateDescription: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rate_description']),
      generalDiscount: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}general_discount']),
      generalDiscountDescription: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}general_discount_description']),
      priceCalculationType: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}price_calculation_type'])!,
      collectionTermId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}collection_term_id']),
      collectionMethodId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}collection_method_id']),
      promptPaymentDiscount: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}prompt_payment_discount'])!,
      internalGrantedRisk: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}internal_granted_risk'])!,
      internalGrantedRiskDate: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}internal_granted_risk_date']),
      cofaceGrantedRisk: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}coface_granted_risk'])!,
      cofaceGrantedRiskDate: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}coface_granted_risk_date']),
      riskGranted: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}risk_granted']),
      riskPendingCollectionDue: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}risk_pending_collection_due']),
      riskPendingColleectionNotDue: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}risk_pending_colleection_not_due']),
      riskPendingToServe: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}risk_pending_to_serve']),
      riskPendingBilling: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}risk_pending_billing']),
      internalRemarks: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}internal_remarks']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
    );
  }

  @override
  $CustomerTableTable createAlias(String alias) {
    return $CustomerTableTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SalesOrderTableTable salesOrderTable =
      $SalesOrderTableTable(this);
  late final $LastSyncDateTableTable lastSyncDateTable =
      $LastSyncDateTableTable(this);
  late final $CollectionMethodTableTable collectionMethodTable =
      $CollectionMethodTableTable(this);
  late final $CollectionTermTableTable collectionTermTable =
      $CollectionTermTableTable(this);
  late final $CountryTableTable countryTable = $CountryTableTable(this);
  late final $DivisaTableTable divisaTable = $DivisaTableTable(this);
  late final $CustomerTableTable customerTable = $CustomerTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        salesOrderTable,
        lastSyncDateTable,
        collectionMethodTable,
        collectionTermTable,
        countryTable,
        divisaTable,
        customerTable
      ];
}
