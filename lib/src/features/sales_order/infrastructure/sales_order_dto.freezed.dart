// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesOrderDTO _$SalesOrderDTOFromJson(Map<String, dynamic> json) {
  return _SalesOrderDTO.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderDTO {
  @JsonKey(name: 'EMPRESA_ID')
  String get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_ID')
  String get salesOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_PEDIDO')
  DateTime get salesOrderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_VENTA')
  String get salesType => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ID')
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_ID')
  String? get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_CLIENTE')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_ENVIO1')
  String? get shippingAddress1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_ENVIO2')
  String? get shippingAddress2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get zipCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'POBLACION')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVINCIA')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAIS_ID')
  String? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'BASE_IMPONIBLE')
  double get taxBase => throw _privateConstructorUsedError;
  @JsonKey(name: 'IMPORTE_IVA')
  double get ivaAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'TOTAL')
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'ESTADO_PEDIDO_ID')
  int get salesOrderStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'OFERTA_SN')
  String get isOffer => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
  double get promptPaymentDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'IVA')
  double get iva => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderDTOCopyWith<SalesOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderDTOCopyWith<$Res> {
  factory $SalesOrderDTOCopyWith(
          SalesOrderDTO value, $Res Function(SalesOrderDTO) then) =
      _$SalesOrderDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String companyId,
      @JsonKey(name: 'PEDIDO_ID') String salesOrderId,
      @JsonKey(name: 'FECHA_PEDIDO') DateTime salesOrderDate,
      @JsonKey(name: 'TIPO_VENTA') String salesType,
      @JsonKey(name: 'CLIENTE_ID') String? customerId,
      @JsonKey(name: 'DIRECCION_ID') String? addressId,
      @JsonKey(name: 'NOMBRE_CLIENTE') String? customerName,
      @JsonKey(name: 'DIRECCION_ENVIO1') String? shippingAddress1,
      @JsonKey(name: 'DIRECCION_ENVIO2') String? shippingAddress2,
      @JsonKey(name: 'CODIGO_POSTAL') String? zipCode,
      @JsonKey(name: 'POBLACION') String? city,
      @JsonKey(name: 'PROVINCIA') String? state,
      @JsonKey(name: 'PAIS_ID') String? countryId,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'BASE_IMPONIBLE') double taxBase,
      @JsonKey(name: 'IMPORTE_IVA') double ivaAmount,
      @JsonKey(name: 'TOTAL') double total,
      @JsonKey(name: 'ESTADO_PEDIDO_ID') int salesOrderStatusId,
      @JsonKey(name: 'OFERTA_SN') String isOffer,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO') double promptPaymentDiscount,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$SalesOrderDTOCopyWithImpl<$Res>
    implements $SalesOrderDTOCopyWith<$Res> {
  _$SalesOrderDTOCopyWithImpl(this._value, this._then);

  final SalesOrderDTO _value;
  // ignore: unused_field
  final $Res Function(SalesOrderDTO) _then;

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
    Object? countryId = freezed,
    Object? divisaId = freezed,
    Object? taxBase = freezed,
    Object? ivaAmount = freezed,
    Object? total = freezed,
    Object? salesOrderStatusId = freezed,
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
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      divisaId: divisaId == freezed
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
      taxBase: taxBase == freezed
          ? _value.taxBase
          : taxBase // ignore: cast_nullable_to_non_nullable
              as double,
      ivaAmount: ivaAmount == freezed
          ? _value.ivaAmount
          : ivaAmount // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      salesOrderStatusId: salesOrderStatusId == freezed
          ? _value.salesOrderStatusId
          : salesOrderStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      isOffer: isOffer == freezed
          ? _value.isOffer
          : isOffer // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SalesOrderDTOCopyWith<$Res>
    implements $SalesOrderDTOCopyWith<$Res> {
  factory _$$_SalesOrderDTOCopyWith(
          _$_SalesOrderDTO value, $Res Function(_$_SalesOrderDTO) then) =
      __$$_SalesOrderDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String companyId,
      @JsonKey(name: 'PEDIDO_ID') String salesOrderId,
      @JsonKey(name: 'FECHA_PEDIDO') DateTime salesOrderDate,
      @JsonKey(name: 'TIPO_VENTA') String salesType,
      @JsonKey(name: 'CLIENTE_ID') String? customerId,
      @JsonKey(name: 'DIRECCION_ID') String? addressId,
      @JsonKey(name: 'NOMBRE_CLIENTE') String? customerName,
      @JsonKey(name: 'DIRECCION_ENVIO1') String? shippingAddress1,
      @JsonKey(name: 'DIRECCION_ENVIO2') String? shippingAddress2,
      @JsonKey(name: 'CODIGO_POSTAL') String? zipCode,
      @JsonKey(name: 'POBLACION') String? city,
      @JsonKey(name: 'PROVINCIA') String? state,
      @JsonKey(name: 'PAIS_ID') String? countryId,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'BASE_IMPONIBLE') double taxBase,
      @JsonKey(name: 'IMPORTE_IVA') double ivaAmount,
      @JsonKey(name: 'TOTAL') double total,
      @JsonKey(name: 'ESTADO_PEDIDO_ID') int salesOrderStatusId,
      @JsonKey(name: 'OFERTA_SN') String isOffer,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO') double promptPaymentDiscount,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_SalesOrderDTOCopyWithImpl<$Res>
    extends _$SalesOrderDTOCopyWithImpl<$Res>
    implements _$$_SalesOrderDTOCopyWith<$Res> {
  __$$_SalesOrderDTOCopyWithImpl(
      _$_SalesOrderDTO _value, $Res Function(_$_SalesOrderDTO) _then)
      : super(_value, (v) => _then(v as _$_SalesOrderDTO));

  @override
  _$_SalesOrderDTO get _value => super._value as _$_SalesOrderDTO;

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
    Object? countryId = freezed,
    Object? divisaId = freezed,
    Object? taxBase = freezed,
    Object? ivaAmount = freezed,
    Object? total = freezed,
    Object? salesOrderStatusId = freezed,
    Object? isOffer = freezed,
    Object? promptPaymentDiscount = freezed,
    Object? iva = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_SalesOrderDTO(
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
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      divisaId: divisaId == freezed
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
      taxBase: taxBase == freezed
          ? _value.taxBase
          : taxBase // ignore: cast_nullable_to_non_nullable
              as double,
      ivaAmount: ivaAmount == freezed
          ? _value.ivaAmount
          : ivaAmount // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      salesOrderStatusId: salesOrderStatusId == freezed
          ? _value.salesOrderStatusId
          : salesOrderStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      isOffer: isOffer == freezed
          ? _value.isOffer
          : isOffer // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesOrderDTO extends _SalesOrderDTO {
  const _$_SalesOrderDTO(
      {@JsonKey(name: 'EMPRESA_ID')
          required this.companyId,
      @JsonKey(name: 'PEDIDO_ID')
          required this.salesOrderId,
      @JsonKey(name: 'FECHA_PEDIDO')
          required this.salesOrderDate,
      @JsonKey(name: 'TIPO_VENTA')
          required this.salesType,
      @JsonKey(name: 'CLIENTE_ID')
          this.customerId,
      @JsonKey(name: 'DIRECCION_ID')
          this.addressId,
      @JsonKey(name: 'NOMBRE_CLIENTE')
          this.customerName,
      @JsonKey(name: 'DIRECCION_ENVIO1')
          this.shippingAddress1,
      @JsonKey(name: 'DIRECCION_ENVIO2')
          this.shippingAddress2,
      @JsonKey(name: 'CODIGO_POSTAL')
          this.zipCode,
      @JsonKey(name: 'POBLACION')
          this.city,
      @JsonKey(name: 'PROVINCIA')
          this.state,
      @JsonKey(name: 'PAIS_ID')
          this.countryId,
      @JsonKey(name: 'DIVISA_ID')
          required this.divisaId,
      @JsonKey(name: 'BASE_IMPONIBLE')
          required this.taxBase,
      @JsonKey(name: 'IMPORTE_IVA')
          required this.ivaAmount,
      @JsonKey(name: 'TOTAL')
          required this.total,
      @JsonKey(name: 'ESTADO_PEDIDO_ID')
          required this.salesOrderStatusId,
      @JsonKey(name: 'OFERTA_SN')
          required this.isOffer,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
          required this.promptPaymentDiscount,
      @JsonKey(name: 'IVA')
          required this.iva,
      @JsonKey(name: 'LAST_UPDATED')
          required this.lastUpdated,
      @JsonKey(name: 'DELETED')
          required this.deleted})
      : super._();

  factory _$_SalesOrderDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SalesOrderDTOFromJson(json);

  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String companyId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  final String salesOrderId;
  @override
  @JsonKey(name: 'FECHA_PEDIDO')
  final DateTime salesOrderDate;
  @override
  @JsonKey(name: 'TIPO_VENTA')
  final String salesType;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String? customerId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  final String? addressId;
  @override
  @JsonKey(name: 'NOMBRE_CLIENTE')
  final String? customerName;
  @override
  @JsonKey(name: 'DIRECCION_ENVIO1')
  final String? shippingAddress1;
  @override
  @JsonKey(name: 'DIRECCION_ENVIO2')
  final String? shippingAddress2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  final String? zipCode;
  @override
  @JsonKey(name: 'POBLACION')
  final String? city;
  @override
  @JsonKey(name: 'PROVINCIA')
  final String? state;
  @override
  @JsonKey(name: 'PAIS_ID')
  final String? countryId;
  @override
  @JsonKey(name: 'DIVISA_ID')
  final String divisaId;
  @override
  @JsonKey(name: 'BASE_IMPONIBLE')
  final double taxBase;
  @override
  @JsonKey(name: 'IMPORTE_IVA')
  final double ivaAmount;
  @override
  @JsonKey(name: 'TOTAL')
  final double total;
  @override
  @JsonKey(name: 'ESTADO_PEDIDO_ID')
  final int salesOrderStatusId;
  @override
  @JsonKey(name: 'OFERTA_SN')
  final String isOffer;
  @override
  @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
  final double promptPaymentDiscount;
  @override
  @JsonKey(name: 'IVA')
  final double iva;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'SalesOrderDTO(companyId: $companyId, salesOrderId: $salesOrderId, salesOrderDate: $salesOrderDate, salesType: $salesType, customerId: $customerId, addressId: $addressId, customerName: $customerName, shippingAddress1: $shippingAddress1, shippingAddress2: $shippingAddress2, zipCode: $zipCode, city: $city, state: $state, countryId: $countryId, divisaId: $divisaId, taxBase: $taxBase, ivaAmount: $ivaAmount, total: $total, salesOrderStatusId: $salesOrderStatusId, isOffer: $isOffer, promptPaymentDiscount: $promptPaymentDiscount, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesOrderDTO &&
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
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality().equals(other.divisaId, divisaId) &&
            const DeepCollectionEquality().equals(other.taxBase, taxBase) &&
            const DeepCollectionEquality().equals(other.ivaAmount, ivaAmount) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.salesOrderStatusId, salesOrderStatusId) &&
            const DeepCollectionEquality().equals(other.isOffer, isOffer) &&
            const DeepCollectionEquality()
                .equals(other.promptPaymentDiscount, promptPaymentDiscount) &&
            const DeepCollectionEquality().equals(other.iva, iva) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
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
        const DeepCollectionEquality().hash(countryId),
        const DeepCollectionEquality().hash(divisaId),
        const DeepCollectionEquality().hash(taxBase),
        const DeepCollectionEquality().hash(ivaAmount),
        const DeepCollectionEquality().hash(total),
        const DeepCollectionEquality().hash(salesOrderStatusId),
        const DeepCollectionEquality().hash(isOffer),
        const DeepCollectionEquality().hash(promptPaymentDiscount),
        const DeepCollectionEquality().hash(iva),
        const DeepCollectionEquality().hash(lastUpdated),
        const DeepCollectionEquality().hash(deleted)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_SalesOrderDTOCopyWith<_$_SalesOrderDTO> get copyWith =>
      __$$_SalesOrderDTOCopyWithImpl<_$_SalesOrderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesOrderDTOToJson(
      this,
    );
  }
}

abstract class _SalesOrderDTO extends SalesOrderDTO {
  const factory _SalesOrderDTO(
      {@JsonKey(name: 'EMPRESA_ID')
          required final String companyId,
      @JsonKey(name: 'PEDIDO_ID')
          required final String salesOrderId,
      @JsonKey(name: 'FECHA_PEDIDO')
          required final DateTime salesOrderDate,
      @JsonKey(name: 'TIPO_VENTA')
          required final String salesType,
      @JsonKey(name: 'CLIENTE_ID')
          final String? customerId,
      @JsonKey(name: 'DIRECCION_ID')
          final String? addressId,
      @JsonKey(name: 'NOMBRE_CLIENTE')
          final String? customerName,
      @JsonKey(name: 'DIRECCION_ENVIO1')
          final String? shippingAddress1,
      @JsonKey(name: 'DIRECCION_ENVIO2')
          final String? shippingAddress2,
      @JsonKey(name: 'CODIGO_POSTAL')
          final String? zipCode,
      @JsonKey(name: 'POBLACION')
          final String? city,
      @JsonKey(name: 'PROVINCIA')
          final String? state,
      @JsonKey(name: 'PAIS_ID')
          final String? countryId,
      @JsonKey(name: 'DIVISA_ID')
          required final String divisaId,
      @JsonKey(name: 'BASE_IMPONIBLE')
          required final double taxBase,
      @JsonKey(name: 'IMPORTE_IVA')
          required final double ivaAmount,
      @JsonKey(name: 'TOTAL')
          required final double total,
      @JsonKey(name: 'ESTADO_PEDIDO_ID')
          required final int salesOrderStatusId,
      @JsonKey(name: 'OFERTA_SN')
          required final String isOffer,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
          required final double promptPaymentDiscount,
      @JsonKey(name: 'IVA')
          required final double iva,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          required final String deleted}) = _$_SalesOrderDTO;
  const _SalesOrderDTO._() : super._();

  factory _SalesOrderDTO.fromJson(Map<String, dynamic> json) =
      _$_SalesOrderDTO.fromJson;

  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get companyId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  String get salesOrderId;
  @override
  @JsonKey(name: 'FECHA_PEDIDO')
  DateTime get salesOrderDate;
  @override
  @JsonKey(name: 'TIPO_VENTA')
  String get salesType;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  String? get customerId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  String? get addressId;
  @override
  @JsonKey(name: 'NOMBRE_CLIENTE')
  String? get customerName;
  @override
  @JsonKey(name: 'DIRECCION_ENVIO1')
  String? get shippingAddress1;
  @override
  @JsonKey(name: 'DIRECCION_ENVIO2')
  String? get shippingAddress2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get zipCode;
  @override
  @JsonKey(name: 'POBLACION')
  String? get city;
  @override
  @JsonKey(name: 'PROVINCIA')
  String? get state;
  @override
  @JsonKey(name: 'PAIS_ID')
  String? get countryId;
  @override
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId;
  @override
  @JsonKey(name: 'BASE_IMPONIBLE')
  double get taxBase;
  @override
  @JsonKey(name: 'IMPORTE_IVA')
  double get ivaAmount;
  @override
  @JsonKey(name: 'TOTAL')
  double get total;
  @override
  @JsonKey(name: 'ESTADO_PEDIDO_ID')
  int get salesOrderStatusId;
  @override
  @JsonKey(name: 'OFERTA_SN')
  String get isOffer;
  @override
  @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
  double get promptPaymentDiscount;
  @override
  @JsonKey(name: 'IVA')
  double get iva;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_SalesOrderDTOCopyWith<_$_SalesOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
