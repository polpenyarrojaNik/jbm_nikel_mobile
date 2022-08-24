// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_rate_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleRatePrice {
  String get articleId => throw _privateConstructorUsedError;
  String get rateId => throw _privateConstructorUsedError;
  String? get rateDescription => throw _privateConstructorUsedError;
  double get quantityFrom => throw _privateConstructorUsedError;
  Money get price => throw _privateConstructorUsedError;
  double? get priceType => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleRatePriceCopyWith<ArticleRatePrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleRatePriceCopyWith<$Res> {
  factory $ArticleRatePriceCopyWith(
          ArticleRatePrice value, $Res Function(ArticleRatePrice) then) =
      _$ArticleRatePriceCopyWithImpl<$Res>;
  $Res call(
      {String articleId,
      String rateId,
      String? rateDescription,
      double quantityFrom,
      Money price,
      double? priceType,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ArticleRatePriceCopyWithImpl<$Res>
    implements $ArticleRatePriceCopyWith<$Res> {
  _$ArticleRatePriceCopyWithImpl(this._value, this._then);

  final ArticleRatePrice _value;
  // ignore: unused_field
  final $Res Function(ArticleRatePrice) _then;

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
              as Money,
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
abstract class _$$_ArticleRatePriceCopyWith<$Res>
    implements $ArticleRatePriceCopyWith<$Res> {
  factory _$$_ArticleRatePriceCopyWith(
          _$_ArticleRatePrice value, $Res Function(_$_ArticleRatePrice) then) =
      __$$_ArticleRatePriceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String articleId,
      String rateId,
      String? rateDescription,
      double quantityFrom,
      Money price,
      double? priceType,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_ArticleRatePriceCopyWithImpl<$Res>
    extends _$ArticleRatePriceCopyWithImpl<$Res>
    implements _$$_ArticleRatePriceCopyWith<$Res> {
  __$$_ArticleRatePriceCopyWithImpl(
      _$_ArticleRatePrice _value, $Res Function(_$_ArticleRatePrice) _then)
      : super(_value, (v) => _then(v as _$_ArticleRatePrice));

  @override
  _$_ArticleRatePrice get _value => super._value as _$_ArticleRatePrice;

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
    return _then(_$_ArticleRatePrice(
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
              as Money,
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

class _$_ArticleRatePrice extends _ArticleRatePrice {
  const _$_ArticleRatePrice(
      {required this.articleId,
      required this.rateId,
      this.rateDescription,
      required this.quantityFrom,
      required this.price,
      this.priceType,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String articleId;
  @override
  final String rateId;
  @override
  final String? rateDescription;
  @override
  final double quantityFrom;
  @override
  final Money price;
  @override
  final double? priceType;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ArticleRatePrice(articleId: $articleId, rateId: $rateId, rateDescription: $rateDescription, quantityFrom: $quantityFrom, price: $price, priceType: $priceType, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleRatePrice &&
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
  _$$_ArticleRatePriceCopyWith<_$_ArticleRatePrice> get copyWith =>
      __$$_ArticleRatePriceCopyWithImpl<_$_ArticleRatePrice>(this, _$identity);
}

abstract class _ArticleRatePrice extends ArticleRatePrice {
  const factory _ArticleRatePrice(
      {required final String articleId,
      required final String rateId,
      final String? rateDescription,
      required final double quantityFrom,
      required final Money price,
      final double? priceType,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ArticleRatePrice;
  const _ArticleRatePrice._() : super._();

  @override
  String get articleId;
  @override
  String get rateId;
  @override
  String? get rateDescription;
  @override
  double get quantityFrom;
  @override
  Money get price;
  @override
  double? get priceType;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleRatePriceCopyWith<_$_ArticleRatePrice> get copyWith =>
      throw _privateConstructorUsedError;
}
