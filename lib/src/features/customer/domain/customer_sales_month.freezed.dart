// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_sales_month.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerSalesMonth {
  double get customerId => throw _privateConstructorUsedError;
  double get month => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerSalesMonthCopyWith<CustomerSalesMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerSalesMonthCopyWith<$Res> {
  factory $CustomerSalesMonthCopyWith(
          CustomerSalesMonth value, $Res Function(CustomerSalesMonth) then) =
      _$CustomerSalesMonthCopyWithImpl<$Res>;
  $Res call({double customerId, double month, double amount, double cost});
}

/// @nodoc
class _$CustomerSalesMonthCopyWithImpl<$Res>
    implements $CustomerSalesMonthCopyWith<$Res> {
  _$CustomerSalesMonthCopyWithImpl(this._value, this._then);

  final CustomerSalesMonth _value;
  // ignore: unused_field
  final $Res Function(CustomerSalesMonth) _then;

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
abstract class _$$_CustomerSalesMonthCopyWith<$Res>
    implements $CustomerSalesMonthCopyWith<$Res> {
  factory _$$_CustomerSalesMonthCopyWith(_$_CustomerSalesMonth value,
          $Res Function(_$_CustomerSalesMonth) then) =
      __$$_CustomerSalesMonthCopyWithImpl<$Res>;
  @override
  $Res call({double customerId, double month, double amount, double cost});
}

/// @nodoc
class __$$_CustomerSalesMonthCopyWithImpl<$Res>
    extends _$CustomerSalesMonthCopyWithImpl<$Res>
    implements _$$_CustomerSalesMonthCopyWith<$Res> {
  __$$_CustomerSalesMonthCopyWithImpl(
      _$_CustomerSalesMonth _value, $Res Function(_$_CustomerSalesMonth) _then)
      : super(_value, (v) => _then(v as _$_CustomerSalesMonth));

  @override
  _$_CustomerSalesMonth get _value => super._value as _$_CustomerSalesMonth;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? month = freezed,
    Object? amount = freezed,
    Object? cost = freezed,
  }) {
    return _then(_$_CustomerSalesMonth(
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

class _$_CustomerSalesMonth extends _CustomerSalesMonth {
  const _$_CustomerSalesMonth(
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
    return 'CustomerSalesMonth(customerId: $customerId, month: $month, amount: $amount, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerSalesMonth &&
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
  _$$_CustomerSalesMonthCopyWith<_$_CustomerSalesMonth> get copyWith =>
      __$$_CustomerSalesMonthCopyWithImpl<_$_CustomerSalesMonth>(
          this, _$identity);
}

abstract class _CustomerSalesMonth extends CustomerSalesMonth {
  const factory _CustomerSalesMonth(
      {required final double customerId,
      required final double month,
      required final double amount,
      required final double cost}) = _$_CustomerSalesMonth;
  const _CustomerSalesMonth._() : super._();

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
  _$$_CustomerSalesMonthCopyWith<_$_CustomerSalesMonth> get copyWith =>
      throw _privateConstructorUsedError;
}
