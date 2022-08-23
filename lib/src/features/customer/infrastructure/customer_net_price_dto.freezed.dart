// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_net_price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerNetPriceDTO _$CustomerNetPriceDTOFromJson(Map<String, dynamic> json) {
  return _CustomerNetPriceDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerNetPriceDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_DESDE')
  double get quantityFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  double? get priceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerNetPriceDTOCopyWith<CustomerNetPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerNetPriceDTOCopyWith<$Res> {
  factory $CustomerNetPriceDTOCopyWith(
          CustomerNetPriceDTO value, $Res Function(CustomerNetPriceDTO) then) =
      _$CustomerNetPriceDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'CANTIDAD_DESDE') double quantityFrom,
      @JsonKey(name: 'PRECIO') double price,
      @JsonKey(name: 'TIPO_PRECIO') double? priceType,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$CustomerNetPriceDTOCopyWithImpl<$Res>
    implements $CustomerNetPriceDTOCopyWith<$Res> {
  _$CustomerNetPriceDTOCopyWithImpl(this._value, this._then);

  final CustomerNetPriceDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerNetPriceDTO) _then;

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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerNetPriceDTOCopyWith<$Res>
    implements $CustomerNetPriceDTOCopyWith<$Res> {
  factory _$$_CustomerNetPriceDTOCopyWith(_$_CustomerNetPriceDTO value,
          $Res Function(_$_CustomerNetPriceDTO) then) =
      __$$_CustomerNetPriceDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'CANTIDAD_DESDE') double quantityFrom,
      @JsonKey(name: 'PRECIO') double price,
      @JsonKey(name: 'TIPO_PRECIO') double? priceType,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_CustomerNetPriceDTOCopyWithImpl<$Res>
    extends _$CustomerNetPriceDTOCopyWithImpl<$Res>
    implements _$$_CustomerNetPriceDTOCopyWith<$Res> {
  __$$_CustomerNetPriceDTOCopyWithImpl(_$_CustomerNetPriceDTO _value,
      $Res Function(_$_CustomerNetPriceDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerNetPriceDTO));

  @override
  _$_CustomerNetPriceDTO get _value => super._value as _$_CustomerNetPriceDTO;

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
    return _then(_$_CustomerNetPriceDTO(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerNetPriceDTO extends _CustomerNetPriceDTO {
  const _$_CustomerNetPriceDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.quantityFrom,
      @JsonKey(name: 'PRECIO') required this.price,
      @JsonKey(name: 'TIPO_PRECIO') this.priceType,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_CustomerNetPriceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerNetPriceDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  final double quantityFrom;
  @override
  @JsonKey(name: 'PRECIO')
  final double price;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  final double? priceType;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'CustomerNetPriceDTO(customerId: $customerId, articleId: $articleId, quantityFrom: $quantityFrom, price: $price, priceType: $priceType, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerNetPriceDTO &&
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

  @JsonKey(ignore: true)
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
  _$$_CustomerNetPriceDTOCopyWith<_$_CustomerNetPriceDTO> get copyWith =>
      __$$_CustomerNetPriceDTOCopyWithImpl<_$_CustomerNetPriceDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerNetPriceDTOToJson(
      this,
    );
  }
}

abstract class _CustomerNetPriceDTO extends CustomerNetPriceDTO {
  const factory _CustomerNetPriceDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String customerId,
      @JsonKey(name: 'ARTICULO_ID') required final String articleId,
      @JsonKey(name: 'CANTIDAD_DESDE') required final double quantityFrom,
      @JsonKey(name: 'PRECIO') required final double price,
      @JsonKey(name: 'TIPO_PRECIO') final double? priceType,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_CustomerNetPriceDTO;
  const _CustomerNetPriceDTO._() : super._();

  factory _CustomerNetPriceDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerNetPriceDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  double get quantityFrom;
  @override
  @JsonKey(name: 'PRECIO')
  double get price;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  double? get priceType;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerNetPriceDTOCopyWith<_$_CustomerNetPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
