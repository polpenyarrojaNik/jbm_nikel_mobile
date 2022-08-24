// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_substitute_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleSubstituteDTO _$ArticleSubstituteDTOFromJson(Map<String, dynamic> json) {
  return _ArticleSubstituteDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticleSubstituteDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ORDEN')
  double get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleSubstituteDTOCopyWith<ArticleSubstituteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSubstituteDTOCopyWith<$Res> {
  factory $ArticleSubstituteDTOCopyWith(ArticleSubstituteDTO value,
          $Res Function(ArticleSubstituteDTO) then) =
      _$ArticleSubstituteDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') String id,
      @JsonKey(name: 'ORDEN') double order,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticleSubstituteDTOCopyWithImpl<$Res>
    implements $ArticleSubstituteDTOCopyWith<$Res> {
  _$ArticleSubstituteDTOCopyWithImpl(this._value, this._then);

  final ArticleSubstituteDTO _value;
  // ignore: unused_field
  final $Res Function(ArticleSubstituteDTO) _then;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? id = freezed,
    Object? order = freezed,
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
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ArticleSubstituteDTOCopyWith<$Res>
    implements $ArticleSubstituteDTOCopyWith<$Res> {
  factory _$$_ArticleSubstituteDTOCopyWith(_$_ArticleSubstituteDTO value,
          $Res Function(_$_ArticleSubstituteDTO) then) =
      __$$_ArticleSubstituteDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') String id,
      @JsonKey(name: 'ORDEN') double order,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticleSubstituteDTOCopyWithImpl<$Res>
    extends _$ArticleSubstituteDTOCopyWithImpl<$Res>
    implements _$$_ArticleSubstituteDTOCopyWith<$Res> {
  __$$_ArticleSubstituteDTOCopyWithImpl(_$_ArticleSubstituteDTO _value,
      $Res Function(_$_ArticleSubstituteDTO) _then)
      : super(_value, (v) => _then(v as _$_ArticleSubstituteDTO));

  @override
  _$_ArticleSubstituteDTO get _value => super._value as _$_ArticleSubstituteDTO;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? id = freezed,
    Object? order = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticleSubstituteDTO(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
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
class _$_ArticleSubstituteDTO extends _ArticleSubstituteDTO {
  const _$_ArticleSubstituteDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') required this.id,
      @JsonKey(name: 'ORDEN') required this.order,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ArticleSubstituteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleSubstituteDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')
  final String id;
  @override
  @JsonKey(name: 'ORDEN')
  final double order;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ArticleSubstituteDTO(articleId: $articleId, id: $id, order: $order, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleSubstituteDTO &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.order, order) &&
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
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleSubstituteDTOCopyWith<_$_ArticleSubstituteDTO> get copyWith =>
      __$$_ArticleSubstituteDTOCopyWithImpl<_$_ArticleSubstituteDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleSubstituteDTOToJson(
      this,
    );
  }
}

abstract class _ArticleSubstituteDTO extends ArticleSubstituteDTO {
  const factory _ArticleSubstituteDTO(
          {@JsonKey(name: 'ARTICULO_ID') required final String articleId,
          @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') required final String id,
          @JsonKey(name: 'ORDEN') required final double order,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$_ArticleSubstituteDTO;
  const _ArticleSubstituteDTO._() : super._();

  factory _ArticleSubstituteDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticleSubstituteDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')
  String get id;
  @override
  @JsonKey(name: 'ORDEN')
  double get order;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleSubstituteDTOCopyWith<_$_ArticleSubstituteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
