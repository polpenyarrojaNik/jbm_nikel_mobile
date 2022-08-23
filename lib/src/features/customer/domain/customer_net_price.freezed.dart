// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_net_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerNetPrice {
  String get customerId => throw _privateConstructorUsedError;
  String get articleId => throw _privateConstructorUsedError;
  double get quantityFrom => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double? get priceType => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerNetPriceCopyWith<CustomerNetPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerNetPriceCopyWith<$Res> {
  factory $CustomerNetPriceCopyWith(
          CustomerNetPrice value, $Res Function(CustomerNetPrice) then) =
      _$CustomerNetPriceCopyWithImpl<$Res>;
  $Res call(
      {String customerId,
      String articleId,
      double quantityFrom,
      double price,
      double? priceType,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$CustomerNetPriceCopyWithImpl<$Res>
    implements $CustomerNetPriceCopyWith<$Res> {
  _$CustomerNetPriceCopyWithImpl(this._value, this._then);

  final CustomerNetPrice _value;
  // ignore: unused_field
  final $Res Function(CustomerNetPrice) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? articleId = freezed,
    Object? quantityFrom = freezed,
    Object? price = freezed,
    Object? priceType = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      quantityFrom: quantityFrom == freezed
          ? _value.quantityFrom
          : quantityFrom // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$_CustomerNetPriceCopyWith<$Res>
    implements $CustomerNetPriceCopyWith<$Res> {
  factory _$$_CustomerNetPriceCopyWith(
          _$_CustomerNetPrice value, $Res Function(_$_CustomerNetPrice) then) =
      __$$_CustomerNetPriceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String customerId,
      String articleId,
      double quantityFrom,
      double price,
      double? priceType,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_CustomerNetPriceCopyWithImpl<$Res>
    extends _$CustomerNetPriceCopyWithImpl<$Res>
    implements _$$_CustomerNetPriceCopyWith<$Res> {
  __$$_CustomerNetPriceCopyWithImpl(
      _$_CustomerNetPrice _value, $Res Function(_$_CustomerNetPrice) _then)
      : super(_value, (v) => _then(v as _$_CustomerNetPrice));

  @override
  _$_CustomerNetPrice get _value => super._value as _$_CustomerNetPrice;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? articleId = freezed,
    Object? quantityFrom = freezed,
    Object? price = freezed,
    Object? priceType = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerNetPrice(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      quantityFrom: quantityFrom == freezed
          ? _value.quantityFrom
          : quantityFrom // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as double?,
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

class _$_CustomerNetPrice extends _CustomerNetPrice {
  const _$_CustomerNetPrice(
      {required this.customerId,
      required this.articleId,
      required this.quantityFrom,
      required this.price,
      this.priceType,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String customerId;
  @override
  final String articleId;
  @override
  final double quantityFrom;
  @override
  final double price;
  @override
  final double? priceType;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'CustomerNetPrice(customerId: $customerId, articleId: $articleId, quantityFrom: $quantityFrom, price: $price, priceType: $priceType, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerNetPrice &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality()
                .equals(other.quantityFrom, quantityFrom) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.priceType, priceType) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(quantityFrom),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(priceType),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerNetPriceCopyWith<_$_CustomerNetPrice> get copyWith =>
      __$$_CustomerNetPriceCopyWithImpl<_$_CustomerNetPrice>(this, _$identity);
}

abstract class _CustomerNetPrice extends CustomerNetPrice {
  const factory _CustomerNetPrice(
      {required final String customerId,
      required final String articleId,
      required final double quantityFrom,
      required final double price,
      final double? priceType,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_CustomerNetPrice;
  const _CustomerNetPrice._() : super._();

  @override
  String get customerId;
  @override
  String get articleId;
  @override
  double get quantityFrom;
  @override
  double get price;
  @override
  double? get priceType;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerNetPriceCopyWith<_$_CustomerNetPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
