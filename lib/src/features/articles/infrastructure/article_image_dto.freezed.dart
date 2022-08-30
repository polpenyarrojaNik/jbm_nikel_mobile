// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleImageDTO _$ArticleImageDTOFromJson(Map<String, dynamic> json) {
  return _ArticleImageDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticleImageDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PATH_ARCHIVO')
  String? get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleImageDTOCopyWith<ArticleImageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleImageDTOCopyWith<$Res> {
  factory $ArticleImageDTOCopyWith(
          ArticleImageDTO value, $Res Function(ArticleImageDTO) then) =
      _$ArticleImageDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String fileName,
      @JsonKey(name: 'PATH_ARCHIVO') String? filePath});
}

/// @nodoc
class _$ArticleImageDTOCopyWithImpl<$Res>
    implements $ArticleImageDTOCopyWith<$Res> {
  _$ArticleImageDTOCopyWithImpl(this._value, this._then);

  final ArticleImageDTO _value;
  // ignore: unused_field
  final $Res Function(ArticleImageDTO) _then;

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
abstract class _$$_ArticleImageDTOCopyWith<$Res>
    implements $ArticleImageDTOCopyWith<$Res> {
  factory _$$_ArticleImageDTOCopyWith(
          _$_ArticleImageDTO value, $Res Function(_$_ArticleImageDTO) then) =
      __$$_ArticleImageDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String fileName,
      @JsonKey(name: 'PATH_ARCHIVO') String? filePath});
}

/// @nodoc
class __$$_ArticleImageDTOCopyWithImpl<$Res>
    extends _$ArticleImageDTOCopyWithImpl<$Res>
    implements _$$_ArticleImageDTOCopyWith<$Res> {
  __$$_ArticleImageDTOCopyWithImpl(
      _$_ArticleImageDTO _value, $Res Function(_$_ArticleImageDTO) _then)
      : super(_value, (v) => _then(v as _$_ArticleImageDTO));

  @override
  _$_ArticleImageDTO get _value => super._value as _$_ArticleImageDTO;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_$_ArticleImageDTO(
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
@JsonSerializable()
class _$_ArticleImageDTO extends _ArticleImageDTO {
  const _$_ArticleImageDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') required this.fileName,
      @JsonKey(name: 'PATH_ARCHIVO') this.filePath})
      : super._();

  factory _$_ArticleImageDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleImageDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  final String fileName;
  @override
  @JsonKey(name: 'PATH_ARCHIVO')
  final String? filePath;

  @override
  String toString() {
    return 'ArticleImageDTO(articleId: $articleId, fileName: $fileName, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleImageDTO &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.filePath, filePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(filePath));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleImageDTOCopyWith<_$_ArticleImageDTO> get copyWith =>
      __$$_ArticleImageDTOCopyWithImpl<_$_ArticleImageDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleImageDTOToJson(
      this,
    );
  }
}

abstract class _ArticleImageDTO extends ArticleImageDTO {
  const factory _ArticleImageDTO(
          {@JsonKey(name: 'ARTICULO_ID') required final String articleId,
          @JsonKey(name: 'NOMBRE_ARCHIVO') required final String fileName,
          @JsonKey(name: 'PATH_ARCHIVO') final String? filePath}) =
      _$_ArticleImageDTO;
  const _ArticleImageDTO._() : super._();

  factory _ArticleImageDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticleImageDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String get fileName;
  @override
  @JsonKey(name: 'PATH_ARCHIVO')
  String? get filePath;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleImageDTOCopyWith<_$_ArticleImageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
