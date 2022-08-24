// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_spare.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleSpare {
  String get articleId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleSpareCopyWith<ArticleSpare> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSpareCopyWith<$Res> {
  factory $ArticleSpareCopyWith(
          ArticleSpare value, $Res Function(ArticleSpare) then) =
      _$ArticleSpareCopyWithImpl<$Res>;
  $Res call(
      {String articleId,
      String id,
      String description,
      double quantity,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ArticleSpareCopyWithImpl<$Res> implements $ArticleSpareCopyWith<$Res> {
  _$ArticleSpareCopyWithImpl(this._value, this._then);

  final ArticleSpare _value;
  // ignore: unused_field
  final $Res Function(ArticleSpare) _then;

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
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ArticleSpareCopyWith<$Res>
    implements $ArticleSpareCopyWith<$Res> {
  factory _$$_ArticleSpareCopyWith(
          _$_ArticleSpare value, $Res Function(_$_ArticleSpare) then) =
      __$$_ArticleSpareCopyWithImpl<$Res>;
  @override
  $Res call(
      {String articleId,
      String id,
      String description,
      double quantity,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_ArticleSpareCopyWithImpl<$Res>
    extends _$ArticleSpareCopyWithImpl<$Res>
    implements _$$_ArticleSpareCopyWith<$Res> {
  __$$_ArticleSpareCopyWithImpl(
      _$_ArticleSpare _value, $Res Function(_$_ArticleSpare) _then)
      : super(_value, (v) => _then(v as _$_ArticleSpare));

  @override
  _$_ArticleSpare get _value => super._value as _$_ArticleSpare;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticleSpare(
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
              as bool,
    ));
  }
}

/// @nodoc

class _$_ArticleSpare extends _ArticleSpare {
  const _$_ArticleSpare(
      {required this.articleId,
      required this.id,
      required this.description,
      required this.quantity,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String articleId;
  @override
  final String id;
  @override
  final String description;
  @override
  final double quantity;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ArticleSpare(articleId: $articleId, id: $id, description: $description, quantity: $quantity, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleSpare &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

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
  _$$_ArticleSpareCopyWith<_$_ArticleSpare> get copyWith =>
      __$$_ArticleSpareCopyWithImpl<_$_ArticleSpare>(this, _$identity);
}

abstract class _ArticleSpare extends ArticleSpare {
  const factory _ArticleSpare(
      {required final String articleId,
      required final String id,
      required final String description,
      required final double quantity,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ArticleSpare;
  const _ArticleSpare._() : super._();

  @override
  String get articleId;
  @override
  String get id;
  @override
  String get description;
  @override
  double get quantity;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleSpareCopyWith<_$_ArticleSpare> get copyWith =>
      throw _privateConstructorUsedError;
}
