// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_rate_price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleRatePriceDTO _$ArticleRatePriceDTOFromJson(Map<String, dynamic> json) {
  return _ArticleRatePriceDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticleRatePriceDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_ID')
  String get rateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get rateDescription => throw _privateConstructorUsedError;
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
  $ArticleRatePriceDTOCopyWith<ArticleRatePriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleRatePriceDTOCopyWith<$Res> {
  factory $ArticleRatePriceDTOCopyWith(
          ArticleRatePriceDTO value, $Res Function(ArticleRatePriceDTO) then) =
      _$ArticleRatePriceDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'TARIFA_ID') String rateId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') String? rateDescription,
      @JsonKey(name: 'CANTIDAD_DESDE') double quantityFrom,
      @JsonKey(name: 'PRECIO') double price,
      @JsonKey(name: 'TIPO_PRECIO') double? priceType,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticleRatePriceDTOCopyWithImpl<$Res>
    implements $ArticleRatePriceDTOCopyWith<$Res> {
  _$ArticleRatePriceDTOCopyWithImpl(this._value, this._then);

  final ArticleRatePriceDTO _value;
  // ignore: unused_field
  final $Res Function(ArticleRatePriceDTO) _then;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? rateId = freezed,
    Object? rateDescription = freezed,
    Object? quantityFrom = freezed,
    Object? price = freezed,
    Object? priceType = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      rateId: rateId == freezed
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String,
      rateDescription: rateDescription == freezed
          ? _value.rateDescription
          : rateDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ArticleRatePriceDTOCopyWith<$Res>
    implements $ArticleRatePriceDTOCopyWith<$Res> {
  factory _$$_ArticleRatePriceDTOCopyWith(_$_ArticleRatePriceDTO value,
          $Res Function(_$_ArticleRatePriceDTO) then) =
      __$$_ArticleRatePriceDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'TARIFA_ID') String rateId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') String? rateDescription,
      @JsonKey(name: 'CANTIDAD_DESDE') double quantityFrom,
      @JsonKey(name: 'PRECIO') double price,
      @JsonKey(name: 'TIPO_PRECIO') double? priceType,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticleRatePriceDTOCopyWithImpl<$Res>
    extends _$ArticleRatePriceDTOCopyWithImpl<$Res>
    implements _$$_ArticleRatePriceDTOCopyWith<$Res> {
  __$$_ArticleRatePriceDTOCopyWithImpl(_$_ArticleRatePriceDTO _value,
      $Res Function(_$_ArticleRatePriceDTO) _then)
      : super(_value, (v) => _then(v as _$_ArticleRatePriceDTO));

  @override
  _$_ArticleRatePriceDTO get _value => super._value as _$_ArticleRatePriceDTO;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? rateId = freezed,
    Object? rateDescription = freezed,
    Object? quantityFrom = freezed,
    Object? price = freezed,
    Object? priceType = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticleRatePriceDTO(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      rateId: rateId == freezed
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String,
      rateDescription: rateDescription == freezed
          ? _value.rateDescription
          : rateDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_ArticleRatePriceDTO extends _ArticleRatePriceDTO {
  const _$_ArticleRatePriceDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'TARIFA_ID') required this.rateId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') this.rateDescription,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.quantityFrom,
      @JsonKey(name: 'PRECIO') required this.price,
      @JsonKey(name: 'TIPO_PRECIO') this.priceType,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ArticleRatePriceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleRatePriceDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  final String rateId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  final String? rateDescription;
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
    return 'ArticleRatePriceDTO(articleId: $articleId, rateId: $rateId, rateDescription: $rateDescription, quantityFrom: $quantityFrom, price: $price, priceType: $priceType, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleRatePriceDTO &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.rateId, rateId) &&
            const DeepCollectionEquality()
                .equals(other.rateDescription, rateDescription) &&
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
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(rateId),
      const DeepCollectionEquality().hash(rateDescription),
      const DeepCollectionEquality().hash(quantityFrom),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(priceType),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleRatePriceDTOCopyWith<_$_ArticleRatePriceDTO> get copyWith =>
      __$$_ArticleRatePriceDTOCopyWithImpl<_$_ArticleRatePriceDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleRatePriceDTOToJson(
      this,
    );
  }
}

abstract class _ArticleRatePriceDTO extends ArticleRatePriceDTO {
  const factory _ArticleRatePriceDTO(
      {@JsonKey(name: 'ARTICULO_ID') required final String articleId,
      @JsonKey(name: 'TARIFA_ID') required final String rateId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') final String? rateDescription,
      @JsonKey(name: 'CANTIDAD_DESDE') required final double quantityFrom,
      @JsonKey(name: 'PRECIO') required final double price,
      @JsonKey(name: 'TIPO_PRECIO') final double? priceType,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_ArticleRatePriceDTO;
  const _ArticleRatePriceDTO._() : super._();

  factory _ArticleRatePriceDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticleRatePriceDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  String get rateId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get rateDescription;
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
  _$$_ArticleRatePriceDTOCopyWith<_$_ArticleRatePriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
