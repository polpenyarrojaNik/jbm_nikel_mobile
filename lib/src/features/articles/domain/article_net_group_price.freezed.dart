// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_net_group_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleNetGroupPrice {
  String get articleId => throw _privateConstructorUsedError;
  String get netGroupId => throw _privateConstructorUsedError;
  String? get netGroupDescription => throw _privateConstructorUsedError;
  double get quantityFrom => throw _privateConstructorUsedError;
  Money get price => throw _privateConstructorUsedError;
  double? get priceType => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleNetGroupPriceCopyWith<ArticleNetGroupPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleNetGroupPriceCopyWith<$Res> {
  factory $ArticleNetGroupPriceCopyWith(ArticleNetGroupPrice value,
          $Res Function(ArticleNetGroupPrice) then) =
      _$ArticleNetGroupPriceCopyWithImpl<$Res>;
  $Res call(
      {String articleId,
      String netGroupId,
      String? netGroupDescription,
      double quantityFrom,
      Money price,
      double? priceType,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ArticleNetGroupPriceCopyWithImpl<$Res>
    implements $ArticleNetGroupPriceCopyWith<$Res> {
  _$ArticleNetGroupPriceCopyWithImpl(this._value, this._then);

  final ArticleNetGroupPrice _value;
  // ignore: unused_field
  final $Res Function(ArticleNetGroupPrice) _then;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? netGroupId = freezed,
    Object? netGroupDescription = freezed,
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
      netGroupId: netGroupId == freezed
          ? _value.netGroupId
          : netGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupDescription: netGroupDescription == freezed
          ? _value.netGroupDescription
          : netGroupDescription // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ArticleNetGroupPriceCopyWith<$Res>
    implements $ArticleNetGroupPriceCopyWith<$Res> {
  factory _$$_ArticleNetGroupPriceCopyWith(_$_ArticleNetGroupPrice value,
          $Res Function(_$_ArticleNetGroupPrice) then) =
      __$$_ArticleNetGroupPriceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String articleId,
      String netGroupId,
      String? netGroupDescription,
      double quantityFrom,
      Money price,
      double? priceType,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_ArticleNetGroupPriceCopyWithImpl<$Res>
    extends _$ArticleNetGroupPriceCopyWithImpl<$Res>
    implements _$$_ArticleNetGroupPriceCopyWith<$Res> {
  __$$_ArticleNetGroupPriceCopyWithImpl(_$_ArticleNetGroupPrice _value,
      $Res Function(_$_ArticleNetGroupPrice) _then)
      : super(_value, (v) => _then(v as _$_ArticleNetGroupPrice));

  @override
  _$_ArticleNetGroupPrice get _value => super._value as _$_ArticleNetGroupPrice;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? netGroupId = freezed,
    Object? netGroupDescription = freezed,
    Object? quantityFrom = freezed,
    Object? price = freezed,
    Object? priceType = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticleNetGroupPrice(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupId: netGroupId == freezed
          ? _value.netGroupId
          : netGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupDescription: netGroupDescription == freezed
          ? _value.netGroupDescription
          : netGroupDescription // ignore: cast_nullable_to_non_nullable
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

class _$_ArticleNetGroupPrice extends _ArticleNetGroupPrice {
  const _$_ArticleNetGroupPrice(
      {required this.articleId,
      required this.netGroupId,
      this.netGroupDescription,
      required this.quantityFrom,
      required this.price,
      this.priceType,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String articleId;
  @override
  final String netGroupId;
  @override
  final String? netGroupDescription;
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
    return 'ArticleNetGroupPrice(articleId: $articleId, netGroupId: $netGroupId, netGroupDescription: $netGroupDescription, quantityFrom: $quantityFrom, price: $price, priceType: $priceType, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleNetGroupPrice &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality()
                .equals(other.netGroupId, netGroupId) &&
            const DeepCollectionEquality()
                .equals(other.netGroupDescription, netGroupDescription) &&
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
      const DeepCollectionEquality().hash(netGroupId),
      const DeepCollectionEquality().hash(netGroupDescription),
      const DeepCollectionEquality().hash(quantityFrom),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(priceType),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleNetGroupPriceCopyWith<_$_ArticleNetGroupPrice> get copyWith =>
      __$$_ArticleNetGroupPriceCopyWithImpl<_$_ArticleNetGroupPrice>(
          this, _$identity);
}

abstract class _ArticleNetGroupPrice extends ArticleNetGroupPrice {
  const factory _ArticleNetGroupPrice(
      {required final String articleId,
      required final String netGroupId,
      final String? netGroupDescription,
      required final double quantityFrom,
      required final Money price,
      final double? priceType,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ArticleNetGroupPrice;
  const _ArticleNetGroupPrice._() : super._();

  @override
  String get articleId;
  @override
  String get netGroupId;
  @override
  String? get netGroupDescription;
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
  _$$_ArticleNetGroupPriceCopyWith<_$_ArticleNetGroupPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
