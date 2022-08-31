// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_article_sales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerArticleSales {
  double get customerId => throw _privateConstructorUsedError;
  double get month => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerArticleSalesCopyWith<CustomerArticleSales> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerArticleSalesCopyWith<$Res> {
  factory $CustomerArticleSalesCopyWith(CustomerArticleSales value,
          $Res Function(CustomerArticleSales) then) =
      _$CustomerArticleSalesCopyWithImpl<$Res>;
  $Res call({double customerId, double month, double amount, double cost});
}

/// @nodoc
class _$CustomerArticleSalesCopyWithImpl<$Res>
    implements $CustomerArticleSalesCopyWith<$Res> {
  _$CustomerArticleSalesCopyWithImpl(this._value, this._then);

  final CustomerArticleSales _value;
  // ignore: unused_field
  final $Res Function(CustomerArticleSales) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? month = freezed,
    Object? amount = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as double,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as double,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerArticleSalesCopyWith<$Res>
    implements $CustomerArticleSalesCopyWith<$Res> {
  factory _$$_CustomerArticleSalesCopyWith(_$_CustomerArticleSales value,
          $Res Function(_$_CustomerArticleSales) then) =
      __$$_CustomerArticleSalesCopyWithImpl<$Res>;
  @override
  $Res call({double customerId, double month, double amount, double cost});
}

/// @nodoc
class __$$_CustomerArticleSalesCopyWithImpl<$Res>
    extends _$CustomerArticleSalesCopyWithImpl<$Res>
    implements _$$_CustomerArticleSalesCopyWith<$Res> {
  __$$_CustomerArticleSalesCopyWithImpl(_$_CustomerArticleSales _value,
      $Res Function(_$_CustomerArticleSales) _then)
      : super(_value, (v) => _then(v as _$_CustomerArticleSales));

  @override
  _$_CustomerArticleSales get _value => super._value as _$_CustomerArticleSales;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? month = freezed,
    Object? amount = freezed,
    Object? cost = freezed,
  }) {
    return _then(_$_CustomerArticleSales(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as double,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as double,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CustomerArticleSales extends _CustomerArticleSales {
  const _$_CustomerArticleSales(
      {required this.customerId,
      required this.month,
      required this.amount,
      required this.cost})
      : super._();

  @override
  final double customerId;
  @override
  final double month;
  @override
  final double amount;
  @override
  final double cost;

  @override
  String toString() {
    return 'CustomerArticleSales(customerId: $customerId, month: $month, amount: $amount, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerArticleSales &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerArticleSalesCopyWith<_$_CustomerArticleSales> get copyWith =>
      __$$_CustomerArticleSalesCopyWithImpl<_$_CustomerArticleSales>(
          this, _$identity);
}

abstract class _CustomerArticleSales extends CustomerArticleSales {
  const factory _CustomerArticleSales(
      {required final double customerId,
      required final double month,
      required final double amount,
      required final double cost}) = _$_CustomerArticleSales;
  const _CustomerArticleSales._() : super._();

  @override
  double get customerId;
  @override
  double get month;
  @override
  double get amount;
  @override
  double get cost;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerArticleSalesCopyWith<_$_CustomerArticleSales> get copyWith =>
      throw _privateConstructorUsedError;
}
