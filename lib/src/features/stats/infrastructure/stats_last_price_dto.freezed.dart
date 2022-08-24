// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats_last_price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatsLastPriceDTO _$StatsLastPriceDTOFromJson(Map<String, dynamic> json) {
  return _StatsLastPriceDTO.fromJson(json);
}

/// @nodoc
mixin _$StatsLastPriceDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO_DIVISA')
  double get divisaPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  double get priceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO1')
  double get discount1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO2')
  double get discount2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO3')
  double get discount3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsLastPriceDTOCopyWith<StatsLastPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsLastPriceDTOCopyWith<$Res> {
  factory $StatsLastPriceDTOCopyWith(
          StatsLastPriceDTO value, $Res Function(StatsLastPriceDTO) then) =
      _$StatsLastPriceDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'FECHA') DateTime date,
      @JsonKey(name: 'PRECIO_DIVISA') double divisaPrice,
      @JsonKey(name: 'TIPO_PRECIO') double priceType,
      @JsonKey(name: 'DESCUENTO1') double discount1,
      @JsonKey(name: 'DESCUENTO2') double discount2,
      @JsonKey(name: 'DESCUENTO3') double discount3,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$StatsLastPriceDTOCopyWithImpl<$Res>
    implements $StatsLastPriceDTOCopyWith<$Res> {
  _$StatsLastPriceDTOCopyWithImpl(this._value, this._then);

  final StatsLastPriceDTO _value;
  // ignore: unused_field
  final $Res Function(StatsLastPriceDTO) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? articleId = freezed,
    Object? date = freezed,
    Object? divisaPrice = freezed,
    Object? priceType = freezed,
    Object? discount1 = freezed,
    Object? discount2 = freezed,
    Object? discount3 = freezed,
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      divisaPrice: divisaPrice == freezed
          ? _value.divisaPrice
          : divisaPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as double,
      discount1: discount1 == freezed
          ? _value.discount1
          : discount1 // ignore: cast_nullable_to_non_nullable
              as double,
      discount2: discount2 == freezed
          ? _value.discount2
          : discount2 // ignore: cast_nullable_to_non_nullable
              as double,
      discount3: discount3 == freezed
          ? _value.discount3
          : discount3 // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_StatsLastPriceDTOCopyWith<$Res>
    implements $StatsLastPriceDTOCopyWith<$Res> {
  factory _$$_StatsLastPriceDTOCopyWith(_$_StatsLastPriceDTO value,
          $Res Function(_$_StatsLastPriceDTO) then) =
      __$$_StatsLastPriceDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'FECHA') DateTime date,
      @JsonKey(name: 'PRECIO_DIVISA') double divisaPrice,
      @JsonKey(name: 'TIPO_PRECIO') double priceType,
      @JsonKey(name: 'DESCUENTO1') double discount1,
      @JsonKey(name: 'DESCUENTO2') double discount2,
      @JsonKey(name: 'DESCUENTO3') double discount3,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_StatsLastPriceDTOCopyWithImpl<$Res>
    extends _$StatsLastPriceDTOCopyWithImpl<$Res>
    implements _$$_StatsLastPriceDTOCopyWith<$Res> {
  __$$_StatsLastPriceDTOCopyWithImpl(
      _$_StatsLastPriceDTO _value, $Res Function(_$_StatsLastPriceDTO) _then)
      : super(_value, (v) => _then(v as _$_StatsLastPriceDTO));

  @override
  _$_StatsLastPriceDTO get _value => super._value as _$_StatsLastPriceDTO;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? articleId = freezed,
    Object? date = freezed,
    Object? divisaPrice = freezed,
    Object? priceType = freezed,
    Object? discount1 = freezed,
    Object? discount2 = freezed,
    Object? discount3 = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_StatsLastPriceDTO(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      divisaPrice: divisaPrice == freezed
          ? _value.divisaPrice
          : divisaPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as double,
      discount1: discount1 == freezed
          ? _value.discount1
          : discount1 // ignore: cast_nullable_to_non_nullable
              as double,
      discount2: discount2 == freezed
          ? _value.discount2
          : discount2 // ignore: cast_nullable_to_non_nullable
              as double,
      discount3: discount3 == freezed
          ? _value.discount3
          : discount3 // ignore: cast_nullable_to_non_nullable
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
class _$_StatsLastPriceDTO extends _StatsLastPriceDTO {
  const _$_StatsLastPriceDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'FECHA') required this.date,
      @JsonKey(name: 'PRECIO_DIVISA') required this.divisaPrice,
      @JsonKey(name: 'TIPO_PRECIO') required this.priceType,
      @JsonKey(name: 'DESCUENTO1') required this.discount1,
      @JsonKey(name: 'DESCUENTO2') required this.discount2,
      @JsonKey(name: 'DESCUENTO3') required this.discount3,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_StatsLastPriceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_StatsLastPriceDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'FECHA')
  final DateTime date;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  final double divisaPrice;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  final double priceType;
  @override
  @JsonKey(name: 'DESCUENTO1')
  final double discount1;
  @override
  @JsonKey(name: 'DESCUENTO2')
  final double discount2;
  @override
  @JsonKey(name: 'DESCUENTO3')
  final double discount3;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'StatsLastPriceDTO(customerId: $customerId, articleId: $articleId, date: $date, divisaPrice: $divisaPrice, priceType: $priceType, discount1: $discount1, discount2: $discount2, discount3: $discount3, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatsLastPriceDTO &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.divisaPrice, divisaPrice) &&
            const DeepCollectionEquality().equals(other.priceType, priceType) &&
            const DeepCollectionEquality().equals(other.discount1, discount1) &&
            const DeepCollectionEquality().equals(other.discount2, discount2) &&
            const DeepCollectionEquality().equals(other.discount3, discount3) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(divisaPrice),
      const DeepCollectionEquality().hash(priceType),
      const DeepCollectionEquality().hash(discount1),
      const DeepCollectionEquality().hash(discount2),
      const DeepCollectionEquality().hash(discount3),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_StatsLastPriceDTOCopyWith<_$_StatsLastPriceDTO> get copyWith =>
      __$$_StatsLastPriceDTOCopyWithImpl<_$_StatsLastPriceDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsLastPriceDTOToJson(
      this,
    );
  }
}

abstract class _StatsLastPriceDTO extends StatsLastPriceDTO {
  const factory _StatsLastPriceDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String customerId,
      @JsonKey(name: 'ARTICULO_ID') required final String articleId,
      @JsonKey(name: 'FECHA') required final DateTime date,
      @JsonKey(name: 'PRECIO_DIVISA') required final double divisaPrice,
      @JsonKey(name: 'TIPO_PRECIO') required final double priceType,
      @JsonKey(name: 'DESCUENTO1') required final double discount1,
      @JsonKey(name: 'DESCUENTO2') required final double discount2,
      @JsonKey(name: 'DESCUENTO3') required final double discount3,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_StatsLastPriceDTO;
  const _StatsLastPriceDTO._() : super._();

  factory _StatsLastPriceDTO.fromJson(Map<String, dynamic> json) =
      _$_StatsLastPriceDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'FECHA')
  DateTime get date;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  double get divisaPrice;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  double get priceType;
  @override
  @JsonKey(name: 'DESCUENTO1')
  double get discount1;
  @override
  @JsonKey(name: 'DESCUENTO2')
  double get discount2;
  @override
  @JsonKey(name: 'DESCUENTO3')
  double get discount3;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_StatsLastPriceDTOCopyWith<_$_StatsLastPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
