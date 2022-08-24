// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_net_group_price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleNetGroupPriceDTO _$ArticleNetGroupPriceDTOFromJson(
    Map<String, dynamic> json) {
  return _ArticleNetGroupPriceDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticleNetGroupPriceDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'GRUPO_NETO_ID')
  String get netGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
  String? get netGroupDescription => throw _privateConstructorUsedError;
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
  $ArticleNetGroupPriceDTOCopyWith<ArticleNetGroupPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleNetGroupPriceDTOCopyWith<$Res> {
  factory $ArticleNetGroupPriceDTOCopyWith(ArticleNetGroupPriceDTO value,
          $Res Function(ArticleNetGroupPriceDTO) then) =
      _$ArticleNetGroupPriceDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'GRUPO_NETO_ID') String netGroupId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String? netGroupDescription,
      @JsonKey(name: 'CANTIDAD_DESDE') double quantityFrom,
      @JsonKey(name: 'PRECIO') double price,
      @JsonKey(name: 'TIPO_PRECIO') double? priceType,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticleNetGroupPriceDTOCopyWithImpl<$Res>
    implements $ArticleNetGroupPriceDTOCopyWith<$Res> {
  _$ArticleNetGroupPriceDTOCopyWithImpl(this._value, this._then);

  final ArticleNetGroupPriceDTO _value;
  // ignore: unused_field
  final $Res Function(ArticleNetGroupPriceDTO) _then;

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
abstract class _$$_ArticleNetGroupPriceDTOCopyWith<$Res>
    implements $ArticleNetGroupPriceDTOCopyWith<$Res> {
  factory _$$_ArticleNetGroupPriceDTOCopyWith(_$_ArticleNetGroupPriceDTO value,
          $Res Function(_$_ArticleNetGroupPriceDTO) then) =
      __$$_ArticleNetGroupPriceDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'GRUPO_NETO_ID') String netGroupId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String? netGroupDescription,
      @JsonKey(name: 'CANTIDAD_DESDE') double quantityFrom,
      @JsonKey(name: 'PRECIO') double price,
      @JsonKey(name: 'TIPO_PRECIO') double? priceType,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticleNetGroupPriceDTOCopyWithImpl<$Res>
    extends _$ArticleNetGroupPriceDTOCopyWithImpl<$Res>
    implements _$$_ArticleNetGroupPriceDTOCopyWith<$Res> {
  __$$_ArticleNetGroupPriceDTOCopyWithImpl(_$_ArticleNetGroupPriceDTO _value,
      $Res Function(_$_ArticleNetGroupPriceDTO) _then)
      : super(_value, (v) => _then(v as _$_ArticleNetGroupPriceDTO));

  @override
  _$_ArticleNetGroupPriceDTO get _value =>
      super._value as _$_ArticleNetGroupPriceDTO;

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
    return _then(_$_ArticleNetGroupPriceDTO(
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
class _$_ArticleNetGroupPriceDTO extends _ArticleNetGroupPriceDTO {
  const _$_ArticleNetGroupPriceDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'GRUPO_NETO_ID') required this.netGroupId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') this.netGroupDescription,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.quantityFrom,
      @JsonKey(name: 'PRECIO') required this.price,
      @JsonKey(name: 'TIPO_PRECIO') this.priceType,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ArticleNetGroupPriceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleNetGroupPriceDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'GRUPO_NETO_ID')
  final String netGroupId;
  @override
  @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
  final String? netGroupDescription;
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
    return 'ArticleNetGroupPriceDTO(articleId: $articleId, netGroupId: $netGroupId, netGroupDescription: $netGroupDescription, quantityFrom: $quantityFrom, price: $price, priceType: $priceType, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleNetGroupPriceDTO &&
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

  @JsonKey(ignore: true)
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
  _$$_ArticleNetGroupPriceDTOCopyWith<_$_ArticleNetGroupPriceDTO>
      get copyWith =>
          __$$_ArticleNetGroupPriceDTOCopyWithImpl<_$_ArticleNetGroupPriceDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleNetGroupPriceDTOToJson(
      this,
    );
  }
}

abstract class _ArticleNetGroupPriceDTO extends ArticleNetGroupPriceDTO {
  const factory _ArticleNetGroupPriceDTO(
      {@JsonKey(name: 'ARTICULO_ID')
          required final String articleId,
      @JsonKey(name: 'GRUPO_NETO_ID')
          required final String netGroupId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
          final String? netGroupDescription,
      @JsonKey(name: 'CANTIDAD_DESDE')
          required final double quantityFrom,
      @JsonKey(name: 'PRECIO')
          required final double price,
      @JsonKey(name: 'TIPO_PRECIO')
          final double? priceType,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          final String deleted}) = _$_ArticleNetGroupPriceDTO;
  const _ArticleNetGroupPriceDTO._() : super._();

  factory _ArticleNetGroupPriceDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticleNetGroupPriceDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'GRUPO_NETO_ID')
  String get netGroupId;
  @override
  @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
  String? get netGroupDescription;
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
  _$$_ArticleNetGroupPriceDTOCopyWith<_$_ArticleNetGroupPriceDTO>
      get copyWith => throw _privateConstructorUsedError;
}
