// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_spare_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleSpareDTO _$ArticleSpareDTOFromJson(Map<String, dynamic> json) {
  return _ArticleSpareDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticleSpareDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'RECAMBIO_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD')
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleSpareDTOCopyWith<ArticleSpareDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSpareDTOCopyWith<$Res> {
  factory $ArticleSpareDTOCopyWith(
          ArticleSpareDTO value, $Res Function(ArticleSpareDTO) then) =
      _$ArticleSpareDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'RECAMBIO_ID') String id,
      @JsonKey(name: 'DESCRIPCION') String description,
      @JsonKey(name: 'CANTIDAD') double quantity,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticleSpareDTOCopyWithImpl<$Res>
    implements $ArticleSpareDTOCopyWith<$Res> {
  _$ArticleSpareDTOCopyWithImpl(this._value, this._then);

  final ArticleSpareDTO _value;
  // ignore: unused_field
  final $Res Function(ArticleSpareDTO) _then;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ArticleSpareDTOCopyWith<$Res>
    implements $ArticleSpareDTOCopyWith<$Res> {
  factory _$$_ArticleSpareDTOCopyWith(
          _$_ArticleSpareDTO value, $Res Function(_$_ArticleSpareDTO) then) =
      __$$_ArticleSpareDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'RECAMBIO_ID') String id,
      @JsonKey(name: 'DESCRIPCION') String description,
      @JsonKey(name: 'CANTIDAD') double quantity,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticleSpareDTOCopyWithImpl<$Res>
    extends _$ArticleSpareDTOCopyWithImpl<$Res>
    implements _$$_ArticleSpareDTOCopyWith<$Res> {
  __$$_ArticleSpareDTOCopyWithImpl(
      _$_ArticleSpareDTO _value, $Res Function(_$_ArticleSpareDTO) _then)
      : super(_value, (v) => _then(v as _$_ArticleSpareDTO));

  @override
  _$_ArticleSpareDTO get _value => super._value as _$_ArticleSpareDTO;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticleSpareDTO(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
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
class _$_ArticleSpareDTO extends _ArticleSpareDTO {
  const _$_ArticleSpareDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'RECAMBIO_ID') required this.id,
      @JsonKey(name: 'DESCRIPCION') required this.description,
      @JsonKey(name: 'CANTIDAD') required this.quantity,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ArticleSpareDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleSpareDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'RECAMBIO_ID')
  final String id;
  @override
  @JsonKey(name: 'DESCRIPCION')
  final String description;
  @override
  @JsonKey(name: 'CANTIDAD')
  final double quantity;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ArticleSpareDTO(articleId: $articleId, id: $id, description: $description, quantity: $quantity, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleSpareDTO &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleSpareDTOCopyWith<_$_ArticleSpareDTO> get copyWith =>
      __$$_ArticleSpareDTOCopyWithImpl<_$_ArticleSpareDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleSpareDTOToJson(
      this,
    );
  }
}

abstract class _ArticleSpareDTO extends ArticleSpareDTO {
  const factory _ArticleSpareDTO(
      {@JsonKey(name: 'ARTICULO_ID') required final String articleId,
      @JsonKey(name: 'RECAMBIO_ID') required final String id,
      @JsonKey(name: 'DESCRIPCION') required final String description,
      @JsonKey(name: 'CANTIDAD') required final double quantity,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_ArticleSpareDTO;
  const _ArticleSpareDTO._() : super._();

  factory _ArticleSpareDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticleSpareDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'RECAMBIO_ID')
  String get id;
  @override
  @JsonKey(name: 'DESCRIPCION')
  String get description;
  @override
  @JsonKey(name: 'CANTIDAD')
  double get quantity;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleSpareDTOCopyWith<_$_ArticleSpareDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
