// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesOrder {
  String get companyId => throw _privateConstructorUsedError;
  String get salesOrderId => throw _privateConstructorUsedError;
  DateTime get salesOrderDate => throw _privateConstructorUsedError;
  String get salesType => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  String? get addressId => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get shippingAddress1 => throw _privateConstructorUsedError;
  String? get shippingAddress2 => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  Divisa get divisa => throw _privateConstructorUsedError;
  Money? get taxBase => throw _privateConstructorUsedError;
  Money? get ivaAmount => throw _privateConstructorUsedError;
  Money? get total => throw _privateConstructorUsedError;
  SalesOrderStatus get salesOrderStatus => throw _privateConstructorUsedError;
  bool get isOffer => throw _privateConstructorUsedError;
  double get promptPaymentDiscount => throw _privateConstructorUsedError;
  double get iva => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesOrderCopyWith<SalesOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderCopyWith<$Res> {
  factory $SalesOrderCopyWith(
          SalesOrder value, $Res Function(SalesOrder) then) =
      _$SalesOrderCopyWithImpl<$Res>;
  $Res call(
      {String companyId,
      String salesOrderId,
      DateTime salesOrderDate,
      String salesType,
      String? customerId,
      String? addressId,
      String? customerName,
      String? shippingAddress1,
      String? shippingAddress2,
      String? zipCode,
      String? city,
      String? state,
      Country? country,
      Divisa divisa,
      Money? taxBase,
      Money? ivaAmount,
      Money? total,
      SalesOrderStatus salesOrderStatus,
      bool isOffer,
      double promptPaymentDiscount,
      double iva,
      DateTime lastUpdated,
      bool deleted});

  $CountryCopyWith<$Res>? get country;
  $DivisaCopyWith<$Res> get divisa;
  $SalesOrderStatusCopyWith<$Res> get salesOrderStatus;
}

/// @nodoc
class _$SalesOrderCopyWithImpl<$Res> implements $SalesOrderCopyWith<$Res> {
  _$SalesOrderCopyWithImpl(this._value, this._then);

  final SalesOrder _value;
  // ignore: unused_field
  final $Res Function(SalesOrder) _then;

  @override
  $Res call({
    Object? companyId = freezed,
    Object? salesOrderId = freezed,
    Object? salesOrderDate = freezed,
    Object? salesType = freezed,
    Object? customerId = freezed,
    Object? addressId = freezed,
    Object? customerName = freezed,
    Object? shippingAddress1 = freezed,
    Object? shippingAddress2 = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? divisa = freezed,
    Object? taxBase = freezed,
    Object? ivaAmount = freezed,
    Object? total = freezed,
    Object? salesOrderStatus = freezed,
    Object? isOffer = freezed,
    Object? promptPaymentDiscount = freezed,
    Object? iva = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: salesOrderId == freezed
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderDate: salesOrderDate == freezed
          ? _value.salesOrderDate
          : salesOrderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress1: shippingAddress1 == freezed
          ? _value.shippingAddress1
          : shippingAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress2: shippingAddress2 == freezed
          ? _value.shippingAddress2
          : shippingAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      divisa: divisa == freezed
          ? _value.divisa
          : divisa // ignore: cast_nullable_to_non_nullable
              as Divisa,
      taxBase: taxBase == freezed
          ? _value.taxBase
          : taxBase // ignore: cast_nullable_to_non_nullable
              as Money?,
      ivaAmount: ivaAmount == freezed
          ? _value.ivaAmount
          : ivaAmount // ignore: cast_nullable_to_non_nullable
              as Money?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Money?,
      salesOrderStatus: salesOrderStatus == freezed
          ? _value.salesOrderStatus
          : salesOrderStatus // ignore: cast_nullable_to_non_nullable
              as SalesOrderStatus,
      isOffer: isOffer == freezed
          ? _value.isOffer
          : isOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      promptPaymentDiscount: promptPaymentDiscount == freezed
          ? _value.promptPaymentDiscount
          : promptPaymentDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      iva: iva == freezed
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
  }

  @override
  $DivisaCopyWith<$Res> get divisa {
    return $DivisaCopyWith<$Res>(_value.divisa, (value) {
      return _then(_value.copyWith(divisa: value));
    });
  }

  @override
  $SalesOrderStatusCopyWith<$Res> get salesOrderStatus {
    return $SalesOrderStatusCopyWith<$Res>(_value.salesOrderStatus, (value) {
      return _then(_value.copyWith(salesOrderStatus: value));
    });
  }
}

/// @nodoc
abstract class _$$_SalesOrderCopyWith<$Res>
    implements $SalesOrderCopyWith<$Res> {
  factory _$$_SalesOrderCopyWith(
          _$_SalesOrder value, $Res Function(_$_SalesOrder) then) =
      __$$_SalesOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String companyId,
      String salesOrderId,
      DateTime salesOrderDate,
      String salesType,
      String? customerId,
      String? addressId,
      String? customerName,
      String? shippingAddress1,
      String? shippingAddress2,
      String? zipCode,
      String? city,
      String? state,
      Country? country,
      Divisa divisa,
      Money? taxBase,
      Money? ivaAmount,
      Money? total,
      SalesOrderStatus salesOrderStatus,
      bool isOffer,
      double promptPaymentDiscount,
      double iva,
      DateTime lastUpdated,
      bool deleted});

  @override
  $CountryCopyWith<$Res>? get country;
  @override
  $DivisaCopyWith<$Res> get divisa;
  @override
  $SalesOrderStatusCopyWith<$Res> get salesOrderStatus;
}

/// @nodoc
class __$$_SalesOrderCopyWithImpl<$Res> extends _$SalesOrderCopyWithImpl<$Res>
    implements _$$_SalesOrderCopyWith<$Res> {
  __$$_SalesOrderCopyWithImpl(
      _$_SalesOrder _value, $Res Function(_$_SalesOrder) _then)
      : super(_value, (v) => _then(v as _$_SalesOrder));

  @override
  _$_SalesOrder get _value => super._value as _$_SalesOrder;

  @override
  $Res call({
    Object? companyId = freezed,
    Object? salesOrderId = freezed,
    Object? salesOrderDate = freezed,
    Object? salesType = freezed,
    Object? customerId = freezed,
    Object? addressId = freezed,
    Object? customerName = freezed,
    Object? shippingAddress1 = freezed,
    Object? shippingAddress2 = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? divisa = freezed,
    Object? taxBase = freezed,
    Object? ivaAmount = freezed,
    Object? total = freezed,
    Object? salesOrderStatus = freezed,
    Object? isOffer = freezed,
    Object? promptPaymentDiscount = freezed,
    Object? iva = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_SalesOrder(
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: salesOrderId == freezed
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderDate: salesOrderDate == freezed
          ? _value.salesOrderDate
          : salesOrderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress1: shippingAddress1 == freezed
          ? _value.shippingAddress1
          : shippingAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress2: shippingAddress2 == freezed
          ? _value.shippingAddress2
          : shippingAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      divisa: divisa == freezed
          ? _value.divisa
          : divisa // ignore: cast_nullable_to_non_nullable
              as Divisa,
      taxBase: taxBase == freezed
          ? _value.taxBase
          : taxBase // ignore: cast_nullable_to_non_nullable
              as Money?,
      ivaAmount: ivaAmount == freezed
          ? _value.ivaAmount
          : ivaAmount // ignore: cast_nullable_to_non_nullable
              as Money?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Money?,
      salesOrderStatus: salesOrderStatus == freezed
          ? _value.salesOrderStatus
          : salesOrderStatus // ignore: cast_nullable_to_non_nullable
              as SalesOrderStatus,
      isOffer: isOffer == freezed
          ? _value.isOffer
          : isOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      promptPaymentDiscount: promptPaymentDiscount == freezed
          ? _value.promptPaymentDiscount
          : promptPaymentDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      iva: iva == freezed
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SalesOrder extends _SalesOrder {
  const _$_SalesOrder(
      {required this.companyId,
      required this.salesOrderId,
      required this.salesOrderDate,
      required this.salesType,
      this.customerId,
      this.addressId,
      this.customerName,
      this.shippingAddress1,
      this.shippingAddress2,
      this.zipCode,
      this.city,
      this.state,
      this.country,
      required this.divisa,
      this.taxBase,
      this.ivaAmount,
      this.total,
      required this.salesOrderStatus,
      required this.isOffer,
      required this.promptPaymentDiscount,
      required this.iva,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String companyId;
  @override
  final String salesOrderId;
  @override
  final DateTime salesOrderDate;
  @override
  final String salesType;
  @override
  final String? customerId;
  @override
  final String? addressId;
  @override
  final String? customerName;
  @override
  final String? shippingAddress1;
  @override
  final String? shippingAddress2;
  @override
  final String? zipCode;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final Country? country;
  @override
  final Divisa divisa;
  @override
  final Money? taxBase;
  @override
  final Money? ivaAmount;
  @override
  final Money? total;
  @override
  final SalesOrderStatus salesOrderStatus;
  @override
  final bool isOffer;
  @override
  final double promptPaymentDiscount;
  @override
  final double iva;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'SalesOrder(companyId: $companyId, salesOrderId: $salesOrderId, salesOrderDate: $salesOrderDate, salesType: $salesType, customerId: $customerId, addressId: $addressId, customerName: $customerName, shippingAddress1: $shippingAddress1, shippingAddress2: $shippingAddress2, zipCode: $zipCode, city: $city, state: $state, country: $country, divisa: $divisa, taxBase: $taxBase, ivaAmount: $ivaAmount, total: $total, salesOrderStatus: $salesOrderStatus, isOffer: $isOffer, promptPaymentDiscount: $promptPaymentDiscount, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesOrder &&
            const DeepCollectionEquality().equals(other.companyId, companyId) &&
            const DeepCollectionEquality()
                .equals(other.salesOrderId, salesOrderId) &&
            const DeepCollectionEquality()
                .equals(other.salesOrderDate, salesOrderDate) &&
            const DeepCollectionEquality().equals(other.salesType, salesType) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.addressId, addressId) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.shippingAddress1, shippingAddress1) &&
            const DeepCollectionEquality()
                .equals(other.shippingAddress2, shippingAddress2) &&
            const DeepCollectionEquality().equals(other.zipCode, zipCode) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.divisa, divisa) &&
            const DeepCollectionEquality().equals(other.taxBase, taxBase) &&
            const DeepCollectionEquality().equals(other.ivaAmount, ivaAmount) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.salesOrderStatus, salesOrderStatus) &&
            const DeepCollectionEquality().equals(other.isOffer, isOffer) &&
            const DeepCollectionEquality()
                .equals(other.promptPaymentDiscount, promptPaymentDiscount) &&
            const DeepCollectionEquality().equals(other.iva, iva) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(companyId),
        const DeepCollectionEquality().hash(salesOrderId),
        const DeepCollectionEquality().hash(salesOrderDate),
        const DeepCollectionEquality().hash(salesType),
        const DeepCollectionEquality().hash(customerId),
        const DeepCollectionEquality().hash(addressId),
        const DeepCollectionEquality().hash(customerName),
        const DeepCollectionEquality().hash(shippingAddress1),
        const DeepCollectionEquality().hash(shippingAddress2),
        const DeepCollectionEquality().hash(zipCode),
        const DeepCollectionEquality().hash(city),
        const DeepCollectionEquality().hash(state),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(divisa),
        const DeepCollectionEquality().hash(taxBase),
        const DeepCollectionEquality().hash(ivaAmount),
        const DeepCollectionEquality().hash(total),
        const DeepCollectionEquality().hash(salesOrderStatus),
        const DeepCollectionEquality().hash(isOffer),
        const DeepCollectionEquality().hash(promptPaymentDiscount),
        const DeepCollectionEquality().hash(iva),
        const DeepCollectionEquality().hash(lastUpdated),
        const DeepCollectionEquality().hash(deleted)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_SalesOrderCopyWith<_$_SalesOrder> get copyWith =>
      __$$_SalesOrderCopyWithImpl<_$_SalesOrder>(this, _$identity);
}

abstract class _SalesOrder extends SalesOrder {
  const factory _SalesOrder(
      {required final String companyId,
      required final String salesOrderId,
      required final DateTime salesOrderDate,
      required final String salesType,
      final String? customerId,
      final String? addressId,
      final String? customerName,
      final String? shippingAddress1,
      final String? shippingAddress2,
      final String? zipCode,
      final String? city,
      final String? state,
      final Country? country,
      required final Divisa divisa,
      final Money? taxBase,
      final Money? ivaAmount,
      final Money? total,
      required final SalesOrderStatus salesOrderStatus,
      required final bool isOffer,
      required final double promptPaymentDiscount,
      required final double iva,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_SalesOrder;
  const _SalesOrder._() : super._();

  @override
  String get companyId;
  @override
  String get salesOrderId;
  @override
  DateTime get salesOrderDate;
  @override
  String get salesType;
  @override
  String? get customerId;
  @override
  String? get addressId;
  @override
  String? get customerName;
  @override
  String? get shippingAddress1;
  @override
  String? get shippingAddress2;
  @override
  String? get zipCode;
  @override
  String? get city;
  @override
  String? get state;
  @override
  Country? get country;
  @override
  Divisa get divisa;
  @override
  Money? get taxBase;
  @override
  Money? get ivaAmount;
  @override
  Money? get total;
  @override
  SalesOrderStatus get salesOrderStatus;
  @override
  bool get isOffer;
  @override
  double get promptPaymentDiscount;
  @override
  double get iva;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_SalesOrderCopyWith<_$_SalesOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
