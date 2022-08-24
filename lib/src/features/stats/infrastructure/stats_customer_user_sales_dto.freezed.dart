// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats_customer_user_sales_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatsCustomerUserSalesDTO _$StatsCustomerUserSalesDTOFromJson(
    Map<String, dynamic> json) {
  return _StatsCustomerUserSalesDTO.fromJson(json);
}

/// @nodoc
mixin _$StatsCustomerUserSalesDTO {
  @JsonKey(name: 'ANYO')
  double get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'MES')
  double get month => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'UNIDADES')
  double? get units => throw _privateConstructorUsedError;
  @JsonKey(name: 'IMPORTE')
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'COSTE')
  double? get cost => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCustomerUserSalesDTOCopyWith<StatsCustomerUserSalesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCustomerUserSalesDTOCopyWith<$Res> {
  factory $StatsCustomerUserSalesDTOCopyWith(StatsCustomerUserSalesDTO value,
          $Res Function(StatsCustomerUserSalesDTO) then) =
      _$StatsCustomerUserSalesDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ANYO') double year,
      @JsonKey(name: 'MES') double month,
      @JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'UNIDADES') double? units,
      @JsonKey(name: 'IMPORTE') double? amount,
      @JsonKey(name: 'COSTE') double? cost,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$StatsCustomerUserSalesDTOCopyWithImpl<$Res>
    implements $StatsCustomerUserSalesDTOCopyWith<$Res> {
  _$StatsCustomerUserSalesDTOCopyWithImpl(this._value, this._then);

  final StatsCustomerUserSalesDTO _value;
  // ignore: unused_field
  final $Res Function(StatsCustomerUserSalesDTO) _then;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? customerId = freezed,
    Object? articleId = freezed,
    Object? units = freezed,
    Object? amount = freezed,
    Object? cost = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as double,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      units: units == freezed
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$_StatsCustomerUserSalesDTOCopyWith<$Res>
    implements $StatsCustomerUserSalesDTOCopyWith<$Res> {
  factory _$$_StatsCustomerUserSalesDTOCopyWith(
          _$_StatsCustomerUserSalesDTO value,
          $Res Function(_$_StatsCustomerUserSalesDTO) then) =
      __$$_StatsCustomerUserSalesDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ANYO') double year,
      @JsonKey(name: 'MES') double month,
      @JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'UNIDADES') double? units,
      @JsonKey(name: 'IMPORTE') double? amount,
      @JsonKey(name: 'COSTE') double? cost,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_StatsCustomerUserSalesDTOCopyWithImpl<$Res>
    extends _$StatsCustomerUserSalesDTOCopyWithImpl<$Res>
    implements _$$_StatsCustomerUserSalesDTOCopyWith<$Res> {
  __$$_StatsCustomerUserSalesDTOCopyWithImpl(
      _$_StatsCustomerUserSalesDTO _value,
      $Res Function(_$_StatsCustomerUserSalesDTO) _then)
      : super(_value, (v) => _then(v as _$_StatsCustomerUserSalesDTO));

  @override
  _$_StatsCustomerUserSalesDTO get _value =>
      super._value as _$_StatsCustomerUserSalesDTO;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? customerId = freezed,
    Object? articleId = freezed,
    Object? units = freezed,
    Object? amount = freezed,
    Object? cost = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_StatsCustomerUserSalesDTO(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as double,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      units: units == freezed
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$_StatsCustomerUserSalesDTO extends _StatsCustomerUserSalesDTO {
  const _$_StatsCustomerUserSalesDTO(
      {@JsonKey(name: 'ANYO') required this.year,
      @JsonKey(name: 'MES') required this.month,
      @JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'UNIDADES') this.units,
      @JsonKey(name: 'IMPORTE') this.amount,
      @JsonKey(name: 'COSTE') this.cost,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_StatsCustomerUserSalesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_StatsCustomerUserSalesDTOFromJson(json);

  @override
  @JsonKey(name: 'ANYO')
  final double year;
  @override
  @JsonKey(name: 'MES')
  final double month;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'UNIDADES')
  final double? units;
  @override
  @JsonKey(name: 'IMPORTE')
  final double? amount;
  @override
  @JsonKey(name: 'COSTE')
  final double? cost;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'StatsCustomerUserSalesDTO(year: $year, month: $month, customerId: $customerId, articleId: $articleId, units: $units, amount: $amount, cost: $cost, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatsCustomerUserSalesDTO &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.units, units) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(units),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_StatsCustomerUserSalesDTOCopyWith<_$_StatsCustomerUserSalesDTO>
      get copyWith => __$$_StatsCustomerUserSalesDTOCopyWithImpl<
          _$_StatsCustomerUserSalesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsCustomerUserSalesDTOToJson(
      this,
    );
  }
}

abstract class _StatsCustomerUserSalesDTO extends StatsCustomerUserSalesDTO {
  const factory _StatsCustomerUserSalesDTO(
          {@JsonKey(name: 'ANYO') required final double year,
          @JsonKey(name: 'MES') required final double month,
          @JsonKey(name: 'CLIENTE_ID') required final String customerId,
          @JsonKey(name: 'ARTICULO_ID') required final String articleId,
          @JsonKey(name: 'UNIDADES') final double? units,
          @JsonKey(name: 'IMPORTE') final double? amount,
          @JsonKey(name: 'COSTE') final double? cost,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$_StatsCustomerUserSalesDTO;
  const _StatsCustomerUserSalesDTO._() : super._();

  factory _StatsCustomerUserSalesDTO.fromJson(Map<String, dynamic> json) =
      _$_StatsCustomerUserSalesDTO.fromJson;

  @override
  @JsonKey(name: 'ANYO')
  double get year;
  @override
  @JsonKey(name: 'MES')
  double get month;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'UNIDADES')
  double? get units;
  @override
  @JsonKey(name: 'IMPORTE')
  double? get amount;
  @override
  @JsonKey(name: 'COSTE')
  double? get cost;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCustomerUserSalesDTOCopyWith<_$_StatsCustomerUserSalesDTO>
      get copyWith => throw _privateConstructorUsedError;
}
