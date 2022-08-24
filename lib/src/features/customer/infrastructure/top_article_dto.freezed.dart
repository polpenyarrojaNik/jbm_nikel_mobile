// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_article_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopArticleDTO _$TopArticleDTOFromJson(Map<String, dynamic> json) {
  return _TopArticleDTO.fromJson(json);
}

/// @nodoc
mixin _$TopArticleDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopArticleDTOCopyWith<TopArticleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopArticleDTOCopyWith<$Res> {
  factory $TopArticleDTOCopyWith(
          TopArticleDTO value, $Res Function(TopArticleDTO) then) =
      _$TopArticleDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$TopArticleDTOCopyWithImpl<$Res>
    implements $TopArticleDTOCopyWith<$Res> {
  _$TopArticleDTOCopyWithImpl(this._value, this._then);

  final TopArticleDTO _value;
  // ignore: unused_field
  final $Res Function(TopArticleDTO) _then;

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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TopArticleDTOCopyWith<$Res>
    implements $TopArticleDTOCopyWith<$Res> {
  factory _$$_TopArticleDTOCopyWith(
          _$_TopArticleDTO value, $Res Function(_$_TopArticleDTO) then) =
      __$$_TopArticleDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_TopArticleDTOCopyWithImpl<$Res>
    extends _$TopArticleDTOCopyWithImpl<$Res>
    implements _$$_TopArticleDTOCopyWith<$Res> {
  __$$_TopArticleDTOCopyWithImpl(
      _$_TopArticleDTO _value, $Res Function(_$_TopArticleDTO) _then)
      : super(_value, (v) => _then(v as _$_TopArticleDTO));

  @override
  _$_TopArticleDTO get _value => super._value as _$_TopArticleDTO;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_TopArticleDTO(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopArticleDTO extends _TopArticleDTO {
  const _$_TopArticleDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_TopArticleDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TopArticleDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'TopArticleDTO(articleId: $articleId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopArticleDTO &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_TopArticleDTOCopyWith<_$_TopArticleDTO> get copyWith =>
      __$$_TopArticleDTOCopyWithImpl<_$_TopArticleDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopArticleDTOToJson(
      this,
    );
  }
}

abstract class _TopArticleDTO extends TopArticleDTO {
  const factory _TopArticleDTO(
      {@JsonKey(name: 'ARTICULO_ID') required final String articleId,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_TopArticleDTO;
  const _TopArticleDTO._() : super._();

  factory _TopArticleDTO.fromJson(Map<String, dynamic> json) =
      _$_TopArticleDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_TopArticleDTOCopyWith<_$_TopArticleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
