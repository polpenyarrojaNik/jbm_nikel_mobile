// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopArticle {
  String get articleId => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopArticleCopyWith<TopArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopArticleCopyWith<$Res> {
  factory $TopArticleCopyWith(
          TopArticle value, $Res Function(TopArticle) then) =
      _$TopArticleCopyWithImpl<$Res>;
  $Res call({String articleId, DateTime lastUpdated, bool deleted});
}

/// @nodoc
class _$TopArticleCopyWithImpl<$Res> implements $TopArticleCopyWith<$Res> {
  _$TopArticleCopyWithImpl(this._value, this._then);

  final TopArticle _value;
  // ignore: unused_field
  final $Res Function(TopArticle) _then;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_TopArticleCopyWith<$Res>
    implements $TopArticleCopyWith<$Res> {
  factory _$$_TopArticleCopyWith(
          _$_TopArticle value, $Res Function(_$_TopArticle) then) =
      __$$_TopArticleCopyWithImpl<$Res>;
  @override
  $Res call({String articleId, DateTime lastUpdated, bool deleted});
}

/// @nodoc
class __$$_TopArticleCopyWithImpl<$Res> extends _$TopArticleCopyWithImpl<$Res>
    implements _$$_TopArticleCopyWith<$Res> {
  __$$_TopArticleCopyWithImpl(
      _$_TopArticle _value, $Res Function(_$_TopArticle) _then)
      : super(_value, (v) => _then(v as _$_TopArticle));

  @override
  _$_TopArticle get _value => super._value as _$_TopArticle;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_TopArticle(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_TopArticle extends _TopArticle {
  const _$_TopArticle(
      {required this.articleId,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String articleId;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'TopArticle(articleId: $articleId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopArticle &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_TopArticleCopyWith<_$_TopArticle> get copyWith =>
      __$$_TopArticleCopyWithImpl<_$_TopArticle>(this, _$identity);
}

abstract class _TopArticle extends TopArticle {
  const factory _TopArticle(
      {required final String articleId,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_TopArticle;
  const _TopArticle._() : super._();

  @override
  String get articleId;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_TopArticleCopyWith<_$_TopArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
