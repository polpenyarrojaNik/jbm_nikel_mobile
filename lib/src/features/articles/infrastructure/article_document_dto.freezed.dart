// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_document_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleDocumentDTO _$ArticleDocumentDTOFromJson(Map<String, dynamic> json) {
  return _ArticleDocumentDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticleDocumentDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PATH_ARCHIVO')
  String? get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDIOMA_ID')
  String get languageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'OBSERVACIONES')
  String? get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleDocumentDTOCopyWith<ArticleDocumentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDocumentDTOCopyWith<$Res> {
  factory $ArticleDocumentDTOCopyWith(
          ArticleDocumentDTO value, $Res Function(ArticleDocumentDTO) then) =
      _$ArticleDocumentDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String? fileName,
      @JsonKey(name: 'PATH_ARCHIVO') String? filePath,
      @JsonKey(name: 'IDIOMA_ID') String languageId,
      @JsonKey(name: 'OBSERVACIONES') String? remarks});
}

/// @nodoc
class _$ArticleDocumentDTOCopyWithImpl<$Res>
    implements $ArticleDocumentDTOCopyWith<$Res> {
  _$ArticleDocumentDTOCopyWithImpl(this._value, this._then);

  final ArticleDocumentDTO _value;
  // ignore: unused_field
  final $Res Function(ArticleDocumentDTO) _then;

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
abstract class _$$_ArticleDocumentDTOCopyWith<$Res>
    implements $ArticleDocumentDTOCopyWith<$Res> {
  factory _$$_ArticleDocumentDTOCopyWith(_$_ArticleDocumentDTO value,
          $Res Function(_$_ArticleDocumentDTO) then) =
      __$$_ArticleDocumentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String? fileName,
      @JsonKey(name: 'PATH_ARCHIVO') String? filePath,
      @JsonKey(name: 'IDIOMA_ID') String languageId,
      @JsonKey(name: 'OBSERVACIONES') String? remarks});
}

/// @nodoc
class __$$_ArticleDocumentDTOCopyWithImpl<$Res>
    extends _$ArticleDocumentDTOCopyWithImpl<$Res>
    implements _$$_ArticleDocumentDTOCopyWith<$Res> {
  __$$_ArticleDocumentDTOCopyWithImpl(
      _$_ArticleDocumentDTO _value, $Res Function(_$_ArticleDocumentDTO) _then)
      : super(_value, (v) => _then(v as _$_ArticleDocumentDTO));

  @override
  _$_ArticleDocumentDTO get _value => super._value as _$_ArticleDocumentDTO;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
    Object? languageId = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_$_ArticleDocumentDTO(
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
@JsonSerializable()
class _$_ArticleDocumentDTO extends _ArticleDocumentDTO {
  const _$_ArticleDocumentDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') this.fileName,
      @JsonKey(name: 'PATH_ARCHIVO') this.filePath,
      @JsonKey(name: 'IDIOMA_ID') required this.languageId,
      @JsonKey(name: 'OBSERVACIONES') this.remarks})
      : super._();

  factory _$_ArticleDocumentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleDocumentDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  final String? fileName;
  @override
  @JsonKey(name: 'PATH_ARCHIVO')
  final String? filePath;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  final String languageId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  final String? remarks;

  @override
  String toString() {
    return 'ArticleDocumentDTO(articleId: $articleId, fileName: $fileName, filePath: $filePath, languageId: $languageId, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleDocumentDTO &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality()
                .equals(other.languageId, languageId) &&
            const DeepCollectionEquality().equals(other.remarks, remarks));
  }

  @JsonKey(ignore: true)
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
  _$$_ArticleDocumentDTOCopyWith<_$_ArticleDocumentDTO> get copyWith =>
      __$$_ArticleDocumentDTOCopyWithImpl<_$_ArticleDocumentDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleDocumentDTOToJson(
      this,
    );
  }
}

abstract class _ArticleDocumentDTO extends ArticleDocumentDTO {
  const factory _ArticleDocumentDTO(
          {@JsonKey(name: 'ARTICULO_ID') required final String articleId,
          @JsonKey(name: 'NOMBRE_ARCHIVO') final String? fileName,
          @JsonKey(name: 'PATH_ARCHIVO') final String? filePath,
          @JsonKey(name: 'IDIOMA_ID') required final String languageId,
          @JsonKey(name: 'OBSERVACIONES') final String? remarks}) =
      _$_ArticleDocumentDTO;
  const _ArticleDocumentDTO._() : super._();

  factory _ArticleDocumentDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticleDocumentDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String? get fileName;
  @override
  @JsonKey(name: 'PATH_ARCHIVO')
  String? get filePath;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  String get languageId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  String? get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleDocumentDTOCopyWith<_$_ArticleDocumentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
