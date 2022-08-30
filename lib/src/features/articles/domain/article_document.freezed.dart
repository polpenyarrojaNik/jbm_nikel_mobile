// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleDocument {
  String get articleId => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  String get languageId => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleDocumentCopyWith<ArticleDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDocumentCopyWith<$Res> {
  factory $ArticleDocumentCopyWith(
          ArticleDocument value, $Res Function(ArticleDocument) then) =
      _$ArticleDocumentCopyWithImpl<$Res>;
  $Res call(
      {String articleId,
      String? fileName,
      String? filePath,
      String languageId,
      String? remarks});
}

/// @nodoc
class _$ArticleDocumentCopyWithImpl<$Res>
    implements $ArticleDocumentCopyWith<$Res> {
  _$ArticleDocumentCopyWithImpl(this._value, this._then);

  final ArticleDocument _value;
  // ignore: unused_field
  final $Res Function(ArticleDocument) _then;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
    Object? languageId = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_value.copyWith(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      languageId: languageId == freezed
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ArticleDocumentCopyWith<$Res>
    implements $ArticleDocumentCopyWith<$Res> {
  factory _$$_ArticleDocumentCopyWith(
          _$_ArticleDocument value, $Res Function(_$_ArticleDocument) then) =
      __$$_ArticleDocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String articleId,
      String? fileName,
      String? filePath,
      String languageId,
      String? remarks});
}

/// @nodoc
class __$$_ArticleDocumentCopyWithImpl<$Res>
    extends _$ArticleDocumentCopyWithImpl<$Res>
    implements _$$_ArticleDocumentCopyWith<$Res> {
  __$$_ArticleDocumentCopyWithImpl(
      _$_ArticleDocument _value, $Res Function(_$_ArticleDocument) _then)
      : super(_value, (v) => _then(v as _$_ArticleDocument));

  @override
  _$_ArticleDocument get _value => super._value as _$_ArticleDocument;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
    Object? languageId = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_$_ArticleDocument(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      languageId: languageId == freezed
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ArticleDocument extends _ArticleDocument {
  const _$_ArticleDocument(
      {required this.articleId,
      this.fileName,
      this.filePath,
      required this.languageId,
      this.remarks})
      : super._();

  @override
  final String articleId;
  @override
  final String? fileName;
  @override
  final String? filePath;
  @override
  final String languageId;
  @override
  final String? remarks;

  @override
  String toString() {
    return 'ArticleDocument(articleId: $articleId, fileName: $fileName, filePath: $filePath, languageId: $languageId, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleDocument &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality()
                .equals(other.languageId, languageId) &&
            const DeepCollectionEquality().equals(other.remarks, remarks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(filePath),
      const DeepCollectionEquality().hash(languageId),
      const DeepCollectionEquality().hash(remarks));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleDocumentCopyWith<_$_ArticleDocument> get copyWith =>
      __$$_ArticleDocumentCopyWithImpl<_$_ArticleDocument>(this, _$identity);
}

abstract class _ArticleDocument extends ArticleDocument {
  const factory _ArticleDocument(
      {required final String articleId,
      final String? fileName,
      final String? filePath,
      required final String languageId,
      final String? remarks}) = _$_ArticleDocument;
  const _ArticleDocument._() : super._();

  @override
  String get articleId;
  @override
  String? get fileName;
  @override
  String? get filePath;
  @override
  String get languageId;
  @override
  String? get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleDocumentCopyWith<_$_ArticleDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
