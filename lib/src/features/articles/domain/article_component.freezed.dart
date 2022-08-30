// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleComponent {
  Article get article => throw _privateConstructorUsedError;
  Article get articleComponent => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleComponentCopyWith<ArticleComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleComponentCopyWith<$Res> {
  factory $ArticleComponentCopyWith(
          ArticleComponent value, $Res Function(ArticleComponent) then) =
      _$ArticleComponentCopyWithImpl<$Res>;
  $Res call(
      {Article article,
      Article articleComponent,
      double quantity,
      DateTime lastUpdated,
      bool deleted});

  $ArticleCopyWith<$Res> get article;
  $ArticleCopyWith<$Res> get articleComponent;
}

/// @nodoc
class _$ArticleComponentCopyWithImpl<$Res>
    implements $ArticleComponentCopyWith<$Res> {
  _$ArticleComponentCopyWithImpl(this._value, this._then);

  final ArticleComponent _value;
  // ignore: unused_field
  final $Res Function(ArticleComponent) _then;

  @override
  $Res call({
    Object? article = freezed,
    Object? articleComponent = freezed,
    Object? quantity = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
      articleComponent: articleComponent == freezed
          ? _value.articleComponent
          : articleComponent // ignore: cast_nullable_to_non_nullable
              as Article,
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

  @override
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value));
    });
  }

  @override
  $ArticleCopyWith<$Res> get articleComponent {
    return $ArticleCopyWith<$Res>(_value.articleComponent, (value) {
      return _then(_value.copyWith(articleComponent: value));
    });
  }
}

/// @nodoc
abstract class _$$_ArticleComponentCopyWith<$Res>
    implements $ArticleComponentCopyWith<$Res> {
  factory _$$_ArticleComponentCopyWith(
          _$_ArticleComponent value, $Res Function(_$_ArticleComponent) then) =
      __$$_ArticleComponentCopyWithImpl<$Res>;
  @override
  $Res call(
      {Article article,
      Article articleComponent,
      double quantity,
      DateTime lastUpdated,
      bool deleted});

  @override
  $ArticleCopyWith<$Res> get article;
  @override
  $ArticleCopyWith<$Res> get articleComponent;
}

/// @nodoc
class __$$_ArticleComponentCopyWithImpl<$Res>
    extends _$ArticleComponentCopyWithImpl<$Res>
    implements _$$_ArticleComponentCopyWith<$Res> {
  __$$_ArticleComponentCopyWithImpl(
      _$_ArticleComponent _value, $Res Function(_$_ArticleComponent) _then)
      : super(_value, (v) => _then(v as _$_ArticleComponent));

  @override
  _$_ArticleComponent get _value => super._value as _$_ArticleComponent;

  @override
  $Res call({
    Object? article = freezed,
    Object? articleComponent = freezed,
    Object? quantity = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticleComponent(
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
      articleComponent: articleComponent == freezed
          ? _value.articleComponent
          : articleComponent // ignore: cast_nullable_to_non_nullable
              as Article,
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

class _$_ArticleComponent extends _ArticleComponent {
  const _$_ArticleComponent(
      {required this.article,
      required this.articleComponent,
      required this.quantity,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final Article article;
  @override
  final Article articleComponent;
  @override
  final double quantity;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ArticleComponent(article: $article, articleComponent: $articleComponent, quantity: $quantity, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleComponent &&
            const DeepCollectionEquality().equals(other.article, article) &&
            const DeepCollectionEquality()
                .equals(other.articleComponent, articleComponent) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(article),
      const DeepCollectionEquality().hash(articleComponent),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleComponentCopyWith<_$_ArticleComponent> get copyWith =>
      __$$_ArticleComponentCopyWithImpl<_$_ArticleComponent>(this, _$identity);
}

abstract class _ArticleComponent extends ArticleComponent {
  const factory _ArticleComponent(
      {required final Article article,
      required final Article articleComponent,
      required final double quantity,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ArticleComponent;
  const _ArticleComponent._() : super._();

  @override
  Article get article;
  @override
  Article get articleComponent;
  @override
  double get quantity;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleComponentCopyWith<_$_ArticleComponent> get copyWith =>
      throw _privateConstructorUsedError;
}
