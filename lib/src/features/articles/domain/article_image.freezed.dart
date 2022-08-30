// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleImage {
  String get articleId => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleImageCopyWith<ArticleImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleImageCopyWith<$Res> {
  factory $ArticleImageCopyWith(
          ArticleImage value, $Res Function(ArticleImage) then) =
      _$ArticleImageCopyWithImpl<$Res>;
  $Res call({String articleId, String fileName, String? filePath});
}

/// @nodoc
class _$ArticleImageCopyWithImpl<$Res> implements $ArticleImageCopyWith<$Res> {
  _$ArticleImageCopyWithImpl(this._value, this._then);

  final ArticleImage _value;
  // ignore: unused_field
  final $Res Function(ArticleImage) _then;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_value.copyWith(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ArticleImageCopyWith<$Res>
    implements $ArticleImageCopyWith<$Res> {
  factory _$$_ArticleImageCopyWith(
          _$_ArticleImage value, $Res Function(_$_ArticleImage) then) =
      __$$_ArticleImageCopyWithImpl<$Res>;
  @override
  $Res call({String articleId, String fileName, String? filePath});
}

/// @nodoc
class __$$_ArticleImageCopyWithImpl<$Res>
    extends _$ArticleImageCopyWithImpl<$Res>
    implements _$$_ArticleImageCopyWith<$Res> {
  __$$_ArticleImageCopyWithImpl(
      _$_ArticleImage _value, $Res Function(_$_ArticleImage) _then)
      : super(_value, (v) => _then(v as _$_ArticleImage));

  @override
  _$_ArticleImage get _value => super._value as _$_ArticleImage;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_$_ArticleImage(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ArticleImage extends _ArticleImage {
  const _$_ArticleImage(
      {required this.articleId, required this.fileName, this.filePath})
      : super._();

  @override
  final String articleId;
  @override
  final String fileName;
  @override
  final String? filePath;

  @override
  String toString() {
    return 'ArticleImage(articleId: $articleId, fileName: $fileName, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleImage &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.filePath, filePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(filePath));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleImageCopyWith<_$_ArticleImage> get copyWith =>
      __$$_ArticleImageCopyWithImpl<_$_ArticleImage>(this, _$identity);
}

abstract class _ArticleImage extends ArticleImage {
  const factory _ArticleImage(
      {required final String articleId,
      required final String fileName,
      final String? filePath}) = _$_ArticleImage;
  const _ArticleImage._() : super._();

  @override
  String get articleId;
  @override
  String get fileName;
  @override
  String? get filePath;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleImageCopyWith<_$_ArticleImage> get copyWith =>
      throw _privateConstructorUsedError;
}
