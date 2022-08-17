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
  final Value<DateTime?> lastUpdated;
  final Value<bool> deleted;
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
    Expression<DateTime?>? lastUpdated,
    Expression<bool>? deleted,
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
      Value<DateTime?>? lastUpdated,
      Value<bool>? deleted,
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
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime?>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<bool>(deleted.value);
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
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<bool?> deleted = GeneratedColumn<bool?>(
      'DELETED', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (DELETED IN (0, 1))',
      defaultValue: const Constant(false));
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
        lastUpdated,
        deleted,
        lastSync
      ];
  @override
  String get aliasedName => _alias ?? 'sales_order_table';
  @override
  String get actualTableName => 'sales_order_table';
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
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED']),
      deleted: const BoolType()
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
  String get aliasedName => _alias ?? 'last_sync_date_table';
  @override
  String get actualTableName => 'last_sync_date_table';
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

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SalesOrderTableTable salesOrderTable =
      $SalesOrderTableTable(this);
  late final $LastSyncDateTableTable lastSyncDateTable =
      $LastSyncDateTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [salesOrderTable, lastSyncDateTable];
}
