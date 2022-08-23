// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_pending_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerPendingPayment {
  String get customerId => throw _privateConstructorUsedError;
  String get effectId => throw _privateConstructorUsedError;
  String? get invoiceId => throw _privateConstructorUsedError;
  DateTime? get invoiceDate => throw _privateConstructorUsedError;
  DateTime? get expirationDate => throw _privateConstructorUsedError;
  CollectionMethod? get collectionMethod => throw _privateConstructorUsedError;
  String? get collectionStatusId => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  DateTime? get initialExpirationDate => throw _privateConstructorUsedError;
  bool? get expirationJBM => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerPendingPaymentCopyWith<CustomerPendingPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerPendingPaymentCopyWith<$Res> {
  factory $CustomerPendingPaymentCopyWith(CustomerPendingPayment value,
          $Res Function(CustomerPendingPayment) then) =
      _$CustomerPendingPaymentCopyWithImpl<$Res>;
  $Res call(
      {String customerId,
      String effectId,
      String? invoiceId,
      DateTime? invoiceDate,
      DateTime? expirationDate,
      CollectionMethod? collectionMethod,
      String? collectionStatusId,
      double? amount,
      DateTime? initialExpirationDate,
      bool? expirationJBM,
      DateTime lastUpdated,
      bool deleted});

  $CollectionMethodCopyWith<$Res>? get collectionMethod;
}

/// @nodoc
class _$CustomerPendingPaymentCopyWithImpl<$Res>
    implements $CustomerPendingPaymentCopyWith<$Res> {
  _$CustomerPendingPaymentCopyWithImpl(this._value, this._then);

  final CustomerPendingPayment _value;
  // ignore: unused_field
  final $Res Function(CustomerPendingPayment) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? effectId = freezed,
    Object? invoiceId = freezed,
    Object? invoiceDate = freezed,
    Object? expirationDate = freezed,
    Object? collectionMethod = freezed,
    Object? collectionStatusId = freezed,
    Object? amount = freezed,
    Object? initialExpirationDate = freezed,
    Object? expirationJBM = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      effectId: effectId == freezed
          ? _value.effectId
          : effectId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: invoiceId == freezed
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      collectionMethod: collectionMethod == freezed
          ? _value.collectionMethod
          : collectionMethod // ignore: cast_nullable_to_non_nullable
              as CollectionMethod?,
      collectionStatusId: collectionStatusId == freezed
          ? _value.collectionStatusId
          : collectionStatusId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      initialExpirationDate: initialExpirationDate == freezed
          ? _value.initialExpirationDate
          : initialExpirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationJBM: expirationJBM == freezed
          ? _value.expirationJBM
          : expirationJBM // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $CollectionMethodCopyWith<$Res>? get collectionMethod {
    if (_value.collectionMethod == null) {
      return null;
    }

    return $CollectionMethodCopyWith<$Res>(_value.collectionMethod!, (value) {
      return _then(_value.copyWith(collectionMethod: value));
    });
  }
}

/// @nodoc
abstract class _$$_CustomerPendingPaymentCopyWith<$Res>
    implements $CustomerPendingPaymentCopyWith<$Res> {
  factory _$$_CustomerPendingPaymentCopyWith(_$_CustomerPendingPayment value,
          $Res Function(_$_CustomerPendingPayment) then) =
      __$$_CustomerPendingPaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String customerId,
      String effectId,
      String? invoiceId,
      DateTime? invoiceDate,
      DateTime? expirationDate,
      CollectionMethod? collectionMethod,
      String? collectionStatusId,
      double? amount,
      DateTime? initialExpirationDate,
      bool? expirationJBM,
      DateTime lastUpdated,
      bool deleted});

  @override
  $CollectionMethodCopyWith<$Res>? get collectionMethod;
}

/// @nodoc
class __$$_CustomerPendingPaymentCopyWithImpl<$Res>
    extends _$CustomerPendingPaymentCopyWithImpl<$Res>
    implements _$$_CustomerPendingPaymentCopyWith<$Res> {
  __$$_CustomerPendingPaymentCopyWithImpl(_$_CustomerPendingPayment _value,
      $Res Function(_$_CustomerPendingPayment) _then)
      : super(_value, (v) => _then(v as _$_CustomerPendingPayment));

  @override
  _$_CustomerPendingPayment get _value =>
      super._value as _$_CustomerPendingPayment;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? effectId = freezed,
    Object? invoiceId = freezed,
    Object? invoiceDate = freezed,
    Object? expirationDate = freezed,
    Object? collectionMethod = freezed,
    Object? collectionStatusId = freezed,
    Object? amount = freezed,
    Object? initialExpirationDate = freezed,
    Object? expirationJBM = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerPendingPayment(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      effectId: effectId == freezed
          ? _value.effectId
          : effectId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: invoiceId == freezed
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      collectionMethod: collectionMethod == freezed
          ? _value.collectionMethod
          : collectionMethod // ignore: cast_nullable_to_non_nullable
              as CollectionMethod?,
      collectionStatusId: collectionStatusId == freezed
          ? _value.collectionStatusId
          : collectionStatusId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      initialExpirationDate: initialExpirationDate == freezed
          ? _value.initialExpirationDate
          : initialExpirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationJBM: expirationJBM == freezed
          ? _value.expirationJBM
          : expirationJBM // ignore: cast_nullable_to_non_nullable
              as bool?,
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

class _$_CustomerPendingPayment extends _CustomerPendingPayment {
  const _$_CustomerPendingPayment(
      {required this.customerId,
      required this.effectId,
      this.invoiceId,
      this.invoiceDate,
      this.expirationDate,
      this.collectionMethod,
      this.collectionStatusId,
      this.amount,
      this.initialExpirationDate,
      this.expirationJBM,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String customerId;
  @override
  final String effectId;
  @override
  final String? invoiceId;
  @override
  final DateTime? invoiceDate;
  @override
  final DateTime? expirationDate;
  @override
  final CollectionMethod? collectionMethod;
  @override
  final String? collectionStatusId;
  @override
  final double? amount;
  @override
  final DateTime? initialExpirationDate;
  @override
  final bool? expirationJBM;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'CustomerPendingPayment(customerId: $customerId, effectId: $effectId, invoiceId: $invoiceId, invoiceDate: $invoiceDate, expirationDate: $expirationDate, collectionMethod: $collectionMethod, collectionStatusId: $collectionStatusId, amount: $amount, initialExpirationDate: $initialExpirationDate, expirationJBM: $expirationJBM, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerPendingPayment &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.effectId, effectId) &&
            const DeepCollectionEquality().equals(other.invoiceId, invoiceId) &&
            const DeepCollectionEquality()
                .equals(other.invoiceDate, invoiceDate) &&
            const DeepCollectionEquality()
                .equals(other.expirationDate, expirationDate) &&
            const DeepCollectionEquality()
                .equals(other.collectionMethod, collectionMethod) &&
            const DeepCollectionEquality()
                .equals(other.collectionStatusId, collectionStatusId) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.initialExpirationDate, initialExpirationDate) &&
            const DeepCollectionEquality()
                .equals(other.expirationJBM, expirationJBM) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(effectId),
      const DeepCollectionEquality().hash(invoiceId),
      const DeepCollectionEquality().hash(invoiceDate),
      const DeepCollectionEquality().hash(expirationDate),
      const DeepCollectionEquality().hash(collectionMethod),
      const DeepCollectionEquality().hash(collectionStatusId),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(initialExpirationDate),
      const DeepCollectionEquality().hash(expirationJBM),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerPendingPaymentCopyWith<_$_CustomerPendingPayment> get copyWith =>
      __$$_CustomerPendingPaymentCopyWithImpl<_$_CustomerPendingPayment>(
          this, _$identity);
}

abstract class _CustomerPendingPayment extends CustomerPendingPayment {
  const factory _CustomerPendingPayment(
      {required final String customerId,
      required final String effectId,
      final String? invoiceId,
      final DateTime? invoiceDate,
      final DateTime? expirationDate,
      final CollectionMethod? collectionMethod,
      final String? collectionStatusId,
      final double? amount,
      final DateTime? initialExpirationDate,
      final bool? expirationJBM,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_CustomerPendingPayment;
  const _CustomerPendingPayment._() : super._();

  @override
  String get customerId;
  @override
  String get effectId;
  @override
  String? get invoiceId;
  @override
  DateTime? get invoiceDate;
  @override
  DateTime? get expirationDate;
  @override
  CollectionMethod? get collectionMethod;
  @override
  String? get collectionStatusId;
  @override
  double? get amount;
  @override
  DateTime? get initialExpirationDate;
  @override
  bool? get expirationJBM;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerPendingPaymentCopyWith<_$_CustomerPendingPayment> get copyWith =>
      throw _privateConstructorUsedError;
}
